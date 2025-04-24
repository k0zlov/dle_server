class ItemsDto<T> {
  const ItemsDto(this.items);

  final Iterable<T> items;

  Map<String, dynamic> toJson() {
    return {'items': items.toList()};
  }
}
