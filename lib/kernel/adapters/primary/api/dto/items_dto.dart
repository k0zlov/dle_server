class ItemsDto<T> {
  const ItemsDto(this.items);

  final List<T> items;

  Map<String, dynamic> toJson() {
    return {'items': items};
  }
}
