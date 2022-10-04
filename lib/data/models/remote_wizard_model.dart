import '../../domain/entities/entities.dart';
import '../http/http.dart';

class RemoteWizardModel {
  final String name;
  final String house;
  final String image;
  RemoteWizardModel(this.name, this.house, this.image);

  factory RemoteWizardModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(["name", "house", "image"])) {
      throw HttpError.invalidData;
    }
    {
      return RemoteWizardModel(json["name"] as String, json["house"] as String,
          json["image"] as String);
    }
  }

  WizardEntity toEntity() => WizardEntity(name, house, image);

  Map toJson() => {
        "name": name,
        "house": house,
        "image": image,
      };
}
