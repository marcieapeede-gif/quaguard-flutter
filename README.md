# AquaGuard - Smart Fish Farming System

## 📱 Overview

AquaGuard is a comprehensive Flutter mobile application designed for real-time monitoring and management of aquaculture farms. The app provides farmers with instant access to water quality metrics, fish population data, and automated alerts for optimal farming practices.

## 🚀 Features

### ✅ Current Features
- **Splash Screen** - Branded app introduction
- **User Authentication** - Secure login system
- **Real-time Dashboard** - Live sensor data display
  - Temperature monitoring (with charts)
  - pH level tracking (with charts)
  - Oxygen level measurement (with bar charts)
  - Fish count management
- **Pond Management** - Detailed pond information and metrics
- **Reports & Analytics** - Growth tracking with live charts
  - Temperature trend visualization
  - pH level trend visualization
  - Oxygen level trend visualization
  - Weekly performance summary
- **Dark Mode Support** - Complete dark/light theme toggle
- **Settings & Configuration** - User preferences and account management
- **Bottom Navigation** - Easy navigation between screens
- **State Management** - Provider-based state management

### 🔔 Advanced Features (Ready to Implement)
- Firebase real-time database integration
- Firebase Cloud Messaging notifications
- SMS/Email notifications
- ESP32 sensor connectivity
- AI-powered predictions
- Multi-language support

## 📊 Charts & Visualization

The app includes advanced charts using **fl_chart**:
- **Line Charts** - Temperature and pH trends
- **Bar Charts** - Oxygen level distribution
- **Real-time Updates** - Live data visualization
- **Historical Data** - Week/Month/Year analytics

## 🎨 Dark Mode

- Automatic theme switching
- Persistent user preference (SharedPreferences)
- Material Design 3 themes
- Smooth transitions between themes

## 📁 Project Structure

```
aquaguard-flutter/
├── lib/
│   ├── main.dart                      # App entry point with theme support
│   ├── screens/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   ├── dashboard.dart
│   │   ├── home_screen.dart
│   │   ├── pond_screen.dart
│   │   ├── reports_screen.dart        # Updated with charts
│   │   └── settings_screen.dart       # Updated with dark mode
│   ├── widgets/
│   │   ├── sensor_card.dart
│   │   ├── temperature_chart.dart     # NEW: Line chart for temperature
│   │   ├── ph_level_chart.dart        # NEW: Line chart for pH
│   │   └── oxygen_chart.dart          # NEW: Bar chart for oxygen
│   ├── models/
│   │   ├── sensor_data.dart
│   │   └── pond.dart
│   ├── providers/
│   │   ├── app_provider.dart
│   │   ├── theme_provider.dart        # NEW: Dark mode management
│   │   └── sensor_provider.dart       # NEW: Sensor data management
│   └── services/
│       ├── api_service.dart
│       ├── firebase_service.dart      # NEW: Firebase integration
│       └── notification_service.dart  # NEW: Push notifications
├── assets/
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```

## 🔧 Dependencies

### State Management
- **provider** ^6.0.0 - State management solution

### Backend & Database
- **firebase_core** ^2.24.0 - Firebase initialization
- **firebase_database** ^10.2.0 - Real-time database
- **firebase_auth** ^4.15.0 - Authentication
- **firebase_storage** ^11.5.0 - File storage

### UI & Charts
- **fl_chart** ^0.63.0 - Beautiful charts and graphs
- **intl** ^0.19.0 - Internationalization

### Networking
- **http** ^1.1.0 - HTTP client
- **dio** ^5.3.0 - Advanced HTTP client

### Local Storage
- **shared_preferences** ^2.2.0 - Key-value storage
- **hive** ^2.2.3 - NoSQL database

### Utilities
- **uuid** ^4.0.0 - UUID generation
- **get** ^4.6.5 - GetX framework

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart 3.0.0 or higher
- Android Studio or VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/marcieapeede-gif/quaguard-flutter.git
   cd quaguard-flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run code generation (for Hive)**
   ```bash
   flutter pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 🔐 Firebase Setup (Next Steps)

1. **Create Firebase Project**
   - Go to [Firebase Console](https://console.firebase.google.com)
   - Create a new project: "AquaGuard"

2. **Add Android App**
   - Register app with package: `com.aquaguard.app`
   - Download `google-services.json`
   - Place in `android/app/`

3. **Add iOS App**
   - Register iOS app
   - Download `GoogleService-Info.plist`
   - Add to Xcode project

4. **Enable Services**
   - Realtime Database
   - Cloud Messaging
   - Authentication

## 🔔 Notification Setup

1. Enable Firebase Cloud Messaging
2. Update `notification_service.dart` with FCM implementation
3. Add flutter_local_notifications package

## 📊 Database Schema (Firebase)

```
Ponds/
├── {pondId}
│   ├── name: string
│   ├── fishType: string
│   ├── fishCount: number
│   └── sensorData/
│       └── {sensorId}: SensorData
└── Users/
    └── {userId}
        ├── email: string
        ├── name: string
        └── preferences: {}
```

## 🎨 Theme System

### Light Theme
- Primary Color: Teal
- Background: Light gray
- Text: Dark

### Dark Theme
- Primary Color: Dark Teal
- Background: #121212
- Text: Light

### Switching Themes
- Toggle in Settings > Dark Mode
- Preference saved automatically

## 🧪 Testing

```bash
# Run tests
flutter test

# Generate coverage report
flutter test --coverage
```

## 🔒 Security Considerations

- Keep Firebase credentials in `.env` file (never commit)
- Use environment variables for API endpoints
- Implement proper authentication and authorization
- Validate all user inputs
- Use HTTPS for all API communications
- Secure sensor data with encryption

## 📈 Performance Optimization

- Lazy loading of charts
- Efficient sensor data streaming
- Optimized build methods
- Image caching
- Database query optimization

## 🤝 Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📧 Contact

For questions or support, please contact: [your-email@example.com]

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- fl_chart for beautiful visualizations
- Community contributors and testers

---

**Happy Farming! 🐟💧**

*Last Updated: May 28, 2026*
