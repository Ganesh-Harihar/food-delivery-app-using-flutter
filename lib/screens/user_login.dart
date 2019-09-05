import 'package:flutter/material.dart';
import '../providers/user_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../widgets/text_form_field.dart';
import 'dart:async';
import 'dart:io';
import '../screens/home_screen.dart';

class UserLogin extends StatefulWidget {
  static const routeName = '/user_login';
  String textFieldValue;
  UserLogin();
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formKey = GlobalKey<FormState>();
  bool isUser = true;
  File _image;
  String textFieldValue;
  _UserLoginState();

  Future getImage() async {
    print('in');
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final userData = Provider.of<UserProvider>(context);
    var a;
    return Scaffold(
      backgroundColor: Color(0xFFE1164B),
      body: Container(
        margin: EdgeInsets.only(
            top: isUser ? deviceSize.height * .24 : 0,
            left: deviceSize.width * .14),
        width: deviceSize.width * .7,
        height: isUser ? deviceSize.height * .6 : deviceSize.height,
        child: SingleChildScrollView(
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 20),
                    ),
                    if (!isUser)
                      InkWell(
                          onTap: getImage,
                          child: Container(
                              child: _image == null
                                  ? Center(
                                      child: Icon(Icons.add_a_photo),
                                    )
                                  : Container(),
                              width: deviceSize.width * .35,
                              height: deviceSize.height * .2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFE1164B),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: _image == null
                                          ? AssetImage(
                                              '',
                                            )
                                          : FileImage(_image))))),
                    if (!isUser) DesignedTextField('Enter Full Name:'),
                    if (!isUser) DesignedTextField('Contact:'),
                    DesignedTextField('Email:'),
                    DesignedTextField('Password:'),
                    if (!isUser) DesignedTextField('Confirm Password:'),
                    RaisedButton(
                      color: Color(0xFFE1164B),
                      child: isUser
                          ? Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )
                          : Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                      onPressed: () {
                        try {
                          isUser
                              ? userData
                                  .login()
                                  .then((res) => {
                                        if (res.statusCode < 400)
                                          {
                                            print(res),
                                            Navigator.of(context)
                                                .pushNamed(Home.routeName)
                                          }
                                        else
                                          {throw new Error()}
                                      })
                                  .catchError((onError) =>
                                      print('error:' + onError.toString()))
                              : userData
                                  .register(_image)
                                  .then((res) => {
                                        if (res.statusCode < 400)
                                          {
                                            print(res),
                                            Navigator.of(context)
                                                .pushNamed(Home.routeName)
                                          }
                                        else
                                          {throw new Error()}
                                      })
                                  .catchError(
                                      (onError) => print(onError.toString()));
                        } catch (err) {
                          print(err);
                        }
                      },
                    ),
                    if (isUser)
                      FlatButton(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xFFE1164B),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            isUser = false;
                          });
                        },
                      ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
