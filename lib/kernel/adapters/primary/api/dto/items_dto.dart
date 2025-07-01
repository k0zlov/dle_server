class ItemsDto<T> {
  const ItemsDto(this.items, {this.itemsName = 'items'});

  final String itemsName;
  final Iterable<T> items;

  Map<String, dynamic> toJson() {
    return {itemsName: items.toList()};
  }
}
