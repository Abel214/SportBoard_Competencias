import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColors.primaryColor,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Acción de configuración
            // Navegar a la pantalla de configuración
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            // Acción de más opciones
            // Mostrar un menú desplegable o realizar otra acción
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
