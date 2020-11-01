import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Pagina 2'),
      ),      
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new MaterialButton(
              child: new Text('Establecer Usuario',),
              color: Colors.blue[50],
              onPressed: () { }
            ),
            new MaterialButton(
              child: new Text('Cambiar Edad',),
              color: Colors.blue[50],
              onPressed: () { }
            ),
            new MaterialButton(
              child: new Text('Añadir Profesion',),
              color: Colors.blue[50],
              onPressed: () { }
            ),                        
          ],
        )
     ),
   );
  }
}