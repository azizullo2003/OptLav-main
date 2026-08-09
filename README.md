# OptLav

A production Flutter marketplace app — currently at **v6.0.17 (build 2200)**.

Built as a full commercial product, not a demo: onboarding and phone registration, catalogue browsing, cart and checkout, order history, favourites, user ads, profile and settings, and an in-app support flow.

## Architecture

The codebase follows **Clean Architecture** with a feature-first presentation layer, so each screen owns its own BLoC, widgets and routing without leaking into the others.

```
lib/
├── app/              # routing (auto_route), theming, shared utils
├── core/             # failures, error logging, constants, shared widgets
├── presentation/     # feature modules, one folder per feature
│   ├── onboarding/   registration/   main/       cart/
│   ├── orders/       favorite/       ads/        profile/
│   └── settings/     support/        about/      splash/
├── injector.dart     # get_it + injectable dependency graph
└── main.dart
```

**Why this structure:** most of my work is inheriting existing Flutter projects and making them maintainable. Feature-first + BLoC means a new developer can open one folder and change one screen without reading the whole app, and `freezed` unions make every failure state explicit instead of a nullable error string.

## Stack

| Area | Choice |
|---|---|
| State management | `flutter_bloc` |
| Dependency injection | `get_it` + `injectable` |
| Networking | `retrofit` + `dio` |
| Navigation | `auto_route` |
| Models & unions | `freezed`, `json_annotation` |
| Error handling | `either_dart` + `freezed` failure unions |
| Media & files | `image_picker`, `cached_network_image`, `flutter_svg` |
| Platform | `permission_handler`, `shared_preferences`, `package_info_plus`, `url_launcher` |
| Monetization | `yandex_mobileads` |

## Notes

Build number 2200 reflects a long release history rather than a one-off build — the app went through continuous iteration, store releases and regression fixes over its lifetime.

---

Built by [Azizullo Gulomov](https://github.com/azizullo2003) — Senior Flutter & iOS engineer.
Apps on the App Store: [CalorieLens](https://apps.apple.com/us/app/calorielens-ai-meal-scanner/id6761782828) · [EzRAR](https://apps.apple.com/us/app/ezrar-rar-zip-archiver/id6781422412) · [DTM Savollari](https://apps.apple.com/us/app/dtm-savollari/id6765687405)
