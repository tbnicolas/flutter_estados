import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_estados/models/usuario.dart';

part 'usuario_state.dart';

part 'usuario_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(new UsuarioState());

  //Recibe un evento y cambia el estado
  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    print(event);
    if ( event is ActivarUsuario ) {
      yield state.copyWith(user: event.usuario);
    } else if ( event is CambiarEdad ) {
      yield state.copyWith(user: state.usuario.copyWith(edad: event.edad));
    } else if ( event is AgregarProfesion) {
      yield state.copyWith( user: state.usuario.copyWith(
        profesiones: [
          ...state.usuario.profesiones,
          event.profesion
        ]
      ));
    } else if ( event is LastValue ) {
      yield state.copyWith( user: state.usuario.copyWith() );
    } else if ( event is BorrarUsuario ) {
      yield state.estadoInicial();
    }
  }
}
