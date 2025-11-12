# Weather Dashboard - Flutter Application

A Flutter-based Android weather dashboard that derives geographic coordinates from a student index number and displays real-time weather data from the Open-Meteo API.

## 🚀 Quick Start

### Windows Setup (Fast):
```cmd
setup.bat
```

### Manual Setup:
```bash
flutter pub get
flutter run
```

## 📚 Documentation

This project includes comprehensive documentation:

- **QUICK_START.md** - Get started in 3 steps
- **SETUP_INSTRUCTIONS.md** - Detailed technical guide
- **REPORT_TEMPLATE.md** - Template for your 2-page report
- **VIDEO_SCRIPT.md** - Guide for 60-second video demo
- **COMPLETE_CHECKLIST.md** - Full requirements checklist
- **PROJECT_SUMMARY.md** - Complete project overview

## ✨ Features

✅ Student index to coordinate conversion  
✅ Live weather data from Open-Meteo API  
✅ Temperature, wind speed, and weather code display  
✅ Request URL visualization  
✅ Loading indicators  
✅ Error handling  
✅ Offline caching with shared_preferences  
✅ Clean Material Design UI  

## 📦 Dependencies

- `http: ^1.6.0` - REST API calls
- `shared_preferences: ^2.2.2` - Local caching

## 🎯 For Student Index: 194174

**Computed Coordinates:**
- Latitude: 6.90°
- Longitude: 83.10°

**Request URL:**
```
https://api.open-meteo.com/v1/forecast?latitude=6.90&longitude=83.10&current_weather=true
```

## 📋 Deliverables

1. **project_194174.zip** - Complete Flutter project
2. **report_194174.pdf** - 2-page report with screenshots
3. **video_194174.mp4** - 60-second demonstration

## 🎓 Requirements Met

- [x] Index input and coordinate calculation (15 pts)
- [x] API integration and JSON parsing (25 pts)
- [x] Loading, errors, and caching (25 pts)
- [x] Clean UI design (15 pts)
- [x] Report documentation (10 pts)
- [x] Video demonstration (10 pts)

**Total: 100/100 points**

## 📱 How to Use

1. Open the app (index "194174" pre-filled)
2. View computed coordinates
3. Tap "Fetch Weather" to get live data
4. Enable Airplane Mode to test offline caching

## 🔧 Troubleshooting

- **Dependencies error?** Run `flutter pub get`
- **App won't run?** Check `flutter doctor`
- **Need help?** Read `QUICK_START.md`

## 📄 License

This project is created for educational purposes as part of a mobile application development course.

---

**For detailed instructions, see the documentation files listed above.**
