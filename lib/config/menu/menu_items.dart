import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Botones de la app',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Tarjetas de la app',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_outlined,
  ),
  MenuItem(
    title: 'Snackbars y Dialogs',
    subtitle: 'Indicadores de pantallap',
    link: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Stateful widget animado',
    link: '/animated-container',
    icon: Icons.check_box_outline_blank,
  ),
  MenuItem(
    title: 'Ui Controls',
    subtitle: 'Controles de la interfaz',
    link: '/ui-controls',
    icon: Icons.control_camera,
  ),
  MenuItem(
    title: 'Introduccion a la App',
    subtitle: 'Tutorial de como usar la app',
    link: '/tutorial',
    icon: Icons.library_books_outlined,
  ),
  MenuItem(
    title: 'Infinite Scroll & Pull to Refresh',
    subtitle: 'Listas infinitas y pull to refresh',
    link: '/infinite-scroll',
    icon: Icons.list_alt_rounded,
  ),
];
