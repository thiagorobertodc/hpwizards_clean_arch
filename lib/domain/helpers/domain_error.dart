enum DomainError { unexpected, invalidCredentials, emailInUse, accessDenied }

extension DomainErrorExtension on DomainError {
  String get description {
    switch (this) {
      default:
        return 'Could not fetch wizards now :(';
    }
  }
}
