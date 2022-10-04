import 'translations.dart';

class PtBr implements Translations {
  String get msgEmailInUse => 'O email já está em uso.';
  String get msgInvalidCredentials => 'Credenciais inválidas.';
  String get msgInvalidField => 'Campo inválido';
  String get msgRequiredField => 'Campo obrigatório';
  String get msgUnexpectedError =>
      'Algo de errado aconteceu. Tente novamente em breve.';

  String get addAccount => 'Criar conta';
  String get emailField => 'Email';
  String get login => 'Avançar';
  String get name => 'Nome';
  String get password => 'Senha';
  String get confirmPassword => 'Confirmar senha';
  String get signUp => 'Finalizar cadastro';
  String get register => 'Cadastro';

  // LABELS
  String get phone => 'Celular';
  String get goBack => 'Voltar';
  String get resendCode => 'Reenviar código';
  String get whatsapp => 'Fale com a gente pelo whatsapp';

  String get cep => 'CEP';
  String get address => 'Endereço*';
  String get number => 'Número*';
  String get complement => 'Complemento';
  String get neighborhood => 'Bairro*';
  String get city => 'Cidade*';
  String get state => 'Estado*';
  String get reference => 'Ponto de referência*';
  String get checkAvailable => 'Verificar disponibilidade';
  String get tryAnother => 'Tentar outro endereço';
  String get notifyLater => 'Me avise quando estiver disponível';
  String get meetLater => 'Deixar para depois';
  String get signUpDog => 'Cadastrar Dog';
}
