import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather.dart';
import 'package:wheather_app/themes.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Weather? weather;
  String cityname = '';
  final openweather = WeatherFactory(weatherurl);

  getweather() async {
    try {
      weather = await openweather.currentWeatherByCityName(cityname);
      setState(() {});
    } catch (e) {
      throw e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/back.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    cityname = value;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                    onPressed: () {
                      getweather();
                    },
                    icon: Icon(Icons.search),
                  ),
                  filled: true,
                  hintText: "Search your weather",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Image.asset(
                "images/cloud.png",
                width: 200,
              ),
              weather != null
                  ? Column(
                      children: [
                        Text("${weather!.temperature!.celsius!.round()}"),
                        Text(
                          "20",
                          style:
                              GoogleFonts.rubik(fontSize: 30, color: yellowcol),
                        ),
                      ],
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
