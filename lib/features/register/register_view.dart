import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  final bonusList = [
    'Guardar tus anuncios favoritos ',
    'Calificar anuncios',
    'Comentar anuncios',
    'Reportar anuncios',
    'Recibir novedades y \nnuevas funciones de la app '
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Registro',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('El registro y uso de la app es ',
                style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            const Text('100% Gratis', style: TextStyle(fontSize: 25)),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Beneficios de registro:', style: TextStyle(fontSize: 25)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: bonusList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            bonusList[index],
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            MainButton(
              text: 'Regristar',
              onTap: () => _openMenu(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Si tienes cuenta inicia sesion aqui',
                style: const TextStyle(fontSize: 18)),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }

  _openMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
       return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  MainButton(
                    text: 'Google',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    text: 'Apple',
                  ),
                ],
              ));
        });
  }
}
