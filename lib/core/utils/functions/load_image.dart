
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hand2hand/constants.dart';
import 'package:image_picker/image_picker.dart';


Future<File> chooseImage(context,imageFile)async{
  await  showDialog(
      context: context,
      builder: (context1) {
        return AlertDialog(
          title: const Text("Pick image from"),
          contentPadding: const EdgeInsets.all(10),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title:const  Text("Camera"),
                onTap: () {
                  pickImage(ImageSource.camera, imageFile).then((value) {
                    imageFile = value;
                     Navigator.of(context).pop();
                  });
                },
                trailing: Icon(
                  Icons.camera_alt_outlined,
                  color: iconsColor,
                ),
              ),
              ListTile(
                title: const Text("Gallery"),
                onTap: () {
                  pickImage(ImageSource.gallery, imageFile).then((value) {
                    imageFile = value;
                     Navigator.of(context).pop();
                  });
                },
                trailing: Icon(
                  Icons.image,
                  color: iconsColor,
                ),
              )
            ],
          ),
        );
      });
return imageFile;
}
Future<File> pickImage(ImageSource source,image) async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: source);

  if (pickedFile != null) {
    image = File(pickedFile.path);
  }
  return image;
}
