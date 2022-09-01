import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget coustmdefaultbutton({
   double width=double.infinity,
   Color background=Colors.blue,
   double raduis=0.0,
   bool isUpperCase=true,
  required  VoidCallback function,
  required String text,
})=>
    Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: background,
      ),
      child: MaterialButton(
          child: Text(
            isUpperCase? text.toUpperCase(): text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: function,
          ),
    );


Widget CoustmTextFormfield({
  required TextEditingController controller,
  required TextInputType type,
  void Function (String?)? onSubmit,// the string because it takes a required string as parameter
  void Function (String?)? onPressed,
  required  FormFieldValidator<String>? validate, // because the valditor is type of FormFieldValidator
  required String label ,
  required IconData prefix,
   IconData? suffix,
  bool isPassword=false,
  VoidCallback? SuffixPressed,

})=>TextFormField(
  // عشان اعرف اقفش البيانات ال هتتكتب في الخانات
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,  // بتستخدم لما ادوس علي علامه صح في الكيبورد لما اخلص كتابه الأيميل او الباسورد
  onChanged: onPressed,
  validator: validate,
  obscureText: isPassword,
  decoration: InputDecoration(
    prefixIcon: Icon(
        prefix,
    ),
    suffixIcon: IconButton(
      onPressed: SuffixPressed,
      icon: Icon(
        suffix,
      ),
    ),
    labelText: label,
    border: OutlineInputBorder(),
  ),

);

