import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChange});

  final String hint;
  final int maxLines ;

  final void Function(String?)? onSaved ;
  final Function(String)? onChange ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Failed is required' ;
        }else{
          return null ;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(
          kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
            color: color ?? Colors.white
        ),
      );
  }
}
