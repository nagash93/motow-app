import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:motow_app/common_widgets/drawer_menu/drawer_main_menu.dart';
import 'package:motow_app/common_widgets/item_tow/item_tow.dart';
import 'package:motow_app/common_widgets/main_app_bar/main_app_bar.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/mini_slider/mini_slider.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/routing/route_paths.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: const DrawerMainMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('help');
        },
        backgroundColor: ColorApp.accentRed,
        child: const Icon(Icons.emergency,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left:20,top: 10),
          child: Column(
            children: [
              const MiniSlider(),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 20),
                child: MainButton(
                  prefixIcon: Icons.search,
                  text: 'Buscar',
                  onTap: () {
                    context.pushNamed(RouteName.search);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Ultimos Agregdos',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Ver Todos',
                      style: TextStyle(fontSize: 14, color: ColorApp.grey),
                    )
                  ],
                ),
              ),

              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisExtent: 180,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 20,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return const ItemTow();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
