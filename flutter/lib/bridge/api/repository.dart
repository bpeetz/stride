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
import '../task/annotation.dart';
import 'error.dart';
import 'filter.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:uuid/uuid.dart';

// These functions are ignored because they are not marked as `pub`: `append`, `clear`, `do_merge`, `fast_forward`, `filter`, `get_by_id`, `get_index`, `load`, `new`, `rebase`, `remove_task2`, `remove`, `remove`, `resolve_conflicts`, `save`, `storage_mut`, `unload`, `update2`, `update`, `with_authentication`
// These types are ignored because they are not used by any `pub` functions: `LogIter`, `Storage`, `TaskDiff`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`
// These functions are ignored (category: IgnoreBecauseExplicitAttribute): `pull`
// These functions are ignored (category: IgnoreBecauseOwnerTyShouldIgnore): `next`

String oidToString({required Oid oid}) =>
    RustLib.instance.api.crateApiRepositoryOidToString(oid: oid);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<CommitItem>>
abstract class CommitItem implements RustOpaqueInterface {
  String get author;

  String get email;

  String get message;

  Oid get oid;

  Oid? get parent;

  set author(String author);

  set email(String email);

  set message(String message);

  set oid(Oid oid);

  set parent(Oid? parent);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Oid>>
abstract class Oid implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<TaskStorage>>
abstract class TaskStorage implements RustOpaqueInterface {
  Future<void> add({required Task task});

  Future<bool> addAndCommit({required String message});

  Future<bool> changeCategory({required Task task, required TaskStatus status});

  Future<void> checkout();

  Future<void> clear();

  Future<void> cloneRepository();

  Future<void> forceHardReset({required Oid commit});

  Future<void> initRepotitory();

  Future<List<CommitItem>?> log({Oid? oid, int? n});

  factory TaskStorage({required String path}) =>
      RustLib.instance.api.crateApiRepositoryTaskStorageNew(path: path);

  Future<void> push();

  Future<bool> removeTask({required Task task});

  Future<void> sync_();

  Future<Task?> taskByUuid({required UuidValue uuid});

  Future<List<Task>> tasks();

  Future<List<Task>> tasksWithFilter({required Filter filter});

  Future<void> unload();

  Future<bool> update({required Task task});
}
