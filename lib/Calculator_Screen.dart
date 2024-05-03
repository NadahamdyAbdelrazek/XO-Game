import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Button_widget.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w200,
                    ),
                  ))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "9",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "8",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "7",
                ),
                ButtonWidget(
                  OnClick: OnoperationClick,
                  text: "/",
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "6",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "5",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "4",
                ),
                ButtonWidget(
                  OnClick: OnoperationClick,
                  text: "*",
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "3",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "2",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "1",
                ),
                ButtonWidget(
                  OnClick: OnoperationClick,
                  text: "-",
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: "0",
                ),
                ButtonWidget(
                  OnClick: OnbtnClick,
                  text: ".",
                ),
                ButtonWidget(
                  OnClick: OnequelClick,
                  text: "=",
                ),
                ButtonWidget(
                  OnClick: OnoperationClick,
                  text: "+",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OnbtnClick(text) {
    if(operator=="="){
      result="";
      lhs="";
      operator="";
    }else{
      result += text;

    }
    setState(() {});
  }

  String lhs = "";
  String rhs = "";
  String operator = "";
  calculate(String lhs,String rhs,String operator) {
    double Rhs = double.parse(rhs);
    double Lhs = double.parse(lhs);
    if (operator == "+") {
      double res = Rhs + Lhs;
      return res.toString();
    } else if (operator == "-") {
      double res = Rhs - Lhs;
      return res.toString();
    } else if (operator == "*") {
      double res = Rhs * Lhs;
      return res.toString();
    } else if (operator == "/") {
      double res = Rhs / Lhs;
      return res.toString();
    }
    return "";
  }

  OnoperationClick(operation) {
    if (operator.isEmpty) {
      lhs = result;
    }else{
      lhs=calculate(lhs, result, operator);
    }
    operator = operation;
    result="";
    setState(() {
    });

    }

  OnequelClick(equaloperation) {
    result=calculate(lhs, result, operator);
    operator=equaloperation;
    setState(() {
    });
  }
}
