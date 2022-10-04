import '../../../domain/entities/entities.dart';

abstract class HomePresenter {
  Stream<List<WizardEntity?>?> get wizardsList;
  Future<void> getAllWizards();
}
