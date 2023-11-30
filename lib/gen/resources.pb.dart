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

class FResourcesState extends $pb.GeneratedMessage {
  factory FResourcesState({
    $core.bool? isICloudAvailable,
    FResourceList? resourcesList,
  }) {
    final $result = create();
    if (isICloudAvailable != null) {
      $result.isICloudAvailable = isICloudAvailable;
    }
    if (resourcesList != null) {
      $result.resourcesList = resourcesList;
    }
    return $result;
  }
  FResourcesState._() : super();
  factory FResourcesState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FResourcesState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FResourcesState', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isICloudAvailable', protoName: 'isICloudAvailable')
    ..aOM<FResourceList>(2, _omitFieldNames ? '' : 'resourcesList', protoName: 'resourcesList', subBuilder: FResourceList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FResourcesState clone() => FResourcesState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FResourcesState copyWith(void Function(FResourcesState) updates) => super.copyWith((message) => updates(message as FResourcesState)) as FResourcesState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FResourcesState create() => FResourcesState._();
  FResourcesState createEmptyInstance() => create();
  static $pb.PbList<FResourcesState> createRepeated() => $pb.PbList<FResourcesState>();
  @$core.pragma('dart2js:noInline')
  static FResourcesState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FResourcesState>(create);
  static FResourcesState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isICloudAvailable => $_getBF(0);
  @$pb.TagNumber(1)
  set isICloudAvailable($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsICloudAvailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsICloudAvailable() => clearField(1);

  @$pb.TagNumber(2)
  FResourceList get resourcesList => $_getN(1);
  @$pb.TagNumber(2)
  set resourcesList(FResourceList v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourcesList() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourcesList() => clearField(2);
  @$pb.TagNumber(2)
  FResourceList ensureResourcesList() => $_ensure(1);
}

class FResourceList extends $pb.GeneratedMessage {
  factory FResourceList({
    $core.Iterable<FResource>? resources,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  FResourceList._() : super();
  factory FResourceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FResourceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FResourceList', createEmptyInstance: create)
    ..pc<FResource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: FResource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FResourceList clone() => FResourceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FResourceList copyWith(void Function(FResourceList) updates) => super.copyWith((message) => updates(message as FResourceList)) as FResourceList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FResourceList create() => FResourceList._();
  FResourceList createEmptyInstance() => create();
  static $pb.PbList<FResourceList> createRepeated() => $pb.PbList<FResourceList>();
  @$core.pragma('dart2js:noInline')
  static FResourceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FResourceList>(create);
  static FResourceList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FResource> get resources => $_getList(0);
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

class FResource extends $pb.GeneratedMessage {
  factory FResource({
    $core.String? id,
    $core.double? timeIntervalSince1970,
    $core.Map<$core.String, IntList>? flares,
    $core.String? path,
    $core.String? title,
    FResourceType? type,
    $core.bool? isICloud,
    $core.double? downloadingProgress,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (timeIntervalSince1970 != null) {
      $result.timeIntervalSince1970 = timeIntervalSince1970;
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
    if (downloadingProgress != null) {
      $result.downloadingProgress = downloadingProgress;
    }
    return $result;
  }
  FResource._() : super();
  factory FResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FResource', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'timeIntervalSince1970', $pb.PbFieldType.OD, protoName: 'timeIntervalSince1970')
    ..m<$core.String, IntList>(3, _omitFieldNames ? '' : 'flares', entryClassName: 'FResource.FlaresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: IntList.create, valueDefaultOrMaker: IntList.getDefault)
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..e<FResourceType>(6, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FResourceType.UNKNOWN, valueOf: FResourceType.valueOf, enumValues: FResourceType.values)
    ..aOB(7, _omitFieldNames ? '' : 'isICloud', protoName: 'isICloud')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'downloadingProgress', $pb.PbFieldType.OD, protoName: 'downloadingProgress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FResource clone() => FResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FResource copyWith(void Function(FResource) updates) => super.copyWith((message) => updates(message as FResource)) as FResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FResource create() => FResource._();
  FResource createEmptyInstance() => create();
  static $pb.PbList<FResource> createRepeated() => $pb.PbList<FResource>();
  @$core.pragma('dart2js:noInline')
  static FResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FResource>(create);
  static FResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get timeIntervalSince1970 => $_getN(1);
  @$pb.TagNumber(2)
  set timeIntervalSince1970($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeIntervalSince1970() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeIntervalSince1970() => clearField(2);

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
  FResourceType get type => $_getN(5);
  @$pb.TagNumber(6)
  set type(FResourceType v) { setField(6, v); }
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
  $core.double get downloadingProgress => $_getN(7);
  @$pb.TagNumber(8)
  set downloadingProgress($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDownloadingProgress() => $_has(7);
  @$pb.TagNumber(8)
  void clearDownloadingProgress() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
