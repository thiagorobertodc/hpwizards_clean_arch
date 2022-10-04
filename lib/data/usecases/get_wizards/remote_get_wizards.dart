import '/../domain/entities/entities.dart';
import '/../domain/helpers/helpers.dart';
import '/../domain/usecases/usecases.dart';
import '../../http/http.dart';
import '../../models/models.dart';

class RemoteGetWizards implements GetWizards {
  final HttpClient httpClient;
  final String url;

  RemoteGetWizards({required this.httpClient, required this.url});
  Future<List<WizardEntity?>?> get() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      final wizards = [].cast<WizardEntity>();
      ;
      for (int i = 0; i < (httpResponse as List).length; i++) {
        wizards
            .add(RemoteWizardModel.fromJson(httpResponse[i] as Map).toEntity());
      }
      return wizards;
    } on HttpError {
      throw DomainError.unexpected;
    }
  }
}
