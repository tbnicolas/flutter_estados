import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Pagina 1'),
      ),
      body: new InformacionUsuario(),
     
     floatingActionButton: new FloatingActionButton(
       child: new Icon(Icons.accessibility_new_outlined),
       onPressed: () => Navigator.pushNamed(context, 'pagina2')
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(20.0),
      height: double.infinity,
      width: double.infinity,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text('General', style: new TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          new Divider(),
          new ListTile(
            title: new Text('Nombre: '),
          ),
           new ListTile(
            title: new Text('Edad: '),
          ),
          new Text('Profesiones', style: new TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          new Divider(),
          new ListTile(
            title: new Text('Profesion1: '),
          ),
           new ListTile(
            title: new Text('Profesion1: '),
          ),
          new ListTile(
            title: new Text('Profesion1: '),
          ),
        ],
      )
    );
  }
}