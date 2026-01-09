import 'package:flutter/material.dart';
import 'about_us_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌌 Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🖤 Dark overlay
          Container(
            color: Colors.black.withOpacity(0.6),
          ),

          // ✨ Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Riddhi's Company",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Amazon.com, Inc., doing business as Amazon, is an American multinational technology company engaged in e-commerce, cloud computing, online advertising, digital streaming, and artificial intelligence.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFD4AF37),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🚪 Logout Button
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(
                Icons.logout,
                color: Color(0xFFD4AF37),
                size: 30,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                      (route) => false,
                );
              },
            ),
          ),

          // ℹ️ About Us
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(
                Icons.info_outline,
                color: Color(0xFFD4AF37),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AboutUsScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
