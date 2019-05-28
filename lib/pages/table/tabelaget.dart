import 'package:flutter_web/material.dart';
import 'package:brainnco_dev/pages/Homepage.dart';

class Tabela extends StatefulWidget {
  Tabela({Key key}) : super(key: key);

  _TabelaState createState() => _TabelaState();
}

class _TabelaState extends State<Tabela> {

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Theme.of(context).primaryColor),
              ),
              margin: EdgeInsets.only(top: 10, left: 70, right: 70.0, bottom: 10),
              child: Table(
                border: TableBorder.all(width: 1.0, color: Theme.of(context).primaryColor),
                children: [
                  TableRow(
                    children: [
                    Text("Repository"),
                    Text("Description"),
                    Text("Language"),
                    Text("Tags"),
                    Text("Edit"),
                  ]
                  ),
                  TableRow(children: [
                    Text("$repository"),
                    Text("$description"),
                    Text("$language"),
                    Text("tag"),
                    Text("Edit"),
                  ]),
                  TableRow(children: [
                    Text("$repository"),
                    Text("$description"),
                    Text("$language"),
                    Text("tag"),
                    Text("Edit"),
                  ]),
                  TableRow(children: [
                    Text("$repository"),
                    Text("$description"),
                    Text("$language"),
                    Text("tag"),
                    Text("Edit"),
                  ]),
                  TableRow(children: [
                    Text("$repository"),
                    Text("$description"),
                    Text("$language"),
                    Text("tag"),
                    Text("Edit"),
                  ]),
                ],
              ),
            );
  }
}