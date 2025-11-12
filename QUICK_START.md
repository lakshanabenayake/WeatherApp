# Quick Start Guide

## 🚀 Get Started in 3 Steps

### Step 1: Install Dependencies
Open terminal in the project folder and run:
```bash
flutter pub get
```

### Step 2: Connect Your Android Device or Start Emulator
- **Real Device:** Enable USB debugging and connect via USB
- **Emulator:** Launch Android emulator from Android Studio

### Step 3: Run the App
```bash
flutter run
```

That's it! The app should now be running on your device.

---

## 📱 How to Use the App

### 1. View Your Coordinates
- The app opens with index "194174" pre-filled
- Coordinates are automatically calculated and displayed:
  - **Latitude:** 6.90°
  - **Longitude:** 83.10°

### 2. Fetch Live Weather
- Tap the blue **"Fetch Weather"** button
- Wait for the loading indicator
- Weather data appears:
  - Temperature in °C
  - Wind speed in km/h
  - Weather code
  - Last updated time

### 3. View Request URL
- Scroll to the bottom of the screen
- The exact API request URL is displayed in small text
- You can select and copy it

### 4. Test Offline Mode
- Swipe down from the top of your device
- Enable **Airplane Mode**
- Return to the app
- Tap **"Fetch Weather"** again
- Notice:
  - An error message appears in red
  - Cached weather data still shows
  - A small **(cached)** tag appears next to "Current Weather"

---

## 🔧 Troubleshooting

### Problem: "Target of URI doesn't exist" error
**Solution:** Run `flutter pub get` to install dependencies

### Problem: App won't run
**Solution:** 
1. Check Flutter installation: `flutter doctor`
2. Make sure a device is connected: `flutter devices`
3. Try `flutter clean` then `flutter pub get`

### Problem: No weather data appears
**Solution:**
1. Check internet connection
2. Verify coordinates are shown correctly
3. Look for error messages in the app

### Problem: Cached data not showing
**Solution:**
1. Fetch weather successfully at least once while online
2. Then go offline and fetch again
3. Cached data should appear automatically

---

## 📂 Project Structure

```
weather_app/
├── lib/
│   └── main.dart              # Complete app code
├── pubspec.yaml               # Dependencies
├── android/                   # Android platform files
├── SETUP_INSTRUCTIONS.md      # Detailed setup guide
├── REPORT_TEMPLATE.md         # Report template
├── VIDEO_SCRIPT.md            # Video recording script
└── COMPLETE_CHECKLIST.md      # Full requirements checklist
```

---

## 📋 Important Files Created

1. **main.dart** - Complete weather dashboard implementation
2. **SETUP_INSTRUCTIONS.md** - Detailed installation and usage guide
3. **REPORT_TEMPLATE.md** - Template for your 2-page report
4. **VIDEO_SCRIPT.md** - Script and timeline for 60-second video
5. **COMPLETE_CHECKLIST.md** - Comprehensive requirements checklist

---

## 📦 Creating Your Submission

### 1. Create the ZIP File
Before zipping, clean the project:
```bash
flutter clean
```

Then create `project_194174.zip` containing:
- The entire project folder
- Exclude: `.git`, `.idea`, `build/`, `.gradle/`

### 2. Create the Report PDF
1. Use the template in `REPORT_TEMPLATE.md`
2. Add your screenshots (must show Request URL!)
3. Write your 3-5 sentence reflection
4. Save as `report_194174.pdf`

### 3. Record the Video
1. Follow the script in `VIDEO_SCRIPT.md`
2. Keep it under 60 seconds
3. Show online and offline modes
4. Save as `video_194174.mp4`

---

## ✅ Pre-Submission Checklist

Before submitting, verify:
- [ ] App runs without errors
- [ ] All features working (online and offline)
- [ ] ZIP file named correctly: `project_194174.zip`
- [ ] Report PDF named correctly: `report_194174.pdf`
- [ ] Video MP4 named correctly: `video_194174.mp4`
- [ ] Video shows Request URL clearly
- [ ] Video is under 60 seconds
- [ ] Report is maximum 2 pages

---

## 🎯 Key Features to Demonstrate

When testing or recording, make sure to show:
1. ✅ Student index input (pre-filled)
2. ✅ Computed coordinates (2 decimals)
3. ✅ Fetch Weather button
4. ✅ Loading indicator
5. ✅ Temperature, wind speed, weather code
6. ✅ Last updated time
7. ✅ **Request URL** (very important!)
8. ✅ Error handling
9. ✅ Cached data with "(cached)" tag
10. ✅ Works offline

---

## 📞 Need Help?

### Check these files:
- **COMPLETE_CHECKLIST.md** - Full requirements and marking rubric
- **SETUP_INSTRUCTIONS.md** - Detailed technical documentation
- **VIDEO_SCRIPT.md** - Detailed video recording guide

### Common Commands:
```bash
# Install dependencies
flutter pub get

# Clean project
flutter clean

# Check Flutter installation
flutter doctor

# List connected devices
flutter devices

# Run app
flutter run

# Build APK
flutter build apk
```

---

## 🌟 Features Implemented

✅ **Index Input** - Pre-filled with 194174, editable  
✅ **Coordinate Calculation** - Automatic from index  
✅ **Live Weather** - From Open-Meteo API  
✅ **Temperature Display** - In °C with 1 decimal  
✅ **Wind Speed** - In km/h with 1 decimal  
✅ **Weather Code** - Raw WMO code number  
✅ **Last Updated** - Device timestamp  
✅ **Request URL** - Displayed in small text  
✅ **Loading Indicator** - Shows during fetch  
✅ **Error Handling** - Friendly error messages  
✅ **Offline Cache** - Uses shared_preferences  
✅ **Cached Tag** - Shows "(cached)" when offline  

---

## 📸 Screenshot Requirements

For your report, take screenshots showing:

### Screenshot 1: Live Weather Data
Capture:
- Student index field
- Computed coordinates
- Weather data (temp, wind, code, time)
- **Request URL at the bottom** (zoom in if needed)

### Screenshot 2: Offline/Cached Mode
Capture:
- Error message (red card)
- Weather data with **(cached)** tag
- All data still visible even offline

---

## 🎬 Video Recording Tips

1. **Practice First** - Do a dry run 2-3 times
2. **Keep It Short** - Aim for 50-55 seconds, not 60
3. **Show Everything** - Follow the checklist
4. **Clear Audio** - Speak clearly if narrating
5. **Stable Screen** - Avoid shaky recording
6. **Good Lighting** - If recording physical device

**Critical:** The Request URL must be visible in your video!

---

## 🎓 You're All Set!

Your Weather Dashboard app is complete and ready for submission. All the documentation files will help you create your report and video demonstration.

**Good luck! 🚀**

