export 'package:get/get.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:internship/src/helpers/index.dart';
export 'package:internship/src/utils/index.dart';
export 'package:internship/src/configs/index.dart';
export 'package:internship/src/styles/cores/index.dart';
export 'package:internship/src/widgets/index.dart';
export 'package:internship/src/models/index.dart';
export 'package:internship/src/objects/index.dart';
export 'package:internship/src/routes/index.dart';
export 'package:internship/src/core/base_controller.dart';
export 'package:internship/src/core/base_widget.dart';
export 'package:internship/src/core/base_model.dart';

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}