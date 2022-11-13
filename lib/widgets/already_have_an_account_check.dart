import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.press,
    required this.login,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Dont have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: secondary),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : "Sign In",
            style: const TextStyle(
              color: primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
