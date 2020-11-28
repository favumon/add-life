import 'package:add_life/ui/widgets/back_arrow_button.dart';
import 'package:add_life/ui/widgets/cart_button.dart';
import 'package:flutter/material.dart';

class BackButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showCartIcon;

  const BackButtonAppBar({Key key, this.showCartIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowButton(),
      actions: [if (showCartIcon) CartButton()],
    );
  }

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }
}
