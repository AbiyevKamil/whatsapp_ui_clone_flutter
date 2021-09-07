class CallsModel {
  final String userPhotoUrl;
  final String username;
  final String timestamp;
  final bool callFromMe;
  final String callType;

  CallsModel(
      {required this.callFromMe,
      required this.callType,
      required this.timestamp,
      required this.userPhotoUrl,
      required this.username});
}
