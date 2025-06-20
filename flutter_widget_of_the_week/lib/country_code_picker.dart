import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryCodePicker extends StatefulWidget {
  const CountryCodePicker({super.key});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  String countryCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Country Code Picker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
        elevation: 4,
        shadowColor: Colors.indigo.withOpacity(0.5),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade50, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Selected Country Code:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade900,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          countryCode.isEmpty ? 'No code selected' : '+$countryCode',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: countryCode.isEmpty
                                ? Colors.grey.shade600
                                : Colors.indigo.shade700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    showCountryPicker(
                      context: context,
                      countryListTheme: CountryListThemeData(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                        backgroundColor: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        inputDecoration: InputDecoration(
                          hintText: 'Search Country by Name',
                          labelText: 'Search',
                          prefixIcon: const Icon(Icons.search, color: Colors.indigo),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo.shade700, width: 2),
                          ),
                        ),
                      ),
                      favorite: ['PK'],
                      onSelect: (Country value) {
                        print('Country Code: ${value.countryCode}');
                        print('Phone Code: ${value.phoneCode}');
                        setState(() {
                          countryCode = value.phoneCode;
                        });
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  child: const Text('Select Country'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}