import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('hola Mundo'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // avoid closing dialog taping outside
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
          'Magna ut sint esse Lorem elit excepteur. Cupidatat et occaecat sunt cupidatat cupidatat sint occaecat exercitation aliqua magna laborum quis qui. Ea sint excepteur ut amet est.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars y Dialogs')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Amet sit consectetur ea voluptate sint.Ea in proident ipsum aute elit excepteur tempor mollit. Deserunt officia aliquip aliquip nostrud occaecat pariatur. Cupidatat veniam dolore cupidatat nostrud fugiat ea fugiat irure enim reprehenderit culpa consectetur proident. Id consequat pariatur cillum non amet. Tempor incididunt voluptate ex occaecat irure labore enim ullamco enim laboris cupidatat. Magna commodo non quis labore Lorem ad ullamco ut excepteur. Amet adipisicing eiusmod aliqua quis anim ut ullamco sunt fugiat aute deserunt consequat.',
                    ),
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
