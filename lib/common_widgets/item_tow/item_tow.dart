import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class ItemTow extends StatelessWidget {
  const ItemTow({Key? key,this.title,this.state}) : super(key: key);
  final String? title;
  final String? state;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: ColorApp.lightGray,
              borderRadius: BorderRadius.circular(20)
            ),

          ),
          Text(title??'Moto Juan',textAlign: TextAlign.left,),
          Text(state??'V/Viña del mar',textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}
