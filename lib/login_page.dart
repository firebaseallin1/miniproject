
import 'package:flutter/material.dart';
import 'package:mini_project/admin_screen.dart';
import 'package:mini_project/customer_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var userController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/atm.png",) ,
            fit: BoxFit.fitHeight)
          ),
          child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [

                Image.asset("assets/images/atm.png",scale: 0.01,),

                SizedBox(height: 35,),
                Container(

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                    child: TextField(
                      controller: userController,
                      keyboardType: TextInputType.text,
                      decoration:InputDecoration(
                        labelText: "Enter Login ID",
                        labelStyle: TextStyle(color: Color(0xe7140c4b)),
                        disabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(8.0),
                          borderSide:const BorderSide(
                              color:Colors.white,
                              width:1
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(8.0),
                          borderSide:BorderSide(
                              color:Colors.white,
                              width:1
                          ),
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(8.0),
                          borderSide:BorderSide(
                              color:Colors.white,
                              width:1
                          ),
                        ),

                        filled:true,
                        fillColor:Color(0xffffffff),
                        isDense:false,
                        contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
                        prefixIcon:Icon(Icons.mobile_friendly,color:Color(0xe7140c4b),size:24),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all( 15.0),
                    child: FloatingActionButton(
                        onPressed: (){

                          if(userController.text.toLowerCase().contains("customer")){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerScreen()));
                          }else
                          if(userController.text.toLowerCase().contains("admin")){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminScreen()));
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text('Please enter valid user id'),
                              duration: const Duration(seconds: 1),
                              action: SnackBarAction(
                                label: 'close',
                                onPressed: () { },
                              ),
                            ));
                          }

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.login),
                        ),
                        backgroundColor: Colors.lime,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }


}
