import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/auth/presentation/widgets/auth_bottom_sheet.dart';
import 'package:mechta_flutter/features/profile/presentation/bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>()..add(const ProfileLoadRequested()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профиль')),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return switch (state.status) {
            ProfileStatus.initial || ProfileStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            ProfileStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? 'Ошибка загрузки'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<ProfileBloc>()
                          .add(const ProfileLoadRequested()),
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              ),
            ProfileStatus.success => state.profile?.isAuthenticated == true
                ? ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Text(
                          state.profile?.name?.substring(0, 1).toUpperCase() ?? 'U',
                          style: const TextStyle(fontSize: 32),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.profile?.name ?? '',
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                      if (state.profile?.email != null)
                        Text(
                          state.profile!.email!,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      if (state.profile?.phone != null)
                        Text(
                          state.profile!.phone!,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                    ],
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.person_outline,
                            size: 64, color: Colors.grey),
                        const SizedBox(height: 16),
                        Text(
                          'Войдите в аккаунт',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (_) => AuthBottomSheet(
                                onSuccess: () {
                                  context
                                      .read<ProfileBloc>()
                                      .add(const ProfileLoadRequested());
                                },
                              ),
                            );
                          },
                          child: const Text('Войти'),
                        ),
                      ],
                    ),
                  ),
          };
        },
      ),
    );
  }
}
