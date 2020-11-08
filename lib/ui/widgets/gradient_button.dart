import 'package:add_life/ui/theme.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;

  final void Function() onPressed;

  const GradientButton({Key key, this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: brandGradient),
          // boxShadow: [
          //   BoxShadow(
          //     color: brandGradient[1],
          //     spreadRadius: 1,
          //     blurRadius: 5,
          //     offset: Offset(0, 3),
          //   )
          // ],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 60.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
