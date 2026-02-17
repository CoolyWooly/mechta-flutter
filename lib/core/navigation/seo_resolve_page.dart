import 'package:flutter/material.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/navigation/seo_navigator.dart';
import 'package:go_router/go_router.dart';

/// Intermediate page that resolves a SEO path and navigates to SubcatalogPage.
/// Used for deep links with /section/ URLs.
class SeoResolvePage extends StatefulWidget {
  final String path;

  const SeoResolvePage({super.key, required this.path});

  @override
  State<SeoResolvePage> createState() => _SeoResolvePageState();
}

class _SeoResolvePageState extends State<SeoResolvePage> {
  @override
  void initState() {
    super.initState();
    _resolve();
  }

  Future<void> _resolve() async {
    final navigator = sl<SeoNavigator>();
    final route = await navigator.resolveToRoute(widget.path);
    if (!mounted) return;
    if (route != null) {
      context.go(route);
    } else {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
