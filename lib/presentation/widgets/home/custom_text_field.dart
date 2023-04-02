import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,
    this.onChange ,
    required this.hint,
    this.maxLines=1,
    this.onSaved,
    this.keyboardType=TextInputType.text,
  }) : super(key: key) ;

  final String ?hint;
  final void Function(String?)? onSaved;
  final Function(String) ? onChange;
  final int maxLines;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      keyboardType:keyboardType ,
      validator: (val){
        if(val?.isEmpty??true){
          return 'Field is required';
        }
        else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: AppColor.kCursorColor,
      decoration: InputDecoration(
      fillColor: AppColor.kTextFiledColor,
          filled: true,
          hintText: hint,
          hintStyle:const TextStyle(
              color: AppColor.kHintColor,
            fontSize: 15,
          ),
          focusedBorder: buildBorder(border: 16, color: AppColor.kTextFiledBorderColor),
          enabledBorder: buildBorder(border: 16, color: AppColor.kHintColor),
          border:buildBorder(border: 16, color: Colors.grey)
      ),
    );
  }

  OutlineInputBorder buildBorder({
    required double border,
    required Color color,
  }) {
    return OutlineInputBorder(
        borderSide:  BorderSide(
          color: color,
        ),
        borderRadius: BorderRadius.circular(border)
    );
  }
}