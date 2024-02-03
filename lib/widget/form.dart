import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

// ignore: must_be_immutable
class InputForm extends StatelessWidget {
  InputForm({super.key, required this.hintText, required this.controller});
  String hintText;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Inputpassword extends StatelessWidget {
  Inputpassword({super.key, required this.hintText, required this.controller});
  String hintText;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PasswordField(
        color: Colors.blue,
        passwordConstraint: r'.*[@$#.*].*',
        hintText: hintText,
        border: PasswordBorder(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 2, color: Colors.red.shade200),
          ),
        ),
        errorMessage: 'must contain special character either . * @ # \$',
      ),
    );
  }
}

// ignore: must_be_immutable
class InputSearch extends StatelessWidget {
  InputSearch(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.icons});
  String hintText;
  Icon icons;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          suffixIcon: icons,
        ),
      ),
    );
  }
}
