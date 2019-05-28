import 'package:brainnco_dev/pages/table/tabelaget.dart';
import 'package:flutter_web/material.dart';

class Stars extends StatelessWidget {
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
        actions: <Widget>[
          IconButton(
            tooltip: "Home",
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 70.0),
                    width: 350,
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search by tag',
                        hintStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Theme.of(context).primaryColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Tabela(),
          ],
        ),
      ),
    );
  }
}
