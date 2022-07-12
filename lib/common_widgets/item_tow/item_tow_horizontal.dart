import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class ItemTowHorizontal extends StatelessWidget {
  const ItemTowHorizontal({Key? key, this.title, this.state}) : super(key: key);
  final String? title;
  final String? state;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: ColorApp.lightGray,
                borderRadius: BorderRadius.circular(20)),
          ),
          Expanded(
            child: Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title ?? 'Moto Juan',
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    state ?? 'V/Viña del mar',
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
