abstract class AuthStates {}

class AuthInitState extends AuthStates {}

class AuthGetDataLoadingState extends AuthStates {}

class AuthGetDataDoneState extends AuthStates {}

class AuthGetDataErrorState extends AuthStates {
  final error;

  AuthGetDataErrorState(this.error);
}

class GoToHomeScreen extends AuthStates{}
