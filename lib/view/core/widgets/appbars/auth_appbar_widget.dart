
import 'package:business_card/view/core/localization/language.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget authAppbar({context,backButton = true,required onChanged}) => AppBar(
      automaticallyImplyLeading: backButton,
      backgroundColor: Colors.indigoAccent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            dropdownColor: Colors.white,
            icon: const Icon(Icons.language_outlined),
            underline: const SizedBox(),
            onChanged:  onChanged,
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          e.name,
                          style: const TextStyle(
                              fontFamily: 'Cairo', fontSize: 12,),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
