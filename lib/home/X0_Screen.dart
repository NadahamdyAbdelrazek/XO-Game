import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/home/xo_btn.dart';
import 'package:untitled1/player_model.dart';

import 'Playername_widget.dart';

class XoGame extends StatefulWidget{
  static const String routename="Xo";

  const XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int Score1=0;
  int Score2=0;
  int counter=1;
  List<String> boardstate=[
    "","","",
    "","","",
    "","",""
  ];
  @override
  Widget build(BuildContext context){
    PlayerModel model=ModalRoute.of(context)!.settings.arguments as PlayerModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("XO Game", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  Playername(
                    text: model.Player1Name,
                  ),
                  Playername(
                    text: "$Score1",
                  ),


                ],),
                Column(children: [
                  Playername(
                    text: model.Player2Name,
                  ),
                  Playername(
                    text: "$Score2",
                  ),


                ],),

              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xobtn(OnClick:  OnbtnClick,label: boardstate[0],index: 0,),
                Xobtn(OnClick:  OnbtnClick,label: boardstate[1],index: 1,),
                Xobtn(OnClick:  OnbtnClick,label: boardstate[2],index: 2,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xobtn(OnClick:  OnbtnClick,label: boardstate[3],index: 3,),
                Xobtn(OnClick:  OnbtnClick,label: boardstate[4],index: 4,),
                Xobtn(OnClick:  OnbtnClick,label: boardstate[5],index: 5,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xobtn(OnClick:  OnbtnClick,label: boardstate[6],index: 6,),
                Xobtn(OnClick: OnbtnClick ,label: boardstate[7],index: 7,),
                Xobtn(OnClick: OnbtnClick,label: boardstate[8],index: 8,),
              ],
            ),
          ),
        ],
      ),
    );
  }
resetBoard(){
  boardstate=[
    "","","",
    "","","",
    "","",""
  ];
  counter=0;

}
  OnbtnClick(index){
    if(boardstate[index].isNotEmpty){
      return ;
    }
    if(counter.isOdd){
      boardstate[index]="X";
      Score1+=2;
      bool win=checkWin("X");
      if(win){
        Score1+=10;
        resetBoard();
      }
    }else{
      boardstate[index]="O";
      Score2+=2;
      bool win=checkWin("O");
      if(win){
        Score1+=10;
        resetBoard();
      }

    }
    counter++;
    setState(() {

    });

  }
  bool checkWin(String symbol){
    for(int i=0;i<9;i+=3){
      if(symbol==boardstate[i]&&
          symbol==boardstate[i+1]&&
          symbol==boardstate[i+2]){
        return true;
      }
    }
    for(int i=0;i<3;i++){
      if(symbol==boardstate[i]&&
          symbol==boardstate[i+3]&&
          symbol==boardstate[i+6]){
        return true;
      }
    }


    if(symbol==boardstate[0]&&
        symbol==boardstate[4]&&
        symbol==boardstate[8]){
      return true;
    }
    if(symbol==boardstate[2]&&
        symbol==boardstate[4]&&
        symbol==boardstate[6]){
      return true;
    }
    return false;

  }
}
