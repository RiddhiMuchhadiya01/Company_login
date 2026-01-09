import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String gender = "Male";
  bool english = false;
  bool hindi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Color(0xFFD4AF37)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/company_logo.jpeg',
                  height: 70,
                ),
                const SizedBox(height: 10),

                const CustomTextField(label: "Full Name"),
                const CustomTextField(label: "Email"),
                const CustomTextField(
                    label: "Password", isPassword: true),

                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gender",
                    style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (v) =>
                          setState(() => gender = v.toString()),
                    ),
                    const Text("Male"),
                    Radio(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (v) =>
                          setState(() => gender = v.toString()),
                    ),
                    const Text("Female"),
                  ],
                ),

                CheckboxListTile(
                  title: const Text("English"),
                  value: english,
                  onChanged: (v) => setState(() => english = v!),
                ),
                CheckboxListTile(
                  title: const Text("Hindi"),
                  value: hindi,
                  onChanged: (v) => setState(() => hindi = v!),
                ),

                const CustomTextField(label: "Experience Details"),

                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("SUBMIT"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
