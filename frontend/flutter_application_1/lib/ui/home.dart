import 'package:flutter_application_1/ui/addproduk.dart';
import 'package:flutter_application_1/ui/login.dart';
import 'package:flutter_application_1/ui/profile.dart';
import 'package:flutter_application_1/ui/viewproduk.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatelessWidget {
  Future<void> Logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home - Penjualan Masker"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: 300,
                  height: 200,
                  child: Image.asset("assets/bannerMaskers.jpg"),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(20.0),
              //   child: Container(
              //     width: 100,
              //     height: 100,
              //     child: Image.asset("assets/icon.png"),
              //   ),
              // )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   padding: EdgeInsets.all(10.0),
              // ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Maskers"),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProdukView()),
                      )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Input Produk"),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProduk()),
                      )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Profile"),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyProfile()),
                      )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).errorColor,
                    textColor: Colors.white,
                    child: const Text("Logout"),
                    onPressed: () => {
                      Logout(),
                      //  Logout();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginview()),
                      )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
