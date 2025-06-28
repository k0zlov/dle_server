// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'parameter.dart';

class ParameterTypeMapper extends EnumMapper<ParameterType> {
  ParameterTypeMapper._();

  static ParameterTypeMapper? _instance;
  static ParameterTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ParameterTypeMapper._());
    }
    return _instance!;
  }

  static ParameterType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ParameterType decode(dynamic value) {
    switch (value) {
      case 'number':
        return ParameterType.number;
      case 'text':
        return ParameterType.text;
      case 'image':
        return ParameterType.image;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ParameterType self) {
    switch (self) {
      case ParameterType.number:
        return 'number';
      case ParameterType.text:
        return 'text';
      case ParameterType.image:
        return 'image';
    }
  }
}

extension ParameterTypeMapperExtension on ParameterType {
  String toValue() {
    ParameterTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ParameterType>(this) as String;
  }
}

class CompareModeMapper extends EnumMapper<CompareMode> {
  CompareModeMapper._();

  static CompareModeMapper? _instance;
  static CompareModeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareModeMapper._());
    }
    return _instance!;
  }

  static CompareMode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CompareMode decode(dynamic value) {
    switch (value) {
      case 'indexed':
        return CompareMode.indexed;
      case 'compared':
        return CompareMode.compared;
      case 'none':
        return CompareMode.none;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CompareMode self) {
    switch (self) {
      case CompareMode.indexed:
        return 'indexed';
      case CompareMode.compared:
        return 'compared';
      case CompareMode.none:
        return 'none';
    }
  }
}

extension CompareModeMapperExtension on CompareMode {
  String toValue() {
    CompareModeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CompareMode>(this) as String;
  }
}

class ParameterMapper extends ClassMapperBase<Parameter> {
  ParameterMapper._();

  static ParameterMapper? _instance;
  static ParameterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ParameterMapper._());
      ParameterTypeMapper.ensureInitialized();
      CompareModeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Parameter';

  static String _$id(Parameter v) => v.id;
  static const Field<Parameter, String> _f$id = Field('id', _$id, opt: true);
  static String _$basicDleId(Parameter v) => v.basicDleId;
  static const Field<Parameter, String> _f$basicDleId =
      Field('basicDleId', _$basicDleId);
  static String _$title(Parameter v) => v.title;
  static const Field<Parameter, String> _f$title = Field('title', _$title);
  static String _$description(Parameter v) => v.description;
  static const Field<Parameter, String> _f$description =
      Field('description', _$description);
  static ParameterType _$type(Parameter v) => v.type;
  static const Field<Parameter, ParameterType> _f$type = Field('type', _$type);
  static CompareMode _$compareMode(Parameter v) => v.compareMode;
  static const Field<Parameter, CompareMode> _f$compareMode =
      Field('compareMode', _$compareMode);
  static bool _$isReverseCompared(Parameter v) => v.isReverseCompared;
  static const Field<Parameter, bool> _f$isReverseCompared =
      Field('isReverseCompared', _$isReverseCompared);
  static bool _$allowsMultipleValues(Parameter v) => v.allowsMultipleValues;
  static const Field<Parameter, bool> _f$allowsMultipleValues =
      Field('allowsMultipleValues', _$allowsMultipleValues);
  static bool _$isSelectable(Parameter v) => v.isSelectable;
  static const Field<Parameter, bool> _f$isSelectable =
      Field('isSelectable', _$isSelectable);
  static bool _$isHidden(Parameter v) => v.isHidden;
  static const Field<Parameter, bool> _f$isHidden =
      Field('isHidden', _$isHidden);
  static DateTime _$updatedAt(Parameter v) => v.updatedAt;
  static const Field<Parameter, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Parameter v) => v.createdAt;
  static const Field<Parameter, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Parameter> fields = const {
    #id: _f$id,
    #basicDleId: _f$basicDleId,
    #title: _f$title,
    #description: _f$description,
    #type: _f$type,
    #compareMode: _f$compareMode,
    #isReverseCompared: _f$isReverseCompared,
    #allowsMultipleValues: _f$allowsMultipleValues,
    #isSelectable: _f$isSelectable,
    #isHidden: _f$isHidden,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static Parameter _instantiate(DecodingData data) {
    return Parameter(
        id: data.dec(_f$id),
        basicDleId: data.dec(_f$basicDleId),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        type: data.dec(_f$type),
        compareMode: data.dec(_f$compareMode),
        isReverseCompared: data.dec(_f$isReverseCompared),
        allowsMultipleValues: data.dec(_f$allowsMultipleValues),
        isSelectable: data.dec(_f$isSelectable),
        isHidden: data.dec(_f$isHidden),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Parameter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Parameter>(map);
  }

  static Parameter fromJson(String json) {
    return ensureInitialized().decodeJson<Parameter>(json);
  }
}

mixin ParameterMappable {
  String toJson() {
    return ParameterMapper.ensureInitialized()
        .encodeJson<Parameter>(this as Parameter);
  }

  Map<String, dynamic> toMap() {
    return ParameterMapper.ensureInitialized()
        .encodeMap<Parameter>(this as Parameter);
  }

  ParameterCopyWith<Parameter, Parameter, Parameter> get copyWith =>
      _ParameterCopyWithImpl(this as Parameter, $identity, $identity);
  @override
  String toString() {
    return ParameterMapper.ensureInitialized()
        .stringifyValue(this as Parameter);
  }

  @override
  bool operator ==(Object other) {
    return ParameterMapper.ensureInitialized()
        .equalsValue(this as Parameter, other);
  }

  @override
  int get hashCode {
    return ParameterMapper.ensureInitialized().hashValue(this as Parameter);
  }
}

extension ParameterValueCopy<$R, $Out> on ObjectCopyWith<$R, Parameter, $Out> {
  ParameterCopyWith<$R, Parameter, $Out> get $asParameter =>
      $base.as((v, t, t2) => _ParameterCopyWithImpl(v, t, t2));
}

abstract class ParameterCopyWith<$R, $In extends Parameter, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? basicDleId,
      String? title,
      String? description,
      ParameterType? type,
      CompareMode? compareMode,
      bool? isReverseCompared,
      bool? allowsMultipleValues,
      bool? isSelectable,
      bool? isHidden,
      DateTime? updatedAt,
      DateTime? createdAt});
  ParameterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ParameterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Parameter, $Out>
    implements ParameterCopyWith<$R, Parameter, $Out> {
  _ParameterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Parameter> $mapper =
      ParameterMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? basicDleId,
          String? title,
          String? description,
          ParameterType? type,
          CompareMode? compareMode,
          bool? isReverseCompared,
          bool? allowsMultipleValues,
          bool? isSelectable,
          bool? isHidden,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (basicDleId != null) #basicDleId: basicDleId,
        if (title != null) #title: title,
        if (description != null) #description: description,
        if (type != null) #type: type,
        if (compareMode != null) #compareMode: compareMode,
        if (isReverseCompared != null) #isReverseCompared: isReverseCompared,
        if (allowsMultipleValues != null)
          #allowsMultipleValues: allowsMultipleValues,
        if (isSelectable != null) #isSelectable: isSelectable,
        if (isHidden != null) #isHidden: isHidden,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Parameter $make(CopyWithData data) => Parameter(
      id: data.get(#id, or: $value.id),
      basicDleId: data.get(#basicDleId, or: $value.basicDleId),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      type: data.get(#type, or: $value.type),
      compareMode: data.get(#compareMode, or: $value.compareMode),
      isReverseCompared:
          data.get(#isReverseCompared, or: $value.isReverseCompared),
      allowsMultipleValues:
          data.get(#allowsMultipleValues, or: $value.allowsMultipleValues),
      isSelectable: data.get(#isSelectable, or: $value.isSelectable),
      isHidden: data.get(#isHidden, or: $value.isHidden),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ParameterCopyWith<$R2, Parameter, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ParameterCopyWithImpl($value, $cast, t);
}
