class MessageDto {
  const MessageDto({required this.message});

  final String message;

  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
