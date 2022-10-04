import '../../../utils/utils.dart';

enum UIError { addressNotFound, addressNotAvailable }

extension DomainErrorExtension on UIError {
  String get description {
    switch (this) {
      case UIError.addressNotFound:
        return R.strings.msgInvalidField;
      case UIError.addressNotAvailable:
        return R.strings.msgInvalidField;
      default:
        return R.strings.msgUnexpectedError;
    }
  }
}
