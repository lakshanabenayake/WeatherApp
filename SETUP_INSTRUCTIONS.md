# Weather Dashboard - Setup Instructions

## Prerequisites
- Flutter SDK (3.9.2 or higher)
- Android Studio or VS Code with Flutter extensions
- Android device or emulator

## Installation Steps

### 1. Install Dependencies
```bash
flutter pub get
```

### 2. Run the Application
```bash
flutter run
```

## Features Implemented

### ✅ Core Requirements
1. **Student Index Input**: Pre-filled with "194174" but can be changed
2. **Coordinate Calculation**: 
   - Formula: `lat = 5 + (firstTwo / 10.0)`, `lon = 79 + (nextTwo / 10.0)`
   - Displays computed coordinates with 2 decimal places
3. **Weather API Integration**: 
   - Uses Open-Meteo API (no API key required)
   - URL: `https://api.open-meteo.com/v1/forecast?latitude=LAT&longitude=LON&current_weather=true`
4. **Weather Data Display**:
   - Temperature (°C)
   - Wind speed (km/h)
   - Weather code (raw number)
   - Last updated time (device clock)
5. **Request URL Display**: Shows the exact API request URL in small text
6. **Loading Indicator**: Shows spinner while fetching data
7. **Error Handling**: Displays friendly error messages on failure
8. **Offline Cache**: 
   - Uses `shared_preferences` to cache last successful result
   - Shows "(cached)" tag when displaying offline data

## How to Use

1. **Enter Your Index**: The app is pre-filled with "194174" but you can change it
2. **View Coordinates**: Computed latitude and longitude appear automatically
3. **Fetch Weather**: Tap the "Fetch Weather" button to get live weather data
4. **View Results**: Weather information displays with temperature, wind speed, and weather code
5. **Test Offline Mode**: 
   - Turn on Airplane Mode
   - Tap "Fetch Weather" again
   - App shows cached data with "(cached)" indicator

## Index to Coordinates Formula

For student index "194174":
- First two digits: 19
- Next two digits: 41
- Latitude: 5 + (19 / 10.0) = 6.90°
- Longitude: 79 + (41 / 10.0) = 83.10°

## Project Structure
```
lib/
  main.dart          # Main application code with all features
pubspec.yaml         # Dependencies configuration
android/             # Android platform files
```

## Dependencies
- `http: ^1.6.0` - For REST API calls
- `shared_preferences: ^2.2.2` - For local caching

## Deliverables Checklist

✅ **Code Implementation**
- [x] Index input field
- [x] Coordinate computation
- [x] API call to Open-Meteo
- [x] Weather data display
- [x] Request URL display
- [x] Loading indicator
- [x] Error handling
- [x] Offline caching

✅ **Report Requirements** (report_194174.pdf)
- [x] Student index and formula explanation
- [x] Screenshots with request URL visible
- [x] 3-5 sentence reflection

✅ **Video Requirements** (video_194174.mp4)
- [x] Show index input
- [x] Fetch live weather
- [x] Toggle airplane mode
- [x] Show cached data

## Testing Guide

### Online Test
1. Open the app with internet connection
2. Tap "Fetch Weather"
3. Verify temperature, wind speed, and weather code appear
4. Check that request URL is displayed at the bottom

### Offline Test
1. Enable Airplane Mode on your device
2. Tap "Fetch Weather"
3. Verify error message appears
4. Verify cached data is still displayed with "(cached)" tag

## API Information

**Open-Meteo Weather API**
- Base URL: `https://api.open-meteo.com/v1/forecast`
- Parameters:
  - `latitude`: Computed from student index
  - `longitude`: Computed from student index
  - `current_weather=true`: Returns current weather data
- Response includes:
  - Temperature (°C)
  - Wind speed (km/h)
  - Weather code (WMO Weather interpretation code)

## Notes

- No API key required for Open-Meteo
- Data is cached locally after first successful fetch
- Cached data persists across app restarts
- Request URL is displayed for verification purposes

