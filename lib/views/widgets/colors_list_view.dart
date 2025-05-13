import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex = 0 ;

  List<Color> colors = [
    Color(0xffac3931),
    Color(0xffcaa900),
    Color(0xffd9e76c),
    Color(0xff537d8d),
    Color(0xff482c3d),
    Color(0xff009f1e),
    Color(0xffffffff),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    
                    BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                    setState(() {

                    });
                  },
                  child: ColorItem(
                    color: colors[index],
                    isActive: currentIndex == index,
                  ),
                ),
              );
            },
        ),
    );
  }
}
