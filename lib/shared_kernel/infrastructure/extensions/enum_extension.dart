extension EnumFromString<T extends Enum> on Iterable<T> {
  T fromName(String name) {
    return firstWhere(
      (e) => e.name == name,
      orElse: () =>
          throw ArgumentError('No enum value with name "$name" found in $this'),
    );
  }
}
