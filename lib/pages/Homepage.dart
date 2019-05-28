import 'package:flutter_web/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

  String url = 'https://api.github.com/users/';
  Map<String, dynamic> repository;
  Map<String, dynamic> description;
  Map<String, dynamic> language;
  Map<String, dynamic> tags = { };
  Map<String, dynamic> header = {'Accept': 'application/vnd.github.v3+json'};

class _HomePageState extends State<HomePage> {
    //GET VIA API 
  getData(String username) async {
    String profile = url + username + '/repos';
    var res = await http.get(profile, headers: header);
    var resBody = json.decode(res.body);
    repository = resBody['full_name'];
    description = resBody['description'];
    language = resBody['language'];
    print(resBody);
    setState(() {      
      print("Success");
      print("profile");
    });
  }
  //controladores
  final TextEditingController user = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "githubstars",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text("https://github.com/"),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      controller: user,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: RaisedButton(
                      child: Text("Get Repositories",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textColor: Colors.black,
                      color: Colors.white,
                      onPressed: () {
                        getData(user.text);
                        Navigator.pushNamed(context, '/splash');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
