class Message{
  late int message_cod;
  late String message_content;

  Message(this.message_cod,this.message_content);

  factory Message.fromJson(Map<String,dynamic> json){
    return Message(
        json["message_cod"]as int,
        json["message_content"] as String
    );
  }
}