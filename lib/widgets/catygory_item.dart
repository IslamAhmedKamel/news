import 'package:flutter/material.dart';
import 'package:news/models/catygory_model.dart';

class CatygoryItem extends StatelessWidget {
  const CatygoryItem({super.key, required this.catygoryModel, this.onTap});
  final CatygoryModel catygoryModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1.2 / 1,
        child: Container(
          margin: const EdgeInsets.only(left: 8, top: 12, bottom: 12),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(catygoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              catygoryModel.title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
