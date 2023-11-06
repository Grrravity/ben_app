import 'package:ben_app/core/router/path.dart';
import 'package:ben_app/presentation/pages/dashboard/presentation/dashboard_page.dart';
import 'package:ben_app/presentation/pages/events/presentation/events_page.dart';
import 'package:flutter/material.dart';

enum ShellDestinations {
  dashboard(
    path: Paths.dashboard,
    routeName: DashboardPage.routeName,
    label: 'Dashboard',
    icon: Icons.dashboard,
  ),
  events(
    path: Paths.events,
    routeName: EventsPage.routeName,
    label: 'Événements',
    icon: Icons.event,
  ),
  ;

  const ShellDestinations({
    required this.path,
    required this.routeName,
    required this.label,
    required this.icon,
  });

  final String path;

  final String routeName;

  final String label;

  final IconData icon;
}
