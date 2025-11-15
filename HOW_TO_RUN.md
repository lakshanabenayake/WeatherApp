# How to Run the Weather Dashboard App

## Prerequisites
- Flutter SDK installed
- Android Studio or VS Code with Flutter extensions
- Android emulator or physical device

## Running the App

### Option 1: Using Command Line
```cmd
cd C:\Users\LAKSHAN\StudioProjects\weather_app
flutter pub get
flutter run
```

### Option 2: Using IDE
1. Open the project in Android Studio or VS Code
2. Wait for dependencies to download
3. Select your device/emulator
4. Press F5 or click "Run"

## Testing the App

### Test 1: Normal Flow
1. The app opens with "194174" pre-filled
2. Coordinates are automatically calculated and displayed (Lat: 19.40°, Lon: 81.70°)
3. Click "Fetch Weather" button
4. Watch the loading indicator
5. Weather data appears with temperature, wind speed, weather code, and timestamp
6. Request URL is displayed at the bottom

### Test 2: Error Handling (Offline Mode)
1. Turn on Airplane Mode on your device
2. Click "Fetch Weather"
3. Error message appears in a red card
4. If there's cached data, it will be displayed with a "Cached" badge

### Test 3: Different Index
1. Clear the input field
2. Enter a different index (e.g., "224002")
3. New coordinates appear (Lat: 22.40°, Lon: 80.20°)
4. Click "Fetch Weather"
5. Weather data updates for new location

### Test 4: Invalid Input
1. Enter an index with less than 4 characters
2. Click "Fetch Weather"
3. Error message appears: "Index must be at least 4 characters"

## UI Features to Showcase

### Beautiful Gradients
- Notice the blue gradient in the AppBar
- Background gradient from blue to white
- Card gradients (green for coordinates, blue for weather)

### Interactive Button
- Normal state: Blue gradient
- Loading state: Gray gradient with spinner
- Text changes during loading

### Status Indicators
- "Cached" badge appears when showing offline data (orange)
- Error messages in red card with icon
- Clear visual feedback for all states

### Clean Data Display
- Icons for each weather metric
- Rounded, white containers for each data row
- Easy-to-read typography
- Selectable URL text

## Customization

### Change Student Index
Edit line 38 in `main.dart`:
```dart
final _indexController = TextEditingController(text: 'YOUR_INDEX_HERE');
```

### Change Colors
The app uses Flutter's Material 3 color scheme. To change the primary color, edit line 18-19:
```dart
colorScheme: ColorScheme.fromSeed(
  seedColor: Colors.purple, // Change this to any color
  brightness: Brightness.light,
),
```

## Troubleshooting

### Issue: App not building
**Solution**: Run `flutter clean` then `flutter pub get`

### Issue: Weather not loading
**Solution**: Check internet connection and ensure the Open-Meteo API is accessible

### Issue: Cached data not saving
**Solution**: Check that shared_preferences plugin is properly installed

### Issue: UI looks different
**Solution**: Ensure you're using Flutter 3.x with Material 3 enabled

## Dependencies Used
- `http`: ^1.2.0 - For API calls
- `shared_preferences`: ^2.2.2 - For local caching
- Flutter Material Design (built-in)

## App Structure
```
lib/
└── main.dart (complete app in single file)
    ├── MyApp (root widget)
    ├── WeatherDashboard (stateful widget)
    └── _WeatherDashboardState (all logic and UI)
        ├── _buildIndexCard()
        ├── _buildCoordinatesCard()
        ├── _buildFetchButton()
        ├── _buildErrorCard()
        ├── _buildWeatherCard()
        ├── _buildUrlCard()
        └── _buildWeatherRow()
```

## API Information
- **Provider**: Open-Meteo
- **Endpoint**: https://api.open-meteo.com/v1/forecast
- **Parameters**: latitude, longitude, current_weather=true
- **No API key required**

Enjoy your beautiful weather app! ☁️🌤️⛅

