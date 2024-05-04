import 'package:flutter/material.dart';

class Xobtn extends StatelessWidget {
  Function OnClick;
  String label;
  int index;
  Xobtn({super.key,required this.OnClick,required this.label,required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
         OnClick(index);

      },
      child: Text(label,style: TextStyle(color: Colors.white,fontSize: 30),),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    ));
  }
}
