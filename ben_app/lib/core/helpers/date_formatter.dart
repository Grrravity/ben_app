import 'package:intl/intl.dart';

DateFormat getHourDateFormatter() {
  return DateFormat('H:mm', 'fr');
}

DateFormat getSlashedDMYDateFormatter() {
  return DateFormat('dd/MM/yyyy', 'fr');
}

DateFormat getSlashedDMYHourDateFormatter() {
  return DateFormat('dd/MM/yyyy H:mm', 'fr');
}

DateFormat getAbbrvFullDateTimeDateFormatter() {
  return DateFormat('E d MMM yyyy à HH:mm', 'fr');
}

DateFormat getAbbrvNoYearDateTimeDateFormatter() {
  return DateFormat('EEEE d MMM à HH:mm', 'fr');
}

DateFormat getFullDateTimeDateFormatter() {
  return DateFormat('EEEE d MMMM yyyy à HH:mm', 'fr');
}

DateFormat getLongDateDateFormatter() {
  return DateFormat('EEEEE d MMMM', 'fr');
}

DateFormat getLongDateWithYearDateFormatter() {
  return DateFormat('EEEEE d MMMM yyyy', 'fr');
}

DateFormat getShortDateWithYearDateFormatter() {
  return DateFormat('d MMMM yyyy', 'fr');
}

DateFormat getMonthDateFormatter() {
  return DateFormat('MMMM', 'fr');
}
