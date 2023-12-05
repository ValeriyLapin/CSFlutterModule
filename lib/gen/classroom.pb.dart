//
//  Generated code. Do not modify.
//  source: classroom.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FStudent extends $pb.GeneratedMessage {
  factory FStudent({
    $core.String? id,
    $core.String? classroomId,
    $core.String? teacherEmail,
    $core.double? birthday,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (classroomId != null) {
      $result.classroomId = classroomId;
    }
    if (teacherEmail != null) {
      $result.teacherEmail = teacherEmail;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  FStudent._() : super();
  factory FStudent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FStudent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FStudent', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'classroomId')
    ..aOS(3, _omitFieldNames ? '' : 'teacherEmail')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'birthday', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'firstName')
    ..aOS(6, _omitFieldNames ? '' : 'lastName')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FStudent clone() => FStudent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FStudent copyWith(void Function(FStudent) updates) => super.copyWith((message) => updates(message as FStudent)) as FStudent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FStudent create() => FStudent._();
  FStudent createEmptyInstance() => create();
  static $pb.PbList<FStudent> createRepeated() => $pb.PbList<FStudent>();
  @$core.pragma('dart2js:noInline')
  static FStudent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FStudent>(create);
  static FStudent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get classroomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set classroomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClassroomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClassroomId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get teacherEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set teacherEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTeacherEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearTeacherEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get birthday => $_getN(3);
  @$pb.TagNumber(4)
  set birthday($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBirthday() => $_has(3);
  @$pb.TagNumber(4)
  void clearBirthday() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstName => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastName => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
}

class FClassroom extends $pb.GeneratedMessage {
  factory FClassroom({
    $core.String? id,
    $core.String? fullName,
    $core.String? name,
    $core.String? schoolGradeName,
    $core.Iterable<FStudent>? students,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (name != null) {
      $result.name = name;
    }
    if (schoolGradeName != null) {
      $result.schoolGradeName = schoolGradeName;
    }
    if (students != null) {
      $result.students.addAll(students);
    }
    return $result;
  }
  FClassroom._() : super();
  factory FClassroom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FClassroom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FClassroom', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'schoolGradeName')
    ..pc<FStudent>(5, _omitFieldNames ? '' : 'students', $pb.PbFieldType.PM, subBuilder: FStudent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FClassroom clone() => FClassroom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FClassroom copyWith(void Function(FClassroom) updates) => super.copyWith((message) => updates(message as FClassroom)) as FClassroom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FClassroom create() => FClassroom._();
  FClassroom createEmptyInstance() => create();
  static $pb.PbList<FClassroom> createRepeated() => $pb.PbList<FClassroom>();
  @$core.pragma('dart2js:noInline')
  static FClassroom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FClassroom>(create);
  static FClassroom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get schoolGradeName => $_getSZ(3);
  @$pb.TagNumber(4)
  set schoolGradeName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSchoolGradeName() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchoolGradeName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<FStudent> get students => $_getList(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
