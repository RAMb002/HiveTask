class Failure {
  String messageToDisplay;
  String? actualMessage;
  dynamic errorObject;

    Failure(
      {required this.messageToDisplay, this.actualMessage, this.errorObject});
}
