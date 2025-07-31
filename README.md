# Study Room Manager

A comprehensive Android mobile application for efficient study room management and scheduling.

## Features

### 🏠 Room Booking
- View available study rooms in real-time
- Book rooms with one-tap functionality
- See room capacity and amenities
- Track booking status and history

### 📅 Study Schedule Management
- Create and manage study sessions
- View daily, weekly, and monthly schedules
- Color-coded subjects for easy identification
- Edit and delete sessions as needed

### 🔔 Smart Notifications
- Real-time room availability notifications
- Study session reminders
- Booking confirmations and updates
- Customizable notification preferences

### ⚙️ Settings & Preferences
- Notification management
- Auto-booking preferences
- Privacy settings
- Help and support information

## Screenshots

The app features a modern, intuitive interface with:
- Clean card-based design
- Material Design components
- Smooth navigation between screens
- Responsive layout for different screen sizes

## Technical Details

### Architecture
- **Language**: Java
- **Minimum SDK**: API 24 (Android 7.0)
- **Target SDK**: API 34 (Android 14)
- **Architecture**: Traditional Android with Activities and Services

### Key Components

#### Activities
- `MainActivity`: Home screen with navigation cards
- `RoomBookingActivity`: Room booking interface with RecyclerView
- `ScheduleActivity`: Study schedule management
- `SettingsActivity`: App preferences and settings

#### Services
- `StudyRoomNotificationService`: Background notification monitoring
- `StudyRoomAlarmReceiver`: Study session reminders

#### Data Models
- `StudyRoom`: Room information and availability
- `StudySession`: Study session details and scheduling

### Dependencies
```gradle
implementation 'androidx.appcompat:appcompat:1.6.1'
implementation 'com.google.android.material:material:1.9.0'
implementation 'androidx.constraintlayout:constraintlayout:2.1.4'
implementation 'androidx.recyclerview:recyclerview:1.3.0'
implementation 'androidx.cardview:cardview:1.0.0'
implementation 'com.google.code.gson:gson:2.10.1'
implementation 'com.squareup.okhttp3:okhttp:4.11.0'
implementation 'org.json:json:20230227'
```

## Installation

1. Clone the repository
2. Open the project in Android Studio
3. Sync Gradle files
4. Build and run the application

## Permissions Required

- `POST_NOTIFICATIONS`: For study reminders and room updates
- `BIND_NOTIFICATION_LISTENER_SERVICE`: For monitoring room-related notifications
- `SCHEDULE_EXACT_ALARM`: For precise study session reminders
- `USE_EXACT_ALARM`: For reliable alarm scheduling
- `VIBRATE`: For notification vibrations
- `INTERNET`: For potential future online features

## Usage

### Getting Started
1. Launch the app
2. Enable notification access when prompted
3. Navigate through the main dashboard

### Booking a Room
1. Tap "Book Study Room" on the main screen
2. Browse available rooms
3. Tap on an available room
4. Confirm your booking

### Managing Schedule
1. Tap "Study Schedule" on the main screen
2. View your current study sessions
3. Tap on a session to edit or delete
4. Add new sessions as needed

### Customizing Settings
1. Tap "Settings" on the main screen
2. Configure notification preferences
3. Set up auto-booking options
4. Access help and privacy information

## Design Principles

### User Experience
- **Simplicity**: Clean, intuitive interface
- **Efficiency**: Quick room booking and schedule management
- **Reliability**: Stable notifications and reminders
- **Accessibility**: Support for different screen sizes and accessibility features

### Visual Design
- **Modern UI**: Material Design components
- **Color Coding**: Different colors for different subjects and statuses
- **Card Layout**: Easy-to-scan information cards
- **Consistent Navigation**: Standard Android navigation patterns

## Future Enhancements

- [ ] Online room booking system
- [ ] Real-time room availability sync
- [ ] Group study session coordination
- [ ] Integration with calendar apps
- [ ] Analytics and usage statistics
- [ ] Multi-language support
- [ ] Dark mode theme
- [ ] Offline mode support

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support and questions:
- Email: support@studyroommanager.com
- GitHub Issues: Report bugs and feature requests
- Documentation: Check the in-app help section

---

**Study Room Manager** - Making study room management efficient and hassle-free! 📚✨ 