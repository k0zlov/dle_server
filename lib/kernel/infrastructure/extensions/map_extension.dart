extension MapExtension<T, B> on Map<T, B> {
  Map<T, B> copyWith(Map<T, B> map) {
    return {...this, ...map};
  }
}
