import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  String text;
  Function OnClick;
   ButtonWidget({super.key,required this.text,required this.OnClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
          onPressed: () {
            OnClick(text);
          },
          child: Text(text,style: TextStyle(color: Colors.white,fontSize: 25),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),),
          ),
        ));
  }
}
