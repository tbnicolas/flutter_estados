import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/bloc/usuario/usuario_bloc.dart';
import 'package:flutter_estados/pages/pagina1_page.dart';
import 'package:flutter_estados/pages/pagina2_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => new UsuarioBloc(),)
      ],
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1':(_) => new Pagina1Page(),
          'pagina2':(_) => new Pagina2Page(),
        },
      ),
    );
  }
}