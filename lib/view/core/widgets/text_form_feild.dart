
import 'package:business_card/main.dart';
import 'package:business_card/view/core/adaptive_screen/adaptive_screen_varibles.dart';
import 'package:flutter/material.dart';

Widget customTextFormFeild(
        {context,
        hintText,
        validator,
        maxlines,
        key,
        double height = 60.0,
        double widthof = 0,
        controller}) =>
    SizedBox(
      width: widthof == 0?width(context) * 0.8:widthof,
      height: height,
      child: Form(
        key: key,
        child: TextFormField(
          validator: validator,
          controller: controller,
          maxLines: maxlines,
          textAlign: userlun!.get('lunguage') == 'en'
              ? TextAlign.left
              : TextAlign.right,
          style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
              fontFamily: "Cairo"),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).secondaryHeaderColor),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
