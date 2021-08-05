import 'package:alura_pt_02/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'dao/contacts_dao.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bytebannk.db');
  return openDatabase(path, onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
    //onDowngrade: onDatabaseDowngradeDelete,
  );

  // return getDatabasesPath().then((dbPath) {
  //   final String path = join(dbPath, 'bytebank.db');

  // });
}


