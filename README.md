# PhysioGhar Therapist App

A Flutter prototype for a therapist management application with scheduling, bookings, patient records, profile management, and complaint reporting.

## How to Run

```bash
git clone "https://github.com/00sid/physioghar_demo.git"
cd physio_ghar_demo
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Flutter / Dart Version

- Flutter: 3.x
- Dart: 3.x

Check the installed version with:

```bash
flutter --version
```

## Packages Used

- `flutter_riverpod: ^3.4.3` — State management
- `flutter_screenutil: ^5.9.3` — Responsive UI
- `google_fonts: ^8.2.1` — Custom fonts
- `freezed_annotation: ^3.1.0` — Immutable model annotations
- `json_annotation: ^4.12.0` — JSON serialization annotations
- `intl: ^0.20.3` — Date and time formatting

## State Management

The project uses **Riverpod** for state management and dependency handling.

Feature-specific providers are kept inside their respective feature folders, while shared/global providers are placed under `shared/provider`.

## Project Structure

The project follows a **feature-based structure**:

```text
lib/
├── features/
│   ├── dashboard/
│   │   ├── views/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── provider/
│   │
│   ├── schedule/
│   │   ├── views/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── provider/
│   │
│   ├── patient/
│   │   ├── views/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── provider/
│   │
│   ├── account/
│   │   ├── views/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── provider/
│   │
│   └── shared/
│       ├── utils/
│       ├── theme/
│       ├── provider/
│       └── model/
│
└── main.dart
```

### Feature Grouping

- **Dashboard** — Therapist dashboard and availability overview.
- **Schedule** — Combines **Schedule & Availability** and **Booking Requests & Session Management**.
- **Patient** — Patient records and notes.
- **Account** — Combines **Account & Edit Profile** and **Complaints / Report an Issue**.
- **Shared** — Common utilities, themes, providers, and models.

## Assumptions

- The project uses mock/local data for demonstration.
- No production backend or authentication is implemented.
- Booking, schedule, notes, and profile changes are handled through application state.
- The primary UI target is approximately **390 × 844** mobile screen size.
- English/Nepali language selection is demonstrated at the UI level.
