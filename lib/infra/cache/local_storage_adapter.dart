import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../data/cache/cache.dart';

class LocalStorageAdapter
    implements
        SaveSecureCacheStorage,
        FetchSecureCacheStorage,
        DeleteSecureCacheStorage {
  final FlutterSecureStorage? secureStorage;
  LocalStorageAdapter({this.secureStorage});
  Future<void> saveSecure({required String key, required String? value}) async {
    await secureStorage!.write(key: key, value: value);
  }

  Future<String?> fetchSecure(String key) async {
    return secureStorage!.read(key: key);
  }

  Future<void> deleteSecure({required String key}) async {
    return secureStorage!.delete(key: key);
  }
}
