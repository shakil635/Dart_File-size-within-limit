/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_file_size_validator_base.dart';

// TODO: Export any libraries intended for clients of this package.

void validateFileSize(int file, {int limit = 5000}) {
  if (file >= limit) {
    throw FileSizeTooLargeException("Invalid file");
  }
}

class FileSizeTooLargeException implements Exception {
  FileSizeTooLargeException(this.message);
  String message;
}


/*
Practice Question 1: File Size Validator
Task:
Create a function named validateFileSize 
that takes an integer representing the size of a file in kilobytes.
If the file size exceeds a certain limit 
(e.g., 5000 kilobytes), throw a custom exception named
 FileSizeTooLargeException.
Include an optional parameter in the 
function to allow specifying 
different size limits.
 */