import 'dart:ui';

Color? kGetColor(String text) {
  switch (text) {
    case "Green":
      return const Color(0xFF00FF4C);
    case "Blue":
      return const Color(0xFF0D0DEB);
    case "Red":
      return const Color(0xFFD41717);
    default:
      return null;
  }
}
