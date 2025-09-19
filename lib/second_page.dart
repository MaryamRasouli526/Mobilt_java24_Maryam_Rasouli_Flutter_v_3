import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String userText;

  const SecondPage({super.key, required this.userText});

  /**
   * Bygger upp gränssnittet för andra sidan.
   * Visar text som skickats från första sidan och en bild från webben
   * samt en knapp för att gå tillbaka till första sidan.
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Andra sidan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Visa text som skickats från första sidan
            Text("Text från första sidan: $userText"),
            const SizedBox(height: 20),

            // Bild från webben
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png",
              width: 200,
            ),
            const SizedBox(height: 20),

            /**
             * Knapp för att gå tillbaka till första sidan.
             * Använder Navigator.pop för att stänga denna sida.
             */
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Tillbaka"),
            ),
          ],
        ),
      ),
    );
  }
}
