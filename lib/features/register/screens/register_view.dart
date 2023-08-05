import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/login_modal/login_modal.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
            const Text(
              'El registro y uso de la app es',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '100% Gratis',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Beneficios de registro:',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: 0,
                itemBuilder: (BuildContext ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'x',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            MainButton(
              text: 'Registrar',
              onTap: () => LoginModal().openMenu(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Si tienes cuenta inicia sesion aqui',
              style: TextStyle(fontSize: 18),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
