import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreenOne(),
      title: "Mobile Application",
      debugShowCheckedModeBanner: false,
    );
  }

}

//Route
class WelcomeScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 2,
              ),
              child: Icon(Icons.access_time_filled, size: 16,),
            ),
            Text("Taskly", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network("https://cdn3d.iconscout.com/3d/premium/thumb/businessman-riding-rocket-9552024-7922428.png?f=webp", height: 200,),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              14, 50, 14, 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Manage Your Everyday Tasks Smoothly.", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text("Lorem ipsum dolor sit amet, consectetur.", style: TextStyle(
                    fontSize: 12,
                    color: Colors.white38,
                  ),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreenTwo()));
                },
                    child: Text("Move Next"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurpleAccent,
                      backgroundColor: Colors.white,
                      minimumSize: Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

//Route
class WelcomeScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 2,
              ),
              child: Icon(Icons.access_time_filled, size: 16,),
            ),
            Text("Taskly", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network("https://cdn3d.iconscout.com/3d/premium/thumb/businessman-standing-with-target-9552042-7922446.png?f=webp", height: 200,),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                14, 50, 14, 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Complete All Your Tasks On Time.", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text("Lorem ipsum dolor sit amet, consectetur.", style: TextStyle(
                    fontSize: 12,
                    color: Colors.white38,
                  ),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreenThree()));
                },
                  child: Text("Move Next"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.white,
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

//Route
class WelcomeScreenThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 2,
              ),
              child: Icon(Icons.access_time_filled, size: 16,),
            ),
            Text("Taskly", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network("https://cdn3d.iconscout.com/3d/premium/thumb/businessman-working-on-laptop-9552043-7922447.png?f=webp", height: 200,),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                14, 50, 14, 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best Task Manager Application.", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text("Lorem ipsum dolor sit amet, consectetur.", style: TextStyle(
                    fontSize: 12,
                    color: Colors.white38,
                  ),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), 
                          (route) => false
                  );
                },
                  child: Text("Start Using"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.indigoAccent,
                    backgroundColor: Colors.white,
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }

}