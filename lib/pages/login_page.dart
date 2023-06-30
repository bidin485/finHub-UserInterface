import 'package:flutter/material.dart';
import 'package:my_first_app/components/square.dart';
import '../components/button.dart';
import 'package:my_first_app/components/text.dart';

class LoginPage  extends StatelessWidget {

LoginPage({super.key});
//text editing controllers 
final usernameController=TextEditingController();
final passwordController=TextEditingController();

//after signing in
void signedIn(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  SizedBox(height:50), 
              const Icon(
              Icons.lock,
              size: 100,
            ),
              const  SizedBox(height: 50),
         
         Text(
          "Welcome to FinHub",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize:50,
          ),
         
         ),
         
        const SizedBox(height: 50),
        //username field
     
       Text1(
        controller:usernameController,
        hintText:"username",
        obscureText:true,
       ),
       //password text
       const SizedBox(height: 10),
       Text1(
        controller:passwordController,
        hintText:"password",
        obscureText:false,
       ),
       const SizedBox(height: 10),

       //forgotPassword
       Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.amber[600]),
       ),

       const SizedBox (height: 50),
       Button(
        onTouch:signedIn
       ),
       const SizedBox (height: 50),
       //continue with
       Row(
        children: [
          Expanded(
            child:Divider (
            color: Colors.grey[400],
            thickness:1.0,
            ),),
            const Text('Or continue with'),
            Expanded(
            child: Divider(thickness: 1.0,
            color:Colors.grey[400],))

        ],
       ),
       //signing options either google or apple id
       Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:const [
        Square(imagePath:'lib/images/google.png'),
        //apple
        Square(imagePath: 'lib/images/apple.png'),
        SizedBox(width:25 ),
       ],),
//not registered
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Text(
      'Register now',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),)
  ],
)

       ],),),),


       
        //name textfield
     

        //login button
        //register button
        //forgot password 
        //google button
        //apple button
        //
    );
  }
}