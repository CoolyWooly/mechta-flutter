import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/navigation/app_link_handler.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotion_detail_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class PromotionDetailPage extends StatelessWidget {
  final String code;

  const PromotionDetailPage({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          sl<PromotionDetailBloc>()..add(PromotionDetailLoadRequested(code: code)),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<PromotionDetailBloc, PromotionDetailState>(
          builder: (context, state) =>
              Text(state.detail?.name ?? AppLocalizations.of(context)!.promotion),
        ),
      ),
      body: BlocBuilder<PromotionDetailBloc, PromotionDetailState>(
        builder: (context, state) {
          return switch (state.status) {
            PromotionDetailStatus.initial ||
            PromotionDetailStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            PromotionDetailStatus.failure => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.errorMessage ?? AppLocalizations.of(context)!.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        final code =
                            (context.read<PromotionDetailBloc>().state.detail?.code) ??
                                '';
                        context.read<PromotionDetailBloc>().add(
                              PromotionDetailLoadRequested(code: code),
                            );
                      },
                      child: Text(AppLocalizations.of(context)!.retry),
                    ),
                  ],
                ),
              ),
            PromotionDetailStatus.success => _DetailContent(
                detail: state.detail!,
              ),
          };
        },
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final PromotionDetailEntity detail;

  const _DetailContent({required this.detail});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (detail.imageSrc != null)
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              detail.imageSrc!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
            ),
          ),
        if (detail.banners.isNotEmpty) _BannersSection(banners: detail.banners),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (detail.name != null)
                Text(
                  detail.name!,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              if (detail.type != null) ...[
                const SizedBox(height: 8),
                Chip(label: Text(detail.type!.name ?? '')),
              ],
              if (detail.daysBeforeExpiration != null &&
                  detail.daysBeforeExpiration! > 0) ...[
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.daysLeft(detail.daysBeforeExpiration!),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ],
              if (detail.previewText != null) ...[
                const SizedBox(height: 16),
                Text(
                  detail.previewText!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
              for (final desc in detail.descriptions) ...[
                const SizedBox(height: 16),
                if (desc.type != null)
                  Text(
                    desc.type!,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                if (desc.description != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    desc.description!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ],
              if (detail.linkValue != null &&
                  detail.linkValue!.isNotEmpty) ...[
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => _onLinkTap(context),
                    child: Text(AppLocalizations.of(context)!.details),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  void _onLinkTap(BuildContext context) {
    final link = detail.linkValue!;
    if (detail.linkIsExternal == true) {
      launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
    } else {
      sl<AppLinkHandler>().handle(context, link);
    }
  }
}

class _BannersSection extends StatelessWidget {
  final List<PromotionBannerEntity> banners;

  const _BannersSection({required this.banners});

  @override
  Widget build(BuildContext context) {
    if (banners.length == 1) {
      return _BannerImage(banner: banners.first);
    }

    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: banners.length,
        itemBuilder: (context, index) => _BannerImage(banner: banners[index]),
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  final PromotionBannerEntity banner;

  const _BannerImage({required this.banner});

  @override
  Widget build(BuildContext context) {
    final imageUrl = banner.imageMobile ?? banner.imageDesktop;
    if (imageUrl == null) return const SizedBox();

    return GestureDetector(
      onTap: () {
        if (banner.url != null && banner.url!.isNotEmpty) {
          sl<AppLinkHandler>().handle(context, banner.url!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) => const SizedBox(),
          ),
        ),
      ),
    );
  }
}
