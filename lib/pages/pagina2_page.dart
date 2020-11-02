import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_estados/models/usuario.dart';
import 'package:flutter_estados/bloc/usuario/usuario_bloc.dart';


class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // ignore: close_sinks
    final userBloc = BlocProvider.of<UsuarioBloc>(context);
    //userBloc.state.usuario.nombre;
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
              onPressed: () { 
                final newUser = new Usuario(
                  nombre: 'Nicolás Trujillo',
                  edad: 23,
                  profesiones: ['FullStack Developer']
                );
                userBloc.add( new ActivarUsuario(newUser) );
              }
            ),
            new MaterialButton(
              child: new Text('Cambiar Edad',),
              color: Colors.blue[50],
              onPressed: () { 
                userBloc.add( new  CambiarEdad(30) );
              }
            ),
            new MaterialButton(
              child: new Text('Añadir Profesion',),
              color: Colors.blue[50],
              onPressed: () { 
                userBloc.add( new AgregarProfesion(' Profesion 1'));
              }
            ),                        
          ],
        )
     ),
   );
  }
}