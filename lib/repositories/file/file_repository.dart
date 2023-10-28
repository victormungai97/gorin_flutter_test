part of 'repository.dart';

/// Abstract base class for file functionality

abstract class FileRepository {
  Future<RepositoryResponse<XFile>> pickFile(
    BuildContext context,
    FileType fileType, [
    FileSource source = FileSource.GALLERY,
  ]);

  Future<RepositoryResponse<T>> uploadFile<T>(
    XFile? file, [
    String destination = 'firebase_storage',
  ]);
}
