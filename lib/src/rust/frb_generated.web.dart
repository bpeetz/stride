// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/filter.dart';
import 'api/logging.dart';
import 'api/paths.dart';
import 'api/repository.dart';
import 'api/settings.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'git/known_hosts.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';
import 'package:uuid/uuid.dart';
import 'task.dart';
import 'task/annotation.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_TaskStoragePtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  TaskStorage
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          dynamic raw);

  @protected
  TaskStorage
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          dynamic raw);

  @protected
  TaskStorage
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          dynamic raw);

  @protected
  DateTime dco_decode_Chrono_Naive(dynamic raw);

  @protected
  Map<String, String> dco_decode_Map_String_String(dynamic raw);

  @protected
  TaskStorage
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          dynamic raw);

  @protected
  Set<TaskStatus> dco_decode_Set_task_status(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  UuidValue dco_decode_Uuid(dynamic raw);

  @protected
  Annotation dco_decode_annotation(dynamic raw);

  @protected
  ApplicationPaths dco_decode_application_paths(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  DateTime dco_decode_box_autoadd_Chrono_Naive(dynamic raw);

  @protected
  ApplicationPaths dco_decode_box_autoadd_application_paths(dynamic raw);

  @protected
  Filter dco_decode_box_autoadd_filter(dynamic raw);

  @protected
  FilterSelection dco_decode_box_autoadd_filter_selection(dynamic raw);

  @protected
  Settings dco_decode_box_autoadd_settings(dynamic raw);

  @protected
  Task dco_decode_box_autoadd_task(dynamic raw);

  @protected
  ConnectionError dco_decode_connection_error(dynamic raw);

  @protected
  Filter dco_decode_filter(dynamic raw);

  @protected
  FilterSelection dco_decode_filter_selection(dynamic raw);

  @protected
  Host dco_decode_host(dynamic raw);

  @protected
  HostKeyType dco_decode_host_key_type(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  PlatformInt64 dco_decode_i_64(dynamic raw);

  @protected
  KnownHosts dco_decode_known_hosts(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  List<UuidValue> dco_decode_list_Uuid(dynamic raw);

  @protected
  List<Annotation> dco_decode_list_annotation(dynamic raw);

  @protected
  List<Filter> dco_decode_list_filter(dynamic raw);

  @protected
  List<Host> dco_decode_list_host(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<(String, String)> dco_decode_list_record_string_string(dynamic raw);

  @protected
  List<SshKey> dco_decode_list_ssh_key(dynamic raw);

  @protected
  List<Task> dco_decode_list_task(dynamic raw);

  @protected
  List<TaskStatus> dco_decode_list_task_status(dynamic raw);

  @protected
  Logger dco_decode_logger(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  UuidValue? dco_decode_opt_Uuid(dynamic raw);

  @protected
  DateTime? dco_decode_opt_box_autoadd_Chrono_Naive(dynamic raw);

  @protected
  FilterSelection? dco_decode_opt_box_autoadd_filter_selection(dynamic raw);

  @protected
  Task? dco_decode_opt_box_autoadd_task(dynamic raw);

  @protected
  (String, String) dco_decode_record_string_string(dynamic raw);

  @protected
  Repository dco_decode_repository(dynamic raw);

  @protected
  Settings dco_decode_settings(dynamic raw);

  @protected
  SshKey dco_decode_ssh_key(dynamic raw);

  @protected
  Task dco_decode_task(dynamic raw);

  @protected
  TaskStatus dco_decode_task_status(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  TaskStorage
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          SseDeserializer deserializer);

  @protected
  TaskStorage
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          SseDeserializer deserializer);

  @protected
  TaskStorage
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          SseDeserializer deserializer);

  @protected
  DateTime sse_decode_Chrono_Naive(SseDeserializer deserializer);

  @protected
  Map<String, String> sse_decode_Map_String_String(
      SseDeserializer deserializer);

  @protected
  TaskStorage
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          SseDeserializer deserializer);

  @protected
  Set<TaskStatus> sse_decode_Set_task_status(SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  UuidValue sse_decode_Uuid(SseDeserializer deserializer);

  @protected
  Annotation sse_decode_annotation(SseDeserializer deserializer);

  @protected
  ApplicationPaths sse_decode_application_paths(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  DateTime sse_decode_box_autoadd_Chrono_Naive(SseDeserializer deserializer);

  @protected
  ApplicationPaths sse_decode_box_autoadd_application_paths(
      SseDeserializer deserializer);

  @protected
  Filter sse_decode_box_autoadd_filter(SseDeserializer deserializer);

  @protected
  FilterSelection sse_decode_box_autoadd_filter_selection(
      SseDeserializer deserializer);

  @protected
  Settings sse_decode_box_autoadd_settings(SseDeserializer deserializer);

  @protected
  Task sse_decode_box_autoadd_task(SseDeserializer deserializer);

  @protected
  ConnectionError sse_decode_connection_error(SseDeserializer deserializer);

  @protected
  Filter sse_decode_filter(SseDeserializer deserializer);

  @protected
  FilterSelection sse_decode_filter_selection(SseDeserializer deserializer);

  @protected
  Host sse_decode_host(SseDeserializer deserializer);

  @protected
  HostKeyType sse_decode_host_key_type(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_i_64(SseDeserializer deserializer);

  @protected
  KnownHosts sse_decode_known_hosts(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  List<UuidValue> sse_decode_list_Uuid(SseDeserializer deserializer);

  @protected
  List<Annotation> sse_decode_list_annotation(SseDeserializer deserializer);

  @protected
  List<Filter> sse_decode_list_filter(SseDeserializer deserializer);

  @protected
  List<Host> sse_decode_list_host(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<(String, String)> sse_decode_list_record_string_string(
      SseDeserializer deserializer);

  @protected
  List<SshKey> sse_decode_list_ssh_key(SseDeserializer deserializer);

  @protected
  List<Task> sse_decode_list_task(SseDeserializer deserializer);

  @protected
  List<TaskStatus> sse_decode_list_task_status(SseDeserializer deserializer);

  @protected
  Logger sse_decode_logger(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  UuidValue? sse_decode_opt_Uuid(SseDeserializer deserializer);

  @protected
  DateTime? sse_decode_opt_box_autoadd_Chrono_Naive(
      SseDeserializer deserializer);

  @protected
  FilterSelection? sse_decode_opt_box_autoadd_filter_selection(
      SseDeserializer deserializer);

  @protected
  Task? sse_decode_opt_box_autoadd_task(SseDeserializer deserializer);

  @protected
  (String, String) sse_decode_record_string_string(
      SseDeserializer deserializer);

  @protected
  Repository sse_decode_repository(SseDeserializer deserializer);

  @protected
  Settings sse_decode_settings(SseDeserializer deserializer);

  @protected
  SshKey sse_decode_ssh_key(SseDeserializer deserializer);

  @protected
  Task sse_decode_task(SseDeserializer deserializer);

  @protected
  TaskStatus sse_decode_task_status(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          TaskStorage self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          TaskStorage self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          TaskStorage self, SseSerializer serializer);

  @protected
  void sse_encode_Chrono_Naive(DateTime self, SseSerializer serializer);

  @protected
  void sse_encode_Map_String_String(
      Map<String, String> self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          TaskStorage self, SseSerializer serializer);

  @protected
  void sse_encode_Set_task_status(
      Set<TaskStatus> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_Uuid(UuidValue self, SseSerializer serializer);

  @protected
  void sse_encode_annotation(Annotation self, SseSerializer serializer);

  @protected
  void sse_encode_application_paths(
      ApplicationPaths self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_Chrono_Naive(
      DateTime self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_application_paths(
      ApplicationPaths self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_filter(Filter self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_filter_selection(
      FilterSelection self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_settings(Settings self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_task(Task self, SseSerializer serializer);

  @protected
  void sse_encode_connection_error(
      ConnectionError self, SseSerializer serializer);

  @protected
  void sse_encode_filter(Filter self, SseSerializer serializer);

  @protected
  void sse_encode_filter_selection(
      FilterSelection self, SseSerializer serializer);

  @protected
  void sse_encode_host(Host self, SseSerializer serializer);

  @protected
  void sse_encode_host_key_type(HostKeyType self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_known_hosts(KnownHosts self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_Uuid(List<UuidValue> self, SseSerializer serializer);

  @protected
  void sse_encode_list_annotation(
      List<Annotation> self, SseSerializer serializer);

  @protected
  void sse_encode_list_filter(List<Filter> self, SseSerializer serializer);

  @protected
  void sse_encode_list_host(List<Host> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_record_string_string(
      List<(String, String)> self, SseSerializer serializer);

  @protected
  void sse_encode_list_ssh_key(List<SshKey> self, SseSerializer serializer);

  @protected
  void sse_encode_list_task(List<Task> self, SseSerializer serializer);

  @protected
  void sse_encode_list_task_status(
      List<TaskStatus> self, SseSerializer serializer);

  @protected
  void sse_encode_logger(Logger self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_Uuid(UuidValue? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_Chrono_Naive(
      DateTime? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_filter_selection(
      FilterSelection? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_task(Task? self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_string(
      (String, String) self, SseSerializer serializer);

  @protected
  void sse_encode_repository(Repository self, SseSerializer serializer);

  @protected
  void sse_encode_settings(Settings self, SseSerializer serializer);

  @protected
  void sse_encode_ssh_key(SshKey self, SseSerializer serializer);

  @protected
  void sse_encode_task(Task self, SseSerializer serializer);

  @protected
  void sse_encode_task_status(TaskStatus self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          int ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          int ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
              ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {
  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          int ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerTaskStorage(
          int ptr);
}
