import 'package:dart_file_size_validator/dart_file_size_validator.dart';
import 'package:test/test.dart';

void main() {
  group('File Size Validator Tests', () {
    test('File size within limit', () {
      expect(() => validateFileSize(3000), returnsNormally);
    });

    test('File size exceeds limit throws FileSizeTooLargeException', () {
      expect(() => validateFileSize(6000),
          throwsA(isA<FileSizeTooLargeException>()));
    });

    test('File size within custom limit', () {
      expect(() => validateFileSize(7000, limit: 8000), returnsNormally);
    });

    test('File size exceeds custom limit throws FileSizeTooLargeException', () {
      expect(() => validateFileSize(9000, limit: 8000),
          throwsA(isA<FileSizeTooLargeException>()));
    });
  });
}
