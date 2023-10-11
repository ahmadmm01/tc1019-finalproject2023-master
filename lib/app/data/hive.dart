import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Kelas `HiveStore` adalah implementasi dari `TokenStore` yang menggunakan Hive sebagai penyimpanan lokal untuk token otentikasi.
class HiveStore extends TokenStore {
  final Box _box;

  /// Konstruktor internal untuk membuat instans `HiveStore`.
  HiveStore._internal(this._box);

  /// Kunci untuk menyimpan token otentikasi dalam penyimpanan Hive.
  static const keyToken = "auth_token";

  /// Metode `create` digunakan untuk membuat instans `HiveStore` yang menggunakan penyimpanan Hive.
  /// Ini membuka atau membuat kotak Hive dengan nama "auth_store".
  static Future<HiveStore> create() async {
    var box = await Hive.openBox("auth_store",
        compactionStrategy: (entries, deletedEntries) => deletedEntries > 50);
    return HiveStore._internal(box);
  }

  @override
  void delete() {
    _box.delete(keyToken);
  }

  @override
  Token? read() {
    return _box.get(keyToken);
  }

  @override
  void write(Token? token) {
    _box.put(keyToken, token);
  }
}
