import 'package:flutter/material.dart';
import 'package:history_app/MainScreen/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:history_app/MainScreen/TransitionScreen.dart';
import 'package:connectivity/connectivity.dart';
import 'package:history_app/MainScreen/mainPage.dart';
import 'package:history_app/Utils/UserSimplePreferences.dart';
import 'package:string_validator/string_validator.dart';
import 'Content.dart';


class RegistrationPage extends StatefulWidget {

  static const String id ='Register';
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  //Testing Mode
  // var fullName = TextEditingController(text:'syed muzammil ali');
  // var contact = TextEditingController(text: "03331373192");
  // var email = TextEditingController(text: "syed@gmail.com");
  // var password = TextEditingController(text:"abc123");

  //Production Mode
  // var fullName = TextEditingController();
  // var contact = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();


  bool obscureStatus = true;

  void showSnackBar(String title, BuildContext context){
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 850),
        content: Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 15),)
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void initState() {
    // TODO: implement initState
    super.initState();

    email.text = UserSimplePreferences.getUserEmail() ?? "";
    print(email.text);
  }


  void registerUser()async{

    showDialog(
        context: scaffoldKey.currentContext,
        builder: (BuildContext context) => TransitionScreen(message: 'Registration in process',)
    );


    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text
      );

      //checks if the user's registration is successful
      if(userCredential != null){
        showSnackBar('Registration Successful', scaffoldKey.currentContext);
        print('Registration Successful');
        await UserSimplePreferences.setEmail(userCredential.user.email);

        //Saving User Data
        DatabaseReference newUserRefer = FirebaseDatabase.instance.reference().child('user/${userCredential.user.uid}');

        //Data format
        Map userMap = {
          // 'Name': fullName.text,
          'Email': email.text,
          // 'Contact': contact.text,
        };

        newUserRefer.set(userMap);

        Navigator.pushNamedAndRemoveUntil(scaffoldKey.currentContext, Content.id, (route) => false);
      }

    } on FirebaseAuthException catch (e) {
      Navigator.pop(scaffoldKey.currentContext);
      if (e.code == 'weak-password') {
        showSnackBar('Weak Password', scaffoldKey.currentContext);
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar('Email Already in use', scaffoldKey.currentContext);
        print('The account already exists for that email.');
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
              //Logo
              SizedBox(
                width: 200,
                height: 190,
                child: Image(
                  alignment: Alignment.center,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Logo/custom_Logo_crop.png',),
                ),
              ),
              SizedBox(height: 20,),
              //Title
              Text('Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28, fontFamily: 'Bold'),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    //Name
                    // TextField(
                    //   controller: fullName,
                    //   keyboardType: TextInputType.name,
                    //   decoration: InputDecoration(
                    //       labelText: 'Full Name',
                    //       labelStyle: TextStyle(
                    //         fontSize: 14.0,
                    //       ),
                    //       hintStyle: TextStyle(
                    //           color: Colors.grey,
                    //           fontSize: 10
                    //       ),
                    //     icon: Icon(Icons.person),
                    //   ),
                    //   style: TextStyle(fontSize: 14),
                    // ),
                    SizedBox(height: 10,),
                    //Email Address
                    TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10
                          ),
                        icon: Icon(Icons.email_outlined),

                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20,),
                    //Contact Number
                    // TextField(
                    //   controller: contact,
                    //   keyboardType: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //       labelText: 'Contact Number',
                    //       labelStyle: TextStyle(
                    //         fontSize: 14.0,
                    //       ),
                    //       hintStyle: TextStyle(
                    //           color: Colors.grey,
                    //           fontSize: 10
                    //       ),
                    //     icon: Icon(Icons.phone),
                    //
                    //   ),
                    //   style: TextStyle(fontSize: 14),
                    // ),
                    SizedBox(height: 10,),
                    //Password
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

              SizedBox(height: 35,),
              //Register Button
              ElevatedButton(
                onPressed: ()async{

                  //Checking Connectivity
                  var connectivityResult = await (Connectivity().checkConnectivity());
                  if (connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi) {
                    showSnackBar('Check Internet Connectivity', context);
                    return;
                  }

                  if(!isEmail(email.text)){
                    print(email.text);
                    showSnackBar('Please Provide a valid Email',scaffoldKey.currentContext);
                    return;
                  }

                  if(password.text.length < 3){
                    showSnackBar('Provide a complex Password', scaffoldKey.currentContext);
                    return;
                  }

                  // if(fullName.text.length < 3){
                  //   showSnackBar('Please Provide a valid name',context);
                  //   return;
                  // }

                  registerUser();
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                    primary: Colors.green,//background color
                    onPrimary: Colors.white,//text color
                    textStyle: TextStyle(fontFamily: 'Bold', fontSize: 17,letterSpacing: 1)
                ),
                child: Container(
                  height: 50,
                  width: 100,
                  child: Center(child: Text('REGISTER')),
                ),
              ),

              SizedBox(height: 20,),

              //Redirects to SignInPage
              TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, LoginPage.id, (route) => false);
                },
                child: Text('Already have an Account? Login',
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