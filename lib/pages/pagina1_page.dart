import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/bloc/usuario/usuario_bloc.dart';
import 'package:flutter_estados/models/usuario.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Pagina 1'),
        actions: [
          new IconButton(
            icon: new Icon( Icons.delete ),
            onPressed: () {
              BlocProvider.of<UsuarioBloc>(context).add(new BorrarUsuario());

            }
          )
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (context, state) {
          if( state.existeUsuario ) {
            return new InformacionUsuario(state.usuario);
          } else {
            return new Center(
              child: new Text('No hay usuario Selecionado'),
            );
          }
        },
      ),
     floatingActionButton: new FloatingActionButton(
       child: new Icon(Icons.accessibility_new_outlined),
       onPressed: () => Navigator.pushNamed(context, 'pagina2')
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  InformacionUsuario( this.usuario);
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
            title: new Text('Nombre: ${ usuario.nombre }'),
          ),
           new ListTile(
            title: new Text('Edad: ${ usuario.edad }'),
          ),
          new Text('Profesiones', style: new TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          new Divider(),
          ...usuario.profesiones.map(
            ( profesion ) => new ListTile(
              title: new Text(profesion) ,)
          ).toList()
        ],
      )
    );
  }
}