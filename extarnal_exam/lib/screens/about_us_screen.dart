import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ⬅ Back to Home
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Color(0xFFD4AF37)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "We are a premium company delivering innovative digital "
                  "solutions with excellence, trust, and customer satisfaction. "
                  "We operate like a set of startups, embracing invention and "
                  "creating products and services our customers love. "
                  "Our passion for delighting customers drives us to constantly "
                  "invent and improve, launching innovations such as Prime, Alexa, "
                  "and award-winning digital services.",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFD4AF37),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
