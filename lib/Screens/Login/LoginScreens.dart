import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/Login/LoginComponent.dart';
import 'package:toko_gitar_flutter/size_config.dart';

class LoginScreen extends StatelessWidget{

  static String routeName="/sing_in";

  @override
  Widget buid(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}