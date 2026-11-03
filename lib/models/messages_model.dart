class MessagesModel {
  final String id;
  final String message;
  final String senderid;
  final String sendername;
  final String ceratedat;

  const MessagesModel({
    required this.id,
    required this.message,
    required this.senderid,
    required this.sendername,
    required this.ceratedat,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'senderid': senderid,
      'sendername': sendername,
      'ceratedat': ceratedat,
    };
  }

  factory MessagesModel.fromMap(Map<String, dynamic> map) {
    return MessagesModel(
      id: map["id"] as String? ?? "",
      message: map["message"] as String? ?? "",
      senderid: map["senderid"] as String? ?? "",
      sendername: map["sendername"] as String? ?? "",
      ceratedat: map["ceratedat"] as String? ?? "",
    );
  }
}
