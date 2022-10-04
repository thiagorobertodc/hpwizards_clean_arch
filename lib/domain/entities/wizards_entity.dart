import 'package:equatable/equatable.dart';

class WizardEntity extends Equatable {
  final String name;
  final String house;
  final String image;

  @override
  List get props => [name, house, image];
  const WizardEntity(this.name, this.house, this.image);
}
