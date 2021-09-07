class ChatItemModel {
  final String username;
  final String? userProfilePhoto;
  final String lastMessage;
  final String timestamp;

  ChatItemModel(
      {required this.timestamp,
      required this.lastMessage,
      required this.userProfilePhoto,
      required this.username});
}
