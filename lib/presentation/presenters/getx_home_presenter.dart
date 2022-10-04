import 'package:get/get.dart';
import 'package:hp_wizards/domain/usecases/usecases.dart';
import '../../domain/entities/entities.dart';
import '../../ui/pages/pages.dart';

class GetxHomePresenter extends GetxController implements HomePresenter {
  final GetWizards getWizards;
  final _wizardsList = Rx<List<WizardEntity?>?>(null);

  Stream<List<WizardEntity?>?> get wizardsList => _wizardsList.stream;
  GetxHomePresenter({required this.getWizards});

  @override
  Future<void> getAllWizards() async {
    print("buscando");
    final wizards = await getWizards.get();
    print(wizards);
    _wizardsList.subject.add(wizards);
  }
}
