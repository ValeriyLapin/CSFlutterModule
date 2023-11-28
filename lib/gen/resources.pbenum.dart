//
//  Generated code. Do not modify.
//  source: resources.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ResourceType extends $pb.ProtobufEnum {
  static const ResourceType UNKNOWN = ResourceType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ResourceType PDF = ResourceType._(1, _omitEnumNames ? '' : 'PDF');
  static const ResourceType IMAGE = ResourceType._(2, _omitEnumNames ? '' : 'IMAGE');
  static const ResourceType VIDEO = ResourceType._(3, _omitEnumNames ? '' : 'VIDEO');
  static const ResourceType AUDIO = ResourceType._(4, _omitEnumNames ? '' : 'AUDIO');
  static const ResourceType URL = ResourceType._(5, _omitEnumNames ? '' : 'URL');

  static const $core.List<ResourceType> values = <ResourceType> [
    UNKNOWN,
    PDF,
    IMAGE,
    VIDEO,
    AUDIO,
    URL,
  ];

  static final $core.Map<$core.int, ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResourceType? valueOf($core.int value) => _byValue[value];

  const ResourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
