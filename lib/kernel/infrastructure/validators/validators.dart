import 'package:ruta/ruta.dart';

class Validators {
  const Validators._();

  static Validator<String> email({String message = 'Invalid email format'}) {
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return (String value) {
      if (regex.hasMatch(value)) {
        return ValidationResult.valid();
      }
      return ValidationResult.invalid([message]);
    };
  }

  static Validator<String> password({String? message}) {
    final regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return (String value) {
      if (regex.hasMatch(value)) {
        return ValidationResult.valid();
      }
      return ValidationResult.invalid([
        message ??
            'Password must contain at least 8 characters, including letters and numbers',
      ]);
    };
  }

  static Validator<String> minLength(int length, {String? message}) {
    return (String value) {
      if (value.length >= length) {
        return ValidationResult.valid();
      }
      return ValidationResult.invalid([
        message ?? 'Must be at least $length characters',
      ]);
    };
  }

  static Validator<String> maxLength(int length, {String? message}) {
    return (String value) {
      if (value.length <= length) {
        return ValidationResult.valid();
      }
      return ValidationResult.invalid([
        message ?? 'Must be at least $length characters',
      ]);
    };
  }

  static Validator<num> range(num min, num max, {String? message}) {
    return (num value) {
      if (value >= min && value <= max) {
        return ValidationResult.valid();
      }
      return ValidationResult.invalid([
        message ?? 'Value must be between $min and $max',
      ]);
    };
  }

  static Validator<String> lengthRange(int min, int max, {String? message}) {
    return combine([minLength(min), maxLength(max)]);
  }

  static Validator<T> combine<T>(List<Validator<T>> validators) {
    return (T value) {
      final errors = <String>[];

      for (final validator in validators) {
        final result = validator(value);
        if (!result.isValid) errors.addAll(result.errors);
      }

      return errors.isEmpty
          ? ValidationResult.valid()
          : ValidationResult.invalid(errors);
    };
  }
}
