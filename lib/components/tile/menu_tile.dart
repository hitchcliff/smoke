import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';

class MenuTileProps {
  const MenuTileProps({
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    this.icon,
    required this.onTap,
  });

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData? icon;
  final Function()? onTap;
}

class MenuTile extends StatelessWidget {
  const MenuTile(this.props, {super.key, this.trailing});

  final MenuTileProps props;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: props.onTap,
        leading: Icon(props.leadingIcon, color: MyColors.primary),
        title: Text(
          props.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          props.subtitle,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        trailing: trailing);
  }
}
