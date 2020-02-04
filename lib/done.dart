import "package:flutter/material.dart";
class Done extends StatelessWidget {
  final int score;
  Function restartQuiz;
  Done(this.score,this.restartQuiz);
  String get resultScore{
   String result= score.toString();
   return result;
  }
   
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(children: [
        Text("You answered all questions!", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        Text("Your score is : "+resultScore, style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        RaisedButton(child: Text("Restart quiz",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), onPressed: restartQuiz,)
      ],) 
    );
  }
}
