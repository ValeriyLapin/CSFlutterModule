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

import 'resources.pbenum.dart';

export 'resources.pbenum.dart';

class ResourcesList extends $pb.GeneratedMessage {
  factory ResourcesList({
    $core.Iterable<Resource>? resources,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  ResourcesList._() : super();
  factory ResourcesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourcesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourcesList', createEmptyInstance: create)
    ..pc<Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourcesList clone() => ResourcesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourcesList copyWith(void Function(ResourcesList) updates) => super.copyWith((message) => updates(message as ResourcesList)) as ResourcesList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourcesList create() => ResourcesList._();
  ResourcesList createEmptyInstance() => create();
  static $pb.PbList<ResourcesList> createRepeated() => $pb.PbList<ResourcesList>();
  @$core.pragma('dart2js:noInline')
  static ResourcesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourcesList>(create);
  static ResourcesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get resources => $_getList(0);
}

class IntList extends $pb.GeneratedMessage {
  factory IntList({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  IntList._() : super();
  factory IntList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntList', createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntList clone() => IntList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntList copyWith(void Function(IntList) updates) => super.copyWith((message) => updates(message as IntList)) as IntList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntList create() => IntList._();
  IntList createEmptyInstance() => create();
  static $pb.PbList<IntList> createRepeated() => $pb.PbList<IntList>();
  @$core.pragma('dart2js:noInline')
  static IntList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntList>(create);
  static IntList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class Resource extends $pb.GeneratedMessage {
  factory Resource({
    $core.String? id,
    $core.String? date,
    $core.Map<$core.String, IntList>? flares,
    $core.String? path,
    $core.String? title,
    ResourceType? type,
    $core.bool? isICloud,
    $core.bool? canBeDownloaded,
    $core.bool? isDownloading,
    $core.bool? isDownloaded,
    $core.bool? hasFlares,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (flares != null) {
      $result.flares.addAll(flares);
    }
    if (path != null) {
      $result.path = path;
    }
    if (title != null) {
      $result.title = title;
    }
    if (type != null) {
      $result.type = type;
    }
    if (isICloud != null) {
      $result.isICloud = isICloud;
    }
    if (canBeDownloaded != null) {
      $result.canBeDownloaded = canBeDownloaded;
    }
    if (isDownloading != null) {
      $result.isDownloading = isDownloading;
    }
    if (isDownloaded != null) {
      $result.isDownloaded = isDownloaded;
    }
    if (hasFlares != null) {
      $result.hasFlares = hasFlares;
    }
    return $result;
  }
  Resource._() : super();
  factory Resource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Resource', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..m<$core.String, IntList>(3, _omitFieldNames ? '' : 'flares', entryClassName: 'Resource.FlaresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: IntList.create, valueDefaultOrMaker: IntList.getDefault)
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..e<ResourceType>(6, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ResourceType.UNKNOWN, valueOf: ResourceType.valueOf, enumValues: ResourceType.values)
    ..aOB(7, _omitFieldNames ? '' : 'isICloud', protoName: 'isICloud')
    ..aOB(8, _omitFieldNames ? '' : 'canBeDownloaded', protoName: 'canBeDownloaded')
    ..aOB(9, _omitFieldNames ? '' : 'isDownloading', protoName: 'isDownloading')
    ..aOB(10, _omitFieldNames ? '' : 'isDownloaded', protoName: 'isDownloaded')
    ..aOB(11, _omitFieldNames ? '' : 'hasFlares', protoName: 'hasFlares')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resource clone() => Resource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resource copyWith(void Function(Resource) updates) => super.copyWith((message) => updates(message as Resource)) as Resource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Resource create() => Resource._();
  Resource createEmptyInstance() => create();
  static $pb.PbList<Resource> createRepeated() => $pb.PbList<Resource>();
  @$core.pragma('dart2js:noInline')
  static Resource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resource>(create);
  static Resource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, IntList> get flares => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);

  @$pb.TagNumber(6)
  ResourceType get type => $_getN(5);
  @$pb.TagNumber(6)
  set type(ResourceType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isICloud => $_getBF(6);
  @$pb.TagNumber(7)
  set isICloud($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsICloud() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsICloud() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get canBeDownloaded => $_getBF(7);
  @$pb.TagNumber(8)
  set canBeDownloaded($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCanBeDownloaded() => $_has(7);
  @$pb.TagNumber(8)
  void clearCanBeDownloaded() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isDownloading => $_getBF(8);
  @$pb.TagNumber(9)
  set isDownloading($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsDownloading() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsDownloading() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isDownloaded => $_getBF(9);
  @$pb.TagNumber(10)
  set isDownloaded($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsDownloaded() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsDownloaded() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get hasFlares => $_getBF(10);
  @$pb.TagNumber(11)
  set hasFlares($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHasFlares() => $_has(10);
  @$pb.TagNumber(11)
  void clearHasFlares() => clearField(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
