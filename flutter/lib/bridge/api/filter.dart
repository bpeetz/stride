// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: require_trailing_commas
// ignore_for_file: always_use_package_imports
// ignore_for_file: directives_ordering
// ignore_for_file: sort_unnamed_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_dynamic_calls
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: prefer_final_locals
// ignore_for_file: argument_type_not_assignable
// ignore_for_file: inference_failure_on_instance_creation
// ignore_for_file: prefer_single_quotes
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: noop_primitive_operations
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_is_empty
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../task.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:uuid/uuid.dart';
part 'filter.freezed.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `fmt`, `fmt`

@freezed
class Filter with _$Filter {
  const Filter._();
  const factory Filter({
    required UuidValue uuid,
    required String name,
    required Set<TaskStatus> status,
    required String search,
  }) = _Filter;
  static Future<Filter> default_() =>
      RustLib.instance.api.crateApiFilterFilterDefault();
}

@freezed
sealed class FilterSelection with _$FilterSelection {
  const FilterSelection._();

  const factory FilterSelection.predefined({
    required UuidValue uuid,
  }) = FilterSelection_Predefined;
  const factory FilterSelection.temporary({
    required Filter filter,
  }) = FilterSelection_Temporary;
}
