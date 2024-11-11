import '../models/user.dart';

class AuthService {
  // Instancia única de AuthService (Singleton)
  static final AuthService _instance = AuthService._internal();

  // Constructor privado
  AuthService._internal();

  // Método factory para devolver la instancia única
  factory AuthService() {
    return _instance;
  }

  // Lista para almacenar usuarios registrados
  final List<User> _registeredUsers = [];

  // Método para registrar un usuario
  String? register(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      return "Correo y contraseña no pueden estar vacíos";
    }

    bool userExists = _registeredUsers.any((user) => user.email == email);
    if (userExists) {
      return "El usuario ya está registrado";
    } else {
      _registeredUsers.add(User(email: email, password: password));
      return null; // Registro exitoso
    }
  }

  // Método para iniciar sesión
  bool login(String email, String password) {
    return _registeredUsers.any((user) =>
        user.email == email && user.password == password);
  }
}
