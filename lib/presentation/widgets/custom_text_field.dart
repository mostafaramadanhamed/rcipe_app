import 'package:flutter/material.dart';
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
    return Center(
      child: TextFormField(
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
        cursorColor: AppColor.kPrimaryColor,
        decoration: InputDecoration(
          //  fillColor: SBackgroundColor,
            hintText: hint,
            hintStyle:const TextStyle(
                color: AppColor.kPrimaryColor
            ),
            errorBorder:buildBorder(border: 16, color: AppColor.kPrimaryColor),
            focusedBorder: buildBorder(border: 16, color: AppColor.kPrimaryColor),
            enabledBorder: buildBorder(border: 16, color: AppColor.kPrimaryColor),
            border:buildBorder(border: 16, color: Colors.grey)
        ),
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