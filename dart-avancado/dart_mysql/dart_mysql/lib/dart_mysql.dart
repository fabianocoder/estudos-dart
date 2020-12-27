import 'package:mysql1/mysql1.dart';
import 'dart:async';

void run() {
  inserirAluno();
}

Future<void> inserirAluno () async {
  var conn = await getConnection();
  var result =await conn.query(
      'insert into users (name, email, age) values (?, ?, ?)',
      ['Bob', 'bob@bob.com', 25]);
  print('Inserted row id=${result.insertId}');
  conn.close();
}

Future<MySqlConnection> getConnection() async {
  var settings = ConnectionSettings(
    host: 'localhost', 
    port: 3306,
    user: 'fabiano',
    password: 'password',
    db: 'curso_dart_flutter'
  );
  return await MySqlConnection.connect(settings);
}