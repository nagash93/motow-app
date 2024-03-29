import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/features/addscreen/components/label_text_form.dart';
import 'package:motow_app/features/addscreen/components/page_indicator.dart';

class AddView extends HookWidget {
  const AddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Agregar',
      ),
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            _pageName(),
          ],
        ),
      ),
    );
  }

  Widget _pageName() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(children: [
        const LabelTextForm(text: 'Nombre:'),
        Container(
            padding:const  EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: ColorApp.lightGray,
                borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              cursorColor: ColorApp.black,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Gruas Rodrigues',),
            )),
        const LabelTextForm(text: 'Agrega una imagen:'),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: ColorApp.lightGray, borderRadius: BorderRadius.circular(20)),
          child: const IconButton (
            icon: Icon(Icons.image_outlined,color: ColorApp.black,),
            onPressed: null,
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          children: const [
            Text(
              'Puede ser el logo o imagen de grua',
              style: TextStyle(
                color: ColorApp.grey,
              ),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            const Checkbox(value: true, onChanged: null),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '¿Eres dueño o trabajar en este lugar?',
                ),
                Text('Si eres dueño, dejanos tu correo \ny te contactaremos')
              ],
            )
          ],
        ),
        const PageIndicator(
          currentPage: 1,
          totalPage: 2,
        ),
      ]),
    );
  }
}
