import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Information',
 
      home: MyInfo(),
    );
  }
}
class MyInfo extends StatefulWidget{
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
 String firstName;
 String secondName;
 String lastName;
 String major;
 String university;
 TextEditingController _controller;

void initState() {
  super.initState();
  _controller = TextEditingController();
}
void dispose() {
  _controller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text('My Info'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10.00),
       child:Column(
         children: <Widget>[
      TextField( 
        controller: _controller, // first name
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your first name',
        
      ),
      onChanged:(text){
      this.firstName = text;
      } ,
      ),
      
       TextField( 
          controller: _controller,  //second name
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your second name',
        
      ),
      onChanged:(text){
       this.secondName = text;
      } ,
      ),
            TextField( //last name
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your last name',
        
      ),
      onChanged:(text){
       this.lastName = text;
      } ,
      ),
            TextField( 
               controller: _controller,    //major
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your major',
        
      ),
      onChanged:(text){
       this.major = text;
      } ,
      ),
            TextField(    
               controller: _controller,//university
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your University',
        
      ),
      onChanged:(text){
        
     this.university = text;
      } ,
      ),
      RaisedButton(
        
      onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder:(context) => InfoPage() )
           );
        },
        child: Text('Press'),
      ),
      ],
       ),
        ),
    );
    
  }
}

class InfoPage extends StatelessWidget{
  final _MyInfoState infostate;
  InfoPage({this.infostate});

  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
    appBar: AppBar(
      title: Text('Info Page'),
      ),

   body: Padding(
     padding: const EdgeInsets.all(10.00),
     child: Column(
       children:<Widget> [

         Text("Hello there , Your First Name is : ${infostate.firstName}"),
         Text("Your second Name is : ${infostate.secondName}"),
         Text("Your last Name is : ${infostate.lastName}"),
         Text("Your major is : ${infostate.major}"),
         Text("You university is : ${infostate.university}"),
       ],
     ),
     
     ),   
  );
  }

}
