import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double size;
  final String imageurl;
  ProfileImage(this.imageurl, this.size);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(size / 2 - size / 18),
        child: Image.network(
          imageurl,
          height: size,
          width: size,
          fit: BoxFit.fill,
        ));
  }
}
