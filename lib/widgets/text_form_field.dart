import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesignedTextField extends StatefulWidget {
  String lable;
  static String fullName;
  static String contact;
  static String email;
  static String password;
  static String conPassword;

  DesignedTextField(this.lable);

  @override
  _DesignedTextFieldState createState() => _DesignedTextFieldState();
}

class _DesignedTextFieldState extends State<DesignedTextField> {
  bool error = false;
  String msg = null;

  Icon icon() {
    switch (widget.lable) {
      case 'Enter Full Name:':
        return Icon(
          Icons.person,
          color: Color(0xFFE1164B),
        );
        break;
      case 'Contact:':
        return Icon(
          Icons.contact_phone,
          color: Color(0xFFE1164B),
        );
        break;
      case 'Email:':
        return Icon(
          Icons.email,
          color: Color(0xFFE1164B),
        );
        break;
      case 'Password:':
        return Icon(
          Icons.fingerprint,
          color: Color(0xFFE1164B),
        );
        break;
      case 'Confirm Password:':
        return Icon(
          Icons.fingerprint,
          color: Color(0xFFE1164B),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            labelText: widget.lable,
            errorText: error ? msg : null,
            prefixIcon: icon(),
          ),
          keyboardType: widget.lable == 'Contact:'
              ? TextInputType.number
              : TextInputType.text,
          obscureText:
              widget.lable == 'Password:' || widget.lable == 'Confirm Password:'
                  ? true
                  : false,
          onChanged: (value) {
            if (widget.lable == 'Enter Full Name:') {
              DesignedTextField.fullName = value;
              if (value.length < 8) {
                setState(() {
                  error = true;
                  msg = 'Enter Full Name';
                });
              } else {
                setState(() {
                  DesignedTextField.fullName = value;
                  error = false;
                  msg = null;
                });
              }
            }

            if (widget.lable == 'Contact:') {
              if (value.length < 10 || value.length > 10) {
                DesignedTextField.contact = value;
                setState(() {
                  error = true;
                  msg = 'Enter correct mobile no';
                });
              } else {
                setState(() {
                  DesignedTextField.contact = value;
                  error = false;
                  msg = null;
                });
              }
            }

            if (widget.lable == 'Email:') {
              DesignedTextField.email = value;
              if (!value.contains('@')) {
                setState(() {
                  error = true;
                  msg = 'Enter correct email';
                });
              } else {
                setState(() {
                  DesignedTextField.email = value;
                  error = false;
                  msg = null;
                });
              }
            }

            if (widget.lable == 'Password:') {
              DesignedTextField.password = value;
              if (value.length < 5) {
                setState(() {
                  error = true;
                  msg = 'Enter miminum 5 letters password';
                });
              } else {
                setState(() {
                  DesignedTextField.password = value;
                  error = false;
                  msg = null;
                });
              }
            }

            if (widget.lable == 'Confirm Password:') {
              if (DesignedTextField.password != value) {
                DesignedTextField.conPassword = value;
                setState(() {
                  error = true;
                  msg = 'Enter same password';
                });
              } else {
                setState(() {
                  DesignedTextField.conPassword = value;
                  error = false;
                  msg = null;
                });
              }
            }
          },
        ));
  }
}
