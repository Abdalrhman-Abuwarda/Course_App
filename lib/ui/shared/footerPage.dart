import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({
    required this.mainText,
    required this.textButton,
    required this.onPressed
  });

  final String mainText;
  final String textButton;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(mainText , style: Theme.of(context).textTheme.bodyText1,),
        TextButton(onPressed: onPressed, child: Text(textButton , style: Theme.of(context).textTheme.subtitle1,))
      ],
    );
  }
}
