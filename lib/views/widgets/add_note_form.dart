import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextFormField(
              onSaved: (value){
                title = value;
              },
              hint: 'Title'),
          SizedBox(height: 20),
          CustomTextFormField(
              onSaved: (value){
                subtitle = value;
              },
              hint: 'Content', maxLines: 5),
          SizedBox(height: 50),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autoValidateMode =AutovalidateMode.always ;
                setState(() {

                });
              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
