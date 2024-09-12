import 'package:flutter/material.dart';

class ValidatorText {
  static FormFieldValidator<String> validator(String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return errorMessage;
      } else {
        return null;
      }
    };
  }
}
