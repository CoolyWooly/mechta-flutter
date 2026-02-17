import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/fetch_profile.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/get_profile.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/logout.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase _getProfile;
  final FetchProfileUseCase _fetchProfile;
  final LogoutUseCase _logout;

  ProfileBloc({
    required GetProfileUseCase getProfile,
    required FetchProfileUseCase fetchProfile,
    required LogoutUseCase logout,
  })  : _getProfile = getProfile,
        _fetchProfile = fetchProfile,
        _logout = logout,
        super(const ProfileState()) {
    on<ProfileLoadRequested>(_onLoadRequested);
    on<ProfileFetchRequested>(_onFetchRequested);
    on<ProfileLogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onLoadRequested(
    ProfileLoadRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final profile = await _getProfile(NoParams());
      emit(state.copyWith(
        status: ProfileStatus.success,
        profile: profile,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProfileStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onFetchRequested(
    ProfileFetchRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final profile = await _fetchProfile();
      emit(state.copyWith(
        status: ProfileStatus.success,
        profile: profile,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProfileStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLogoutRequested(
    ProfileLogoutRequested event,
    Emitter<ProfileState> emit,
  ) async {
    await _logout();
    emit(const ProfileState(
      status: ProfileStatus.success,
      profile: ProfileEntity(),
    ));
  }
}
