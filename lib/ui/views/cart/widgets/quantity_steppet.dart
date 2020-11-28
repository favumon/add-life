import 'package:flutter/material.dart';

class QuantityStepper extends StatelessWidget {
  final int currentQuantity;
  final void Function(int changedQuantity) onQuantityChanged;

  const QuantityStepper({Key key, this.currentQuantity, this.onQuantityChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: Color(0xFFF6F6F6)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
              color: Colors.transparent,
              child: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () => onQuantityChanged(currentQuantity - 1),
              )),

          const SizedBox(
            width: 10,
          ),
          Text(
            currentQuantity.toString(),
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => onQuantityChanged(currentQuantity + 1),
            ),
          )
          // Text(
          //   '+',
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline5
          //       .copyWith(fontWeight: FontWeight.w500),
          // ),
        ],
      ),
    );
  }
}
