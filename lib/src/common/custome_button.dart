import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(width, height),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xffF8A435), // Replace with your desired button color
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily:
              'AppFonts.AppFonts.Apercu', // Replace with your desired font
          color: Colors.white,
        ),
      ),
    );
  }
}
