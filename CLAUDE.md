# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Flutter mobile application for **Mechta** (`kz.mechta.mechta_flutter`).

- **Dart SDK:** ^3.11.0
- **Flutter:** stable channel
- **Android:** Kotlin DSL, Java 17, Kotlin 2.2.20, Gradle 8.11.1
- **iOS:** Swift, minimum iOS 13, SceneDelegate-based lifecycle

## Common Commands

```bash
flutter pub get                                          # Install dependencies
flutter analyze                                          # Lint/static analysis
flutter test                                             # Run all tests
flutter test test/widget_test.dart                       # Run a single test file
flutter run                                              # Run debug build
dart run build_runner build --delete-conflicting-outputs  # Generate freezed/json code
dart run build_runner watch --delete-conflicting-outputs  # Watch mode for codegen
```

## Architecture

**Clean Architecture** with **BLoC** state management, feature-based module structure.

### Layers (per feature)
```
features/{name}/
├── domain/          # Entities (Equatable), abstract repositories, use cases
├── data/            # Freezed models (with toEntity()), data sources, repository impls
└── presentation/    # BLoC (event/state/bloc), pages, widgets
```

### Key directories
- `lib/app/` — App shell (`MaterialApp.router`), DI container (`GetIt`)
- `lib/core/` — Router, theme, network (Dio), error types, base UseCase, shared widgets
- `lib/features/` — splash, onboarding, main (bottom nav shell), home, catalog, cart, favorites, profile, product

### Navigation
- **go_router** with `StatefulShellRoute.indexedStack` for 5-tab bottom navigation
- Each tab has its own `GlobalKey<NavigatorState>` for independent nested navigation
- Product page (`product/:id`) is nested under every tab branch — stays within the tab's navigator
- Splash & Onboarding are root-level routes (no bottom bar)
- Use `context.go('/tab/product/$id')` for in-tab navigation; `navigationShell.goBranch()` for tab switching

### Key patterns
- **BLoC registration:** Always `sl.registerFactory()` — never singleton. Each page gets its own BLoC instance
- **BLoC in pages:** `BlocProvider(create: (_) => sl<Bloc>()..add(LoadEvent()))` wraps page; separate `_View` widget consumes it
- **State:** Enum-based status (`initial/loading/success/failure`) + `copyWith` + Dart 3 `switch` expression
- **Models:** `@freezed` with `fromJson` + `toEntity()` bridge to domain layer
- **Entities:** Plain classes extending `Equatable`
- **Imports:** Package imports (`package:mechta_flutter/...`), not relative

### Packages
- **State:** flutter_bloc, equatable
- **Navigation:** go_router
- **DI:** get_it
- **Network:** dio
- **Codegen:** freezed, json_serializable, build_runner
- **Storage:** shared_preferences

## Platform IDs

- **Android:** namespace & applicationId = `kz.mechta.mechta_flutter`
- **iOS:** bundleId = `kz.mechta.mechtaFlutter`, display name = "Mechta Flutter"
