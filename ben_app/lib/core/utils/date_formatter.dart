import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateFormat getLocalHour(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('H:mm', 'fr');
    case 'en':
      return DateFormat('h:mm a', 'en');
    case 'es':
      return DateFormat('h:mm a', 'en');
    default:
      return DateFormat('H:mm', 'fr');
  }
}

DateFormat getLocalDDMMYY(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('dd/MM/yyyy', 'fr');
    case 'en':
      return DateFormat('MM/dd/yyyy', 'en');
    case 'es':
      return DateFormat('dd/MM/yyyy', 'es');
    default:
      return DateFormat('dd/MM/yyyy', 'fr');
  }
}

DateFormat getLocalDDMMYYHmm(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('dd/MM/yyyy H:mm', 'fr');
    case 'en':
      return DateFormat('MM/dd/yyyy h:mm a', 'en');
    case 'es':
      return DateFormat('dd/MM/yyyy h:mm a', 'es');
    default:
      return DateFormat('dd/MM/yyyy H:mm', 'fr');
  }
}

DateFormat getLocalAbbrvFullDateTime(BuildContext context) {
  switch (Localizations.localeOf(context).countryCode) {
    case 'fr':
      return DateFormat('E d MMM yyyy HH:mm', 'fr');
    case 'en':
      return DateFormat('E, d MMM yyyy HH:mm', 'en');
    case 'es':
      return DateFormat('E d MMMM yyyy HH:mm', 'es');
    default:
      return DateFormat('E d MMM yyyy HH:mm', 'fr');
  }
}

DateFormat getLocalFullDateTime(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('EEEE d MMMM yyyy à HH:mm', 'fr');
    case 'en':
      return DateFormat('EEEE, MMMM d, yyyy at HH:mm', 'en');
    case 'es':
      return DateFormat('EEEE d MMMM yyyy at HH:mm', 'es');
    default:
      return DateFormat('EEEE d MMMM yyyy à HH:mm', 'fr');
  }
}

DateFormat getLocalLongDate(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('EEEEE d MMMM', 'fr');
    case 'en':
      return DateFormat('EEEEE, MMMM d', 'en');
    case 'es':
      return DateFormat('EEEEE d MMMM', 'es');
    default:
      return DateFormat('EEEEE d MMMM', 'fr');
  }
}

DateFormat getLocalLongDateWithYear(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('EEEEE d MMMM yyyy', 'fr');
    case 'en':
      return DateFormat('EEEEE, MMMM d yyyy', 'en');
    case 'es':
      return DateFormat('EEEEE d MMMM yyyy', 'es');
    default:
      return DateFormat('EEEEE d MMMM yyyy', 'fr');
  }
}

DateFormat getLocalShortDateWithYear(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('d MMMM yyyy', 'fr');
    case 'en':
      return DateFormat('MMMM d, yyyy', 'en');
    case 'es':
      return DateFormat('d MMMM yyyy', 'es');
    default:
      return DateFormat('d MMMM yyyy', 'fr');
  }
}

DateFormat getMonth(BuildContext context) {
  switch (Localizations.localeOf(context).languageCode) {
    case 'fr':
      return DateFormat('MMMM', 'fr');
    case 'en':
      return DateFormat('MMMM', 'en');
    case 'es':
      return DateFormat('MMMM', 'es');
    default:
      return DateFormat('MMMM', 'fr');
  }
}
