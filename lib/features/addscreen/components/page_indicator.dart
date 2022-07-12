import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class PageIndicator extends StatelessWidget {
   const PageIndicator({Key? key,this.currentPage,this.totalPage}) : super(key: key);

  final int? currentPage;
  final int? totalPage;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 50),
          Text('$currentPage/$totalPage'),
           Container(
               width: 50,
               height: 50,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: ColorApp.lightGray,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward,color: ColorApp.black,)),
          )
        ],
      );
  }
}
