import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileMenuProps {
  const ProfileMenuProps(
      {required this.value, required this.onPressed, required this.title});

  final String title;
  final String value;
  final VoidCallback onPressed;
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
    this.props, {
    super.key,
  });

  final ProfileMenuProps props;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:
              Text(props.title, style: Theme.of(context).textTheme.labelLarge),
        ),
        Expanded(
          flex: 5,
          child: Text(props.value),
        ),
        IconButton(
          icon: const Icon(FontAwesomeIcons.angleRight),
          onPressed: props.onPressed,
        ),
      ],
    );
  }
}
