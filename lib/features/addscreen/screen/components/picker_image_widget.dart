import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motow_app/constants/styles/color_app.dart';



class PickerImage extends StatefulWidget {
  PickerImage({Key? key}) : super(key: key);

  @override
  State<PickerImage> createState() => _PickerImageState();
}

class _PickerImageState extends State<PickerImage> {
  final ImagePicker _picker = ImagePicker();

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          openSheetModal(context);
        },
        child: image == null
            ? Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: ColorApp.lightGray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const IconButton(
                  icon: Icon(
                    Icons.image_outlined,
                    color: ColorApp.black,
                  ),
                  onPressed: null,
                ),
              )
            : Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: FileImage(File(image!.path)),
                        fit: BoxFit.cover)),
              ));
  }

  openSheetModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: const Text('Camara'),
                    onTap: () async {
                      image =
                          await _picker.pickImage(source: ImageSource.camera);
                      setState((){});
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: const Icon(Icons.add_photo_alternate),
                    title: const Text('Galeria'),
                    onTap: () async {
                      image =
                          await _picker.pickImage(source: ImageSource.gallery);
                      setState((){});
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          );
        });
  }
}
