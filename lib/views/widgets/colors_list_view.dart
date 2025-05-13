import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
              return ColorItem();
            },
        ),
    );
  }
}
