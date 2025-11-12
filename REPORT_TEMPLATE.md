# Weather Dashboard Report
**Student Index:** 194174  
**Date:** November 12, 2025

---

## 1. Index to Coordinates Formula

### Student Index: 194174

**Calculation:**
- First two digits: `19`
- Next two digits: `41`

**Formula:**
```
latitude = 5 + (firstTwo / 10.0)
         = 5 + (19 / 10.0)
         = 5 + 1.9
         = 6.90°

longitude = 79 + (nextTwo / 10.0)
          = 79 + (41 / 10.0)
          = 79 + 4.1
          = 83.10°
```

**Result:**
- **Latitude:** 6.90°
- **Longitude:** 83.10°

---

## 2. Screenshots

### Screenshot 1: Weather Data with Request URL
[Insert screenshot showing:]
- Student index input field
- Computed coordinates (6.90°, 83.10°)
- Weather data (temperature, wind speed, weather code)
- Last updated time
- **Request URL visible at the bottom**

Example URL:
```
https://api.open-meteo.com/v1/forecast?latitude=6.90&longitude=83.10&current_weather=true
```

### Screenshot 2: Offline/Cached Mode
[Insert screenshot showing:]
- Error message when offline
- Cached data displayed with "(cached)" tag

---

## 3. Reflection

During this project, I learned how to integrate REST APIs into Flutter applications without requiring authentication. The Open-Meteo API provided a straightforward way to fetch real-time weather data. 

Implementing offline caching with `shared_preferences` was particularly insightful—it taught me the importance of graceful degradation in mobile apps. When network requests fail, showing cached data ensures the app remains useful even without connectivity.

I faced challenges with error handling, especially distinguishing between different types of failures (network timeout vs. API errors). Implementing a loading indicator and friendly error messages improved the user experience significantly.

Overall, this project enhanced my understanding of state management in Flutter, asynchronous programming with async/await, and the importance of designing apps that work seamlessly both online and offline.

---

## 4. Technical Implementation

### Key Features Implemented:
✅ Index-based coordinate derivation  
✅ REST API integration (Open-Meteo)  
✅ JSON parsing and data extraction  
✅ Loading indicators  
✅ Error handling with user-friendly messages  
✅ Local caching with `shared_preferences`  
✅ Request URL display for verification  
✅ Clean, readable UI with Material Design  

### Dependencies Used:
- `http: ^1.6.0` - For making REST API calls
- `shared_preferences: ^2.2.2` - For persistent local storage

---

## 5. Testing Summary

| Test Case | Expected Result | Actual Result | Status |
|-----------|----------------|---------------|--------|
| Index input | Shows computed coordinates | ✓ Works | ✅ Pass |
| Fetch Weather (online) | Displays current weather | ✓ Works | ✅ Pass |
| Request URL display | Shows API URL | ✓ Works | ✅ Pass |
| Loading indicator | Shows while fetching | ✓ Works | ✅ Pass |
| Error handling | Shows friendly message | ✓ Works | ✅ Pass |
| Offline mode | Shows cached data + tag | ✓ Works | ✅ Pass |

---

## 6. Conclusion

The Weather Dashboard successfully meets all functional requirements. The app provides a clean interface for viewing weather data derived from a student index, handles errors gracefully, and works offline using cached data. The implementation demonstrates proficiency in Flutter development, REST API integration, and mobile app best practices.

---

**Total Pages:** 2  
**Submitted by:** [Your Name]  
**Student Index:** 194174

