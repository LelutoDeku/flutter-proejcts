import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage  cross=AssetImage("Assets/Images/cross.png");
  AssetImage  circle=AssetImage("Assets/Images/circle.png");
  AssetImage  edit=AssetImage("Assets/Images/edit.jpg");

  bool isCross= true;
  late  String message;
  late  List<String> gameState;

  //init state
  void initState(){ 
    super.initState();
    setState(() {
      this.gameState = [  
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      
      ];
    });
  }
  //resetGame
  resetGame(){  
    setState(() {
      this.gameState = [  
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
    });
  }
  //playGame
  playGame(int index) {
    if (this.gameState[index]=="empty")  {
      setState(() {
        if (this.isCross) {
          this.gameState[index] ='cross';
        
        }
        else {  
          this.gameState[index]='circle';
        }
        this.isCross=!this.isCross;
      this.checkwin();
      });
      
    }

  }
  //getImage
  AssetImage  getImage(String value)  {
    switch(value) {
      case('empty'): 
        return edit;
      case('cross'): 
        return cross;
      case('circle'): 
        return circle;
      
    }
      return edit;
  }
  //checkWin
  checkwin(){ 
    if((gameState[0]!= 'empty') &&  gameState[0]==gameState[1] && gameState[1]==gameState[2]) {
      setState(() {
        this.message='Hurray!! ${this.gameState[0]} Wins';
      });
    }
     if((gameState[3]!= 'empty') &&  gameState[3]==gameState[4] && gameState[4]==gameState[5]) {
      setState(() {
        this.message='Hurray!! ${this.gameState[3]} Wins';
      });
    }
     if((gameState[6]!= 'empty') &&  gameState[6]==gameState[7] && gameState[7]==gameState[8]) {
      setState(() {
        this.message='Hurray!! ${this.gameState[6]} Wins';
      });
    }
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("Tic Tac Toe")
      ),
      body : Column(  
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[ 
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: this.gameState.length,
              itemBuilder: (context, i) =>SizedBox( 
                width: 100.0,
                height: 100.0,
                child: MaterialButton(
                  onPressed: () { 
                    this.playGame(i);
                  },
                  child: Image( 
                    image: this.getImage(this.gameState[i]),
                  )
                )
              )
            )
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                this.message,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            MaterialButton(
              color: Colors.purple,
              minWidth: 300.0,
              height: 50.0,
              child: Text(
                "Reset Game",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  ),
                  onPressed: () {
                    this.resetGame();
                  },
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              
            )
        ]
      )
    );
  }
}