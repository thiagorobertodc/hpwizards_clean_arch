import '../../../data/usecases/usecases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

GetWizards makeRemoteGetWizards() {
  return RemoteGetWizards(
    httpClient: makeAuthorizeHttpClientDecorator(),
    url: makeApiUrl('characters'),
  );
}
