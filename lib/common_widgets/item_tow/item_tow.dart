import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

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
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(title??'Moto Juan',textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(state??'V/Viña del mar',textAlign: TextAlign.start,style: const TextStyle(
                color: ColorApp.grey
            ),),
          ),
        ],
      ),
    );
  }
}
