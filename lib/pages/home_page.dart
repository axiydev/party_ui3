import 'package:flutter/material.dart';
import 'package:party_ui/animations/fade_animation.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  bool _isLogin=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        width:double.infinity,
        decoration:BoxDecoration(
          image:DecorationImage(
            image:AssetImage('assets/images/im_party.jpeg'),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(30),
          decoration:BoxDecoration(
            gradient:LinearGradient(
              begin:Alignment.topCenter,
              colors:[
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              //# TEXTS
              FadeAnimation(1,Column(
                children:[
                  SizedBox(height:100),
                  Text('Find the best parties near you',style:TextStyle(color:Colors.yellow,fontSize:40),),
                  SizedBox(height:30),
                  Text('Let us find you a tutorial for your interest',style:TextStyle(fontSize:25,color:Colors.greenAccent),),
                ],
              )),
              //#BUTTONS
              FadeAnimation(1.2,Column(
                children:[
                  !_isLogin?
                  //#START BUTTON
                  Container(
                    width:double.infinity,
                    height:54,
                    decoration:BoxDecoration(
                      color:Colors.orange[600],
                      borderRadius:BorderRadius.circular(27),
                    ),
                    child:Center(
                      child:Text('Start',style:TextStyle(fontSize:18,color:Colors.white,),),
                    ),
                  )
                  :
                  Container(
                    height:54,
                    width:double.infinity,
                    child:Row(
                      children:[
                        //#GOOGLE BUTTON
                        Expanded(
                          flex:13,
                          child:Container(
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(27),
                              color:Colors.red[500],
                            ),
                            child:Center(
                              child:Text('Google',style:TextStyle(fontSize:17,color:Colors.white,),),
                            ),
                          ),
                        ),
                        Spacer(flex:1),
                        //#FACEBOOK BUTTON
                        Expanded(
                          flex:13,
                          child:Container(
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(27),
                              color:Colors.blue,
                            ),
                            child:Center(
                              child:Text('Facebook',style:TextStyle(fontSize:17,color:Colors.white,),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}