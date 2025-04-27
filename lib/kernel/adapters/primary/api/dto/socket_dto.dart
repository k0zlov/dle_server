class SocketDto {
  const SocketDto({required this.id, required this.data});

  final String id;
  final dynamic data;

  Map<String, dynamic> toJson() {
    return {'id': id, 'data': data};
  }
}
