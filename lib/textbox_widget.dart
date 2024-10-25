

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textBoxWidget(String labltxt,String hinttext,bool enabled,TextEditingController txtcontroller,Function onchange){
  return Container(
    // decoration: BoxDecoration(
    //     border: Border.all(color: Colors.blueGrey),
    //     borderRadius: BorderRadius.circular(8),
    //     color: Colors.white
    // ),
    child: TextField(
      enabled: enabled,
      controller: txtcontroller,
      onChanged: onchange(),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.amber, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: labltxt
      ),
    ),
  );
}

Widget textBoxWidget1(String labltxt,TextEditingController txtcntrl){
  return Container(
    // decoration: BoxDecoration(
    //     border: Border.all(color: Colors.blueGrey),
    //     borderRadius: BorderRadius.circular(8),
    //     color: Colors.white
    // ),
    child: TextField(
      keyboardType: TextInputType.text,
      controller: txtcntrl,
      minLines: 5,
      maxLines: 15,
      decoration: InputDecoration(
        hintText: 'Enter remarks',
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.amber, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}