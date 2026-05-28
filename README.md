# AquaGuard - Smart Fish Farming System

## 📱 Overview

AquaGuard is a comprehensive Flutter mobile application designed for real-time monitoring and management of aquaculture farms. The app provides farmers with instant access to water quality metrics, fish population data, and automated alerts for optimal farming practices.

## 🚀 Features

### ✅ Current Features
- **Splash Screen** - Branded app introduction
- **User Authentication** - Secure login system
- **Real-time Dashboard** - Live sensor data display
  - Temperature monitoring
  - pH level tracking
  - Oxygen level measurement
  - Fish count management
- **Pond Management** - Detailed pond information and metrics
- **Reports & Analytics** - Growth tracking and analysis
- **Settings & Configuration** - User preferences and account management
- **Bottom Navigation** - Easy navigation between screens

### 🔜 Coming Soon
- Firebase real-time database integration
- Live charts and graphs (fl_chart)
- SMS/Email notifications
- ESP32 sensor connectivity
- AI-powered predictions
- Dark mode support
- Multi-language support

## 📁 Project Structure

```
aquaguard-flutter/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── screens/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   ├── dashboard.dart
│   │   ├── home_screen.dart
│   │   ├── pond_screen.dart
│   │   ├── reports_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets/
│   │   └── sensor_card.dart
│   ├── models/
│   │   ├── sensor_data.dart
│   │   └── pond.dart
│   ├── providers/
│   │   └── app_provider.dart
│   └── services/
│       └── api_service.dart
├── assets/
│   ├── images/
│   ├── icons/
│   └── fonts/
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
- **fl_chart** ^0.63.0 - Beautiful charts
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

## 🔐 Security Considerations

- Keep Firebase credentials in `.env` file (never commit)
- Use environment variables for API endpoints
- Implement proper authentication and authorization
- Validate all user inputs
- Use HTTPS for all API communications

## 📚 File Descriptions

### Screens
- `splash_screen.dart` - Loading screen with app branding
- `login_screen.dart` - User authentication interface
- `dashboard.dart` - Main navigation hub
- `home_screen.dart` - Real-time sensor data display
- `pond_screen.dart` - Detailed pond management
- `reports_screen.dart` - Analytics and reports
- `settings_screen.dart` - User preferences

### Models
- `sensor_data.dart` - Sensor reading data model
- `pond.dart` - Pond information model

### Services
- `api_service.dart` - HTTP API communication layer

### Providers
- `app_provider.dart` - Global app state management

## 🎨 UI/UX Features

- Modern Material Design 3
- Responsive layout for all screen sizes
- Intuitive bottom navigation
- Color-coded sensor indicators
- Accessible components
- Smooth transitions and animations

## 🔗 API Integration

The app uses a REST API for backend communication. Update the `_baseUrl` in `lib/services/api_service.dart` with your actual API endpoint.

## 📊 Database Schema (Firebase)

```
Ponds/
├── {pondId}
│   ├── name: string
│   ├── fishType: string
│   ├── fishCount: number
│   └── sensorData
│       └── {sensorId}: SensorData
```

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
- Community contributors and testers

---

**Happy Farming! 🐠💧**
