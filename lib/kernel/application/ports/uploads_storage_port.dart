abstract interface class UploadsStoragePort {
  /// Saves an uploaded file with the specified id.
  ///
  /// - [id]: A unique identifier for the upload.
  /// - [mimeType]: The MIME type of the file (e.g., "image/jpeg").
  /// - [bytes]: The file data as a byte array.
  Future<void> save({
    required String id,
    required String mimeType,
    required List<int> bytes,
  });

  /// Deletes an uploaded file identified by the unique id and mimeType.
  ///
  /// - [id]: The unique identifier for the upload to be deleted.
  /// - [mimeType]: The MIME type of the file (e.g., "image/jpeg").
  Future<void> delete({required String id, required String mimeType});

  /// Finds an uploaded file by its id and mimeType, returning its bytes.
  ///
  /// - [id]: The unique identifier for the upload.
  /// - [mimeType]: The MIME type of the file (e.g., "image/jpeg").
  /// Returns the file bytes if found, or null if not found.
  Future<List<int>?> find({required String id, required String mimeType});
}
