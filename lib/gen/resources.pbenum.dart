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

class FResourceType extends $pb.ProtobufEnum {
  static const FResourceType UNKNOWN = FResourceType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const FResourceType PDF = FResourceType._(1, _omitEnumNames ? '' : 'PDF');
  static const FResourceType IMAGE = FResourceType._(2, _omitEnumNames ? '' : 'IMAGE');
  static const FResourceType VIDEO = FResourceType._(3, _omitEnumNames ? '' : 'VIDEO');
  static const FResourceType AUDIO = FResourceType._(4, _omitEnumNames ? '' : 'AUDIO');
  static const FResourceType URL = FResourceType._(5, _omitEnumNames ? '' : 'URL');

  static const $core.List<FResourceType> values = <FResourceType> [
    UNKNOWN,
    PDF,
    IMAGE,
    VIDEO,
    AUDIO,
    URL,
  ];

  static final $core.Map<$core.int, FResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FResourceType? valueOf($core.int value) => _byValue[value];

  const FResourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
