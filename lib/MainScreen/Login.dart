//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:history_app/MainScreen/TransitionScreen.dart';
import 'package:history_app/MainScreen/RegistrationPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:connectivity/connectivity.dart';
import 'package:string_validator/string_validator.dart';

class LoginPage extends StatefulWidget {
  //TODO: Implement Circular widget for waiting //Done
  //Git

  static const String id ='Login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Testing Mode
  // var email = TextEditingController(text: 'hry3@gmail.com');
  // var password = TextEditingController(text: 'qweqw.w/,qwd');
  // var email = TextEditingController(text: 'syedmuzammil67@gmail.com');
  // var password = TextEditingController(text: 'abc12345');

  //Production Mode
  var email = TextEditingController();
  var password = TextEditingController();

  bool obscureStatus = true;

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  void showSnackBar(String title, BuildContext context){
    final snackBar = SnackBar(
        duration: Duration(seconds: 3),
        content: Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 15),)
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void loginUser()async{

    showDialog(
      barrierDismissible: false, //clicking any part of the screen wont make the dialog disapper
      context: scaffoldKey.currentContext,
      builder: (BuildContext context) => TransitionScreen(message: 'Wait for Login'),
    );



    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email.text,
          password: password.text
      );

      //checks if the user's login is successful
      if(userCredential != null){
        showSnackBar('Login Successful', scaffoldKey.currentContext);
        print('Login Successful');

        //Saving User Data
        DatabaseReference newUserRefer = FirebaseDatabase.instance.reference().child('user/${userCredential.user.uid}');

        //Takes snapshot of the data in firebase and checks if its not null
        newUserRefer.once().then((DataSnapshot snapshot){
          if(snapshot.value != null){
            // Navigator.pushNamedAndRemoveUntil(scaffoldKey.currentContext, MainPage.id, (route) => false);
            Navigator.of(context).pushNamedAndRemoveUntil('Content', (Route<dynamic> route) => false);

          }
        });

        //Data format
        Map userMap = {
          'Email': email.text,
        };
        newUserRefer.set(userMap);

      }

    } on FirebaseAuthException catch (e) {
      Navigator.pop(scaffoldKey.currentContext);
      if (e.code == 'user-not-found') {
        showSnackBar('User not found: Try Again', scaffoldKey.currentContext);
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnackBar('Try again: Wrong Password', scaffoldKey.currentContext);
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children:<Widget>[
              SizedBox(height: 60.0,),
              SizedBox(
                width: 200,
                height: 190,
                child: Image(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Logo/custom_Logo_crop.png',),
                ),
              ),
              SizedBox(height: 10,),
              Text('Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28, fontFamily: 'Bold'),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  children: [
                    TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                              color: Colors.orange,
                              fontSize: 10
                          ),
                        icon: Icon(Icons.email_outlined)
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: password,
                      obscureText: obscureStatus,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        suffixIcon: IconButton(
                          color: obscureStatus ? Colors.grey : Colors.blue,
                          icon: Icon(Icons.remove_red_eye_outlined),
                          onPressed:(){
                            setState(() {
                              FocusScope.of(context).unfocus();
                              obscureStatus ? obscureStatus=false : obscureStatus=true;

                            });
                          },
                        ),
                        icon: Icon(Icons.vpn_key_rounded),
                      ),
                      style: TextStyle(fontSize: 14),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 30,),

              //Login Button
              ElevatedButton(
                onPressed: ()async{
                  //Checking Connectivity
                  var connectivityResult = await (Connectivity().checkConnectivity());
                  if (connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi) {
                    showSnackBar('Check Internet Connectivity', context);
                    return;
                  }
                  //TODO: Provide valid email
                  if(!isEmail(email.text)){
                    print(email.text);
                    showSnackBar('Please Provide a valid Email',scaffoldKey.currentContext);
                    return;
                  }

                  if(password.text.length <4){
                    showSnackBar('Please Provide a valid password',context);
                    return;
                  }

                  // Navigator.pushNamed(context, "Content");
                  //TODO: Password
                  loginUser();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  primary: Colors.green,//background color
                  onPrimary: Colors.white,//text color
                  textStyle: TextStyle(fontFamily: 'Bold', fontSize: 17)
                ),
                child: Container(
                  height: 50,
                  width: 100,
                  child: Center(child: Text('LOGIN')),
                ),
              ),
              SizedBox(height: 20,),
              //Redirects to Register Page
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));

                },
                child: Text('Don\'t have an account? Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
