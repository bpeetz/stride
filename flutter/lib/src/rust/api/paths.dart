// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

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
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `application_cache_path`, `application_document_path`, `application_log_path`, `application_support_path`
// These types are ignored because they are not used by any `pub` functions: `APPLICATION_PATHS_INSTANCE`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `deref`, `initialize`

class ApplicationPaths {
  final String supportPath;
  final String documentPath;
  final String cachePath;
  final String logPath;

  const ApplicationPaths({
    required this.supportPath,
    required this.documentPath,
    required this.cachePath,
    required this.logPath,
  });

  static Future<ApplicationPaths> default_() =>
      RustLib.instance.api.crateApiPathsApplicationPathsDefault();

  /// # Panics
  ///
  /// If it cannot create the the application paths.
  static Future<void> init({required ApplicationPaths paths}) =>
      RustLib.instance.api.crateApiPathsApplicationPathsInit(paths: paths);

  @override
  int get hashCode =>
      supportPath.hashCode ^
      documentPath.hashCode ^
      cachePath.hashCode ^
      logPath.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApplicationPaths &&
          runtimeType == other.runtimeType &&
          supportPath == other.supportPath &&
          documentPath == other.documentPath &&
          cachePath == other.cachePath &&
          logPath == other.logPath;
}
