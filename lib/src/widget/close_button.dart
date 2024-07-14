import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicCloseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final NeumorphicStyle? style;
  final EdgeInsets? padding;

  const NeumorphicCloseButton({
    super.key,
    this.onPressed,
    this.style,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final nThemeIcons = NeumorphicTheme.of(context)!.current!.appBarTheme.icons;
    return NeumorphicButton(
      style: style,
      padding: padding,
      tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
      onPressed: onPressed ?? () => Navigator.maybePop(context),
      child: nThemeIcons.closeIcon,
    );
  }
}
