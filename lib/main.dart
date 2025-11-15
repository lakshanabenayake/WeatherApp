import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Dashboard - 224002L',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const WeatherDashboard(),
    );
  }
}

class WeatherDashboard extends StatefulWidget {
  const WeatherDashboard({super.key});

  @override
  State<WeatherDashboard> createState() => _WeatherDashboardState();
}

class _WeatherDashboardState extends State<WeatherDashboard> {
  final _indexController = TextEditingController(text: '194174');

  double? _latitude;
  double? _longitude;
  String? _requestUrl;

  bool _isLoading = false;
  String? _errorMessage;
  bool _isCached = false;

  // Weather data
  double? _temperature;
  double? _windSpeed;
  int? _weatherCode;
  String? _lastUpdated;

  @override
  void initState() {
    super.initState();
    _loadCachedData();
  }

  @override
  void dispose() {
    _indexController.dispose();
    super.dispose();
  }

  /// Load cached weather data from shared preferences
  Future<void> _loadCachedData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cachedData = prefs.getString('weather_data');

      if (cachedData != null) {
        final data = jsonDecode(cachedData);
        setState(() {
          _temperature = data['temperature'];
          _windSpeed = data['windSpeed'];
          _weatherCode = data['weatherCode'];
          _lastUpdated = data['lastUpdated'];
          _latitude = data['latitude'];
          _longitude = data['longitude'];
          _requestUrl = data['requestUrl'];
          _isCached = true;
        });
      }
    } catch (e) {
      debugPrint('Error loading cached data: $e');
    }
  }

  /// Save weather data to shared preferences
  Future<void> _saveCachedData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final data = {
        'temperature': _temperature,
        'windSpeed': _windSpeed,
        'weatherCode': _weatherCode,
        'lastUpdated': _lastUpdated,
        'latitude': _latitude,
        'longitude': _longitude,
        'requestUrl': _requestUrl,
      };
      await prefs.setString('weather_data', jsonEncode(data));
    } catch (e) {
      debugPrint('Error saving cached data: $e');
    }
  }

  /// Derive latitude and longitude from student index
  void _computeCoordinates() {
    final index = _indexController.text.trim();

    if (index.length < 4) {
      setState(() {
        _errorMessage = 'Index must be at least 4 characters';
        _latitude = null;
        _longitude = null;
      });
      return;
    }

    try {
      final firstTwo = int.parse(index.substring(0, 2));
      final nextTwo = int.parse(index.substring(2, 4));

      setState(() {
        _latitude = 5 + (firstTwo / 10.0);
        _longitude = 79 + (nextTwo / 10.0);
        _errorMessage = null;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Invalid index format';
        _latitude = null;
        _longitude = null;
      });
    }
  }

  /// Fetch weather data from Open-Meteo API
  Future<void> _fetchWeather() async {
    _computeCoordinates();

    if (_latitude == null || _longitude == null) {
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _isCached = false;
    });

    // Build the request URL
    final url = 'https://api.open-meteo.com/v1/forecast?'
        'latitude=${_latitude!.toStringAsFixed(2)}&'
        'longitude=${_longitude!.toStringAsFixed(2)}&'
        'current_weather=true';

    setState(() {
      _requestUrl = url;
    });

    try {
      final response = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 10),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final currentWeather = data['current_weather'];

        setState(() {
          _temperature = currentWeather['temperature']?.toDouble();
          _windSpeed = currentWeather['windspeed']?.toDouble();
          _weatherCode = currentWeather['weathercode'];
          _lastUpdated = DateTime.now().toString().substring(0, 19);
          _isLoading = false;
          _errorMessage = null;
          _isCached = false;
        });

        // Save to cache
        await _saveCachedData();
      } else {
        setState(() {
          _errorMessage = 'Failed to fetch weather: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error: $e';
        _isLoading = false;
        // Show cached data if available
        if (_temperature != null) {
          _isCached = true;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Dashboard - 224002L'),
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Student Index Input
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Student Index',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _indexController,
                      decoration: const InputDecoration(
                        hintText: 'e.g., 224002',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Coordinates Display
            if (_latitude != null && _longitude != null)
              Card(
                elevation: 2,
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Computed Coordinates',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.location_on, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Latitude: ${_latitude!.toStringAsFixed(2)}°',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.location_on, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Longitude: ${_longitude!.toStringAsFixed(2)}°',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 16),

            // Fetch Weather Button
            ElevatedButton.icon(
              onPressed: _isLoading ? null : _fetchWeather,
              icon: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.cloud_download),
              label: Text(_isLoading ? 'Fetching...' : 'Fetch Weather'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 16),

            // Error Message
            if (_errorMessage != null)
              Card(
                elevation: 2,
                color: Colors.red.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Icon(Icons.error, color: Colors.red),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Weather Data Display
            if (_temperature != null)
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Current Weather',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (_isCached)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                '(cached)',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const Divider(height: 24),
                      _buildWeatherRow(
                        Icons.thermostat,
                        'Temperature',
                        '${_temperature!.toStringAsFixed(1)}°C',
                      ),
                      const SizedBox(height: 12),
                      _buildWeatherRow(
                        Icons.air,
                        'Wind Speed',
                        '${_windSpeed!.toStringAsFixed(1)} km/h',
                      ),
                      const SizedBox(height: 12),
                      _buildWeatherRow(
                        Icons.wb_sunny,
                        'Weather Code',
                        _weatherCode.toString(),
                      ),
                      const SizedBox(height: 12),
                      _buildWeatherRow(
                        Icons.access_time,
                        'Last Updated',
                        _lastUpdated ?? 'N/A',
                      ),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 16),

            // Request URL Display
            if (_requestUrl != null)
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Request URL',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SelectableText(
                        _requestUrl!,
                        style: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'monospace',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 24, color: Colors.blue),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

