# Complete Project Checklist

## 📋 Implementation Checklist

### Core Features (Must Have)

#### 1. Student Index Input
- [x] Text input field for student index
- [x] Pre-filled with a default value (194174)
- [x] Validates minimum 4 characters
- [x] Shows error for invalid format

#### 2. Coordinate Computation
- [x] Extracts first two digits from index
- [x] Extracts next two digits from index
- [x] Calculates latitude: `5 + (firstTwo / 10.0)`
- [x] Calculates longitude: `79 + (nextTwo / 10.0)`
- [x] Displays computed coordinates with 2 decimal places
- [x] Shows coordinates in a clearly labeled section

#### 3. Weather API Integration
- [x] Uses Open-Meteo API (no API key required)
- [x] Constructs correct URL with latitude and longitude
- [x] Includes `current_weather=true` parameter
- [x] Makes HTTP GET request
- [x] Handles JSON response parsing

#### 4. Weather Data Display
- [x] Temperature (°C) with 1 decimal place
- [x] Wind speed (km/h) with 1 decimal place
- [x] Weather code (raw number)
- [x] Last updated time (from device clock)
- [x] Clear labels for each data point
- [x] Icons for visual appeal

#### 5. Request URL Display
- [x] Shows exact API request URL
- [x] Displayed in tiny/small text
- [x] Uses monospace font for readability
- [x] Selectable text for copying
- [x] Placed in dedicated card/section

#### 6. Loading & Error Handling
- [x] Loading indicator while fetching
- [x] Button disabled during loading
- [x] Shows "Fetching..." text when loading
- [x] Displays friendly error message on failure
- [x] Error message shows in colored card
- [x] Error icon displayed

#### 7. Offline Caching
- [x] Uses `shared_preferences` package
- [x] Saves successful weather data
- [x] Loads cached data on app start
- [x] Shows "(cached)" tag when displaying cached data
- [x] Persists across app restarts
- [x] Falls back to cached data on network error

---

## 📦 Deliverables Checklist

### 1. Project ZIP File: `project_194174.zip`
- [ ] Full Flutter project included
- [ ] All source files in `lib/` folder
- [ ] `pubspec.yaml` with correct dependencies
- [ ] `android/` platform files
- [ ] `README.md` or setup instructions
- [ ] No unnecessary build files (clean project)
- [ ] File named correctly: `project_<your_index>.zip`

**How to create:**
```bash
# Clean the project first
flutter clean

# Then zip the entire project folder
# Exclude: .git, .idea, build/, .gradle/
```

---

### 2. Report PDF: `report_194174.pdf`
**Maximum 2 pages**

#### Required Content:
- [ ] **Student Index** clearly stated
- [ ] **Formula explanation** with your specific numbers
  - [ ] First two digits calculation
  - [ ] Next two digits calculation
  - [ ] Latitude calculation with formula
  - [ ] Longitude calculation with formula
- [ ] **Screenshots** (minimum 2):
  - [ ] Screenshot showing live weather fetch with REQUEST URL visible
  - [ ] Screenshot showing offline/cached mode
  - [ ] Ensure all important UI elements are visible
- [ ] **Reflection** (3-5 sentences):
  - [ ] What you learned
  - [ ] Challenges faced
  - [ ] How you solved problems
  - [ ] Technical insights gained
- [ ] File named correctly: `report_<your_index>.pdf`

**Report Structure Suggestion:**
1. Title page with index
2. Coordinates calculation section
3. Screenshots with captions
4. Reflection paragraph
5. Technical summary table

---

### 3. Video Demo: `video_194174.mp4`
**Maximum 60 seconds**

#### Must Show:
- [ ] **App opening** with interface visible
- [ ] **Student index** input field (your actual index)
- [ ] **Computed coordinates** (latitude & longitude)
- [ ] **"Fetch Weather" button** being tapped
- [ ] **Live weather data** appearing:
  - [ ] Temperature
  - [ ] Wind speed
  - [ ] Weather code
  - [ ] Last updated time
- [ ] **Request URL** at bottom of screen (CRITICAL!)
- [ ] **Airplane Mode** being enabled (show toggle/icon)
- [ ] **Error message** appearing after offline fetch attempt
- [ ] **Cached data** still visible with "(cached)" tag

#### Video Quality:
- [ ] Duration: 50-60 seconds (under 60s limit)
- [ ] Format: MP4
- [ ] Resolution: 720p minimum, 1080p preferred
- [ ] Audio: Clear narration (optional but helpful)
- [ ] No long pauses or dead time
- [ ] File named correctly: `video_<your_index>.mp4`

**Recording Tips:**
- Use Android built-in screen recorder
- Or use AZ Screen Recorder app
- Or use scrcpy on PC for better quality
- Practice 2-3 times before final recording
- Edit out mistakes if needed

---

## 🎯 Marking Rubric Self-Check

### 1. Correct Index→Coords & Shown in UI (15 points)
- [ ] Formula correctly implemented
- [ ] First two digits extracted properly
- [ ] Next two digits extracted properly
- [ ] Latitude calculation correct
- [ ] Longitude calculation correct
- [ ] Both displayed in UI with 2 decimals
- [ ] Clear labels for lat/lon

**Expected Result:**
- Index: 194174
- Latitude: 6.90°
- Longitude: 83.10°

---

### 2. Working API Call & JSON Parsing (25 points)
- [ ] Correct API endpoint used
- [ ] URL constructed with computed coords
- [ ] HTTP GET request successful
- [ ] JSON response parsed correctly
- [ ] Temperature extracted
- [ ] Wind speed extracted
- [ ] Weather code extracted
- [ ] No parsing errors

**Test:**
- [ ] Tap "Fetch Weather"
- [ ] Verify data appears correctly
- [ ] Check console for no errors

---

### 3. Loading, Error Handling, and Offline Cache (25 points)
- [ ] Loading indicator shows during fetch
- [ ] Button disabled while loading
- [ ] Error message on network failure
- [ ] Error message is user-friendly (not technical)
- [ ] Cached data saved after successful fetch
- [ ] Cached data loaded on app start
- [ ] "(cached)" tag shown for cached data
- [ ] App usable offline with cached data

**Test:**
- [ ] Fresh fetch shows loading
- [ ] Turn off internet → shows error
- [ ] Cached data still visible offline
- [ ] Restart app → cached data loads

---

### 4. Clean UI (15 points)
- [ ] All labels clear and readable
- [ ] Good layout spacing
- [ ] Consistent styling
- [ ] Material Design components used
- [ ] Cards for grouped information
- [ ] Icons enhance understanding
- [ ] Colors used appropriately
- [ ] No text overflow or cut-off
- [ ] Responsive to different screen sizes

**Visual Check:**
- [ ] Student index section clear
- [ ] Coordinates section distinct
- [ ] Weather data well-organized
- [ ] Request URL visible but not intrusive

---

### 5. Report (10 points)
- [ ] Maximum 2 pages
- [ ] Index clearly stated
- [ ] Formula with calculations shown
- [ ] Screenshots included and clear
- [ ] Request URL visible in screenshots
- [ ] Reflection 3-5 sentences
- [ ] Mentions what was learned
- [ ] Mentions challenges/issues faced
- [ ] Professional formatting
- [ ] No spelling/grammar errors

---

### 6. Video Demo (10 points)
- [ ] Duration ≤60 seconds
- [ ] Shows complete workflow
- [ ] Index input visible
- [ ] Coordinates displayed
- [ ] Fetch weather action clear
- [ ] Live weather data shown
- [ ] **Request URL visible** (IMPORTANT!)
- [ ] Airplane mode toggle shown
- [ ] Error message displayed
- [ ] Cached data with tag shown
- [ ] Good video quality
- [ ] Clear audio (if narrated)

---

## 🔍 Testing Guide

### Test Case 1: Fresh Install (Online)
1. [ ] Install app on device
2. [ ] Open app
3. [ ] Verify index is pre-filled
4. [ ] Verify coordinates appear
5. [ ] Tap "Fetch Weather"
6. [ ] Verify loading indicator
7. [ ] Verify weather data appears
8. [ ] Verify request URL shown
9. [ ] Verify no errors in console

### Test Case 2: Offline Mode
1. [ ] With app running after successful fetch
2. [ ] Enable Airplane Mode
3. [ ] Tap "Fetch Weather"
4. [ ] Verify error message appears
5. [ ] Verify cached data still visible
6. [ ] Verify "(cached)" tag present

### Test Case 3: Cache Persistence
1. [ ] Fetch weather successfully
2. [ ] Close app completely
3. [ ] Reopen app
4. [ ] Verify cached data loads immediately
5. [ ] Verify "(cached)" tag present

### Test Case 4: Different Indices
1. [ ] Change index to "204285"
2. [ ] Verify coords update to: 7.00°, 82.80°
3. [ ] Fetch weather for new location
4. [ ] Verify data updates

### Test Case 5: Error Cases
1. [ ] Try index with < 4 characters
2. [ ] Verify error message
3. [ ] Try invalid characters
4. [ ] Verify error handling

---

## 📝 Pre-Submission Checklist

### Code Quality
- [ ] No console errors
- [ ] No warnings in Flutter Doctor
- [ ] App runs smoothly
- [ ] No crashes or freezes
- [ ] All features working as expected

### Documentation
- [ ] README file included
- [ ] Setup instructions clear
- [ ] Dependencies listed
- [ ] Comments in complex code sections

### File Naming
- [ ] project_194174.zip (replace with your index)
- [ ] report_194174.pdf (replace with your index)
- [ ] video_194174.mp4 (replace with your index)

### File Sizes
- [ ] ZIP file reasonable size (< 50 MB after cleaning)
- [ ] PDF file readable (< 5 MB)
- [ ] Video file reasonable (< 20 MB if possible)

---

## 🚀 Final Steps Before Submission

1. [ ] Run `flutter clean` to remove build files
2. [ ] Test app one final time on real device
3. [ ] Record video demonstration
4. [ ] Take screenshots for report
5. [ ] Write report with formula and reflection
6. [ ] Convert report to PDF
7. [ ] Create project ZIP file
8. [ ] Verify all 3 files are named correctly
9. [ ] Double-check all requirements met
10. [ ] Submit before deadline

---

## ⚠️ Common Mistakes to Avoid

- ❌ Forgetting to show Request URL in video
- ❌ Video exceeding 60 seconds
- ❌ Report exceeding 2 pages
- ❌ Not testing offline mode
- ❌ Including build files in ZIP
- ❌ Wrong file naming format
- ❌ Missing reflection in report
- ❌ No screenshots in report
- ❌ Coordinates not showing 2 decimals
- ❌ Not pre-filling the index field
- ❌ Forgetting to handle errors gracefully
- ❌ No "(cached)" tag for offline data

---

## 📞 Help Resources

### If API doesn't work:
- Check internet connection
- Verify URL is correct
- Check console for error messages
- Confirm coordinates are valid (lat: 5-16, lon: 79-90)

### If caching doesn't work:
- Verify `shared_preferences` installed
- Run `flutter pub get`
- Check for async/await syntax
- Ensure data is saved after successful fetch

### If video is too long:
- Speed up narration
- Cut out pauses
- Use video editor to trim
- Skip introduction, go straight to demo

---

## ✅ Quick Reference

**Your Index:** 194174  
**Your Latitude:** 6.90°  
**Your Longitude:** 83.10°  
**Your Request URL:**  
```
https://api.open-meteo.com/v1/forecast?latitude=6.90&longitude=83.10&current_weather=true
```

---

**Good luck with your submission! 🎓**

