import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';
import 'package:motow_app/constants/color_app.dart';
import 'package:motow_app/features/search/components/sub_title.dart';
import 'package:motow_app/features/search/components/tag_text.dart';

class SearchView extends HookWidget {
  SearchView({Key? key}) : super(key: key);

  final _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  String _dropMenuSelect = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Busqueda',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SubTitle(text: 'Ubicacion: '),
              SizedBox(
                height: 25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TagText(text: 'Santiago'),
                    TagText(
                      text: 'Valparaiso',
                      isSelected: true,
                    ),
                    TagText(text: 'Concepcion'),
                  ],
                ),
              ),
              const SubTitle(text: 'Region:'),
              Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: ColorApp.lightGray,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonFormField(
                    onChanged: (_) {},
                    decoration: const InputDecoration(
                      hintText: 'Seleccione region',
                      border: InputBorder.none,
                    ),
                    items: _currencies.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              const SubTitle(text: 'Comuna: '),
              Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: ColorApp.lightGray,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonFormField(
                    onChanged: (_) {},
                    decoration: const InputDecoration(
                      hintText: 'Seleccione region',
                      border: InputBorder.none,
                    ),
                    items: _currencies.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              const SizedBox(height: 30,),
              const MainButton(
                text: 'Buscar',
                prefixIcon: Icons.search,
              )
            ],
          ),
        ),
      ),
    );
  }
}
