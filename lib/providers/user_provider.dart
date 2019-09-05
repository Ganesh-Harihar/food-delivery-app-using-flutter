import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '../widgets/text_form_field.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

class UserProvider with ChangeNotifier {
  List _users = [];
  String _url = "http://192.168.0.132:3000/users/";
  Dio _dio = new Dio();
  List get _userslist {
    return [..._users];
  }

  Future register(_image) async {
    String _fileName = basename(_image.path);
    if (DesignedTextField.conPassword == DesignedTextField.password) {
      FormData _user = new FormData.from({
        'fullName': DesignedTextField.fullName,
        'contact': DesignedTextField.contact,
        'email': DesignedTextField.email,
        'password': DesignedTextField.password,
        'profilePic': new UploadFileInfo(_image, _fileName)
      });
      try {
        Response response = await _dio.post(_url, data: _user);
        return response;
      } catch (err) {
        return err;
      }
      notifyListeners();
    } else {
      throw new Error();
    }
  }

  Future login() async {
    print('login');
    print(DesignedTextField.email);
    print(DesignedTextField.password);
    FormData _loginCredentials = new FormData.from({
      "email": DesignedTextField.email,
      "password": DesignedTextField.password
    });
    try {
      Response response = await _dio.post(_url + DesignedTextField.email,
          data: _loginCredentials);
      return response;
    } catch (err) {
      return err;
    }
    notifyListeners();
  }
}
