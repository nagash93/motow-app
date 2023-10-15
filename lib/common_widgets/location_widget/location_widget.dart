import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key,this.location});
  final String? location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined,color: ColorApp.black,),
          Text(location??'Viña del mar,Valparaiso',
          style: const TextStyle(color: ColorApp.black,
          fontSize: 18,)),
          Icon(Icons.arrow_drop_down,color: ColorApp.black,)
        ],
      ),
    );
  }
} 