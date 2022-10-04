import '../../../data/http/http.dart';
import '../../decorators/decorators.dart';
import '../../factories/factories.dart';
import '../cache/cache.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
      decoratee: makeHttpAdapter(),
      fetchSecureCacheStorage: makeLocalStorageAdapter(),
      deleteSecureCacheStorage: makeLocalStorageAdapter(),
    );
