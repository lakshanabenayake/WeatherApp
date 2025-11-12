@echo off
echo ================================
echo Weather Dashboard Setup
echo ================================
echo.

echo [1/3] Installing Flutter dependencies...
flutter pub get

echo.
echo [2/3] Checking Flutter installation...
flutter doctor

echo.
echo [3/3] Listing available devices...
flutter devices

echo.
echo ================================
echo Setup Complete!
echo ================================
echo.
echo Next steps:
echo 1. Connect your Android device or start an emulator
echo 2. Run: flutter run
echo.
echo For detailed instructions, see QUICK_START.md
echo.
pause

