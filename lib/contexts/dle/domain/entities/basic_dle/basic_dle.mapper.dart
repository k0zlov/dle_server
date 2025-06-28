// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'basic_dle.dart';

class BasicDleMapper extends ClassMapperBase<BasicDle> {
  BasicDleMapper._();

  static BasicDleMapper? _instance;
  static BasicDleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BasicDleMapper._());
      ParameterMapper.ensureInitialized();
      CharacterParameterMapper.ensureInitialized();
      SelectableValueMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BasicDle';

  static String _$id(BasicDle v) => v.id;
  static const Field<BasicDle, String> _f$id = Field('id', _$id, opt: true);
  static String _$dleId(BasicDle v) => v.dleId;
  static const Field<BasicDle, String> _f$dleId = Field('dleId', _$dleId);
  static DateTime _$updatedAt(BasicDle v) => v.updatedAt;
  static const Field<BasicDle, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(BasicDle v) => v.createdAt;
  static const Field<BasicDle, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static List<Parameter> _$parameters(BasicDle v) => v.parameters;
  static const Field<BasicDle, List<Parameter>> _f$parameters =
      Field('parameters', _$parameters, opt: true, def: const <Parameter>[]);
  static List<CharacterParameter> _$characterParameters(BasicDle v) =>
      v.characterParameters;
  static const Field<BasicDle, List<CharacterParameter>>
      _f$characterParameters = Field(
          'characterParameters', _$characterParameters,
          opt: true, def: const <CharacterParameter>[]);
  static List<SelectableValue> _$selectableValues(BasicDle v) =>
      v.selectableValues;
  static const Field<BasicDle, List<SelectableValue>> _f$selectableValues =
      Field('selectableValues', _$selectableValues,
          opt: true, def: const <SelectableValue>[]);

  @override
  final MappableFields<BasicDle> fields = const {
    #id: _f$id,
    #dleId: _f$dleId,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #parameters: _f$parameters,
    #characterParameters: _f$characterParameters,
    #selectableValues: _f$selectableValues,
  };

  static BasicDle _instantiate(DecodingData data) {
    return BasicDle(
        id: data.dec(_f$id),
        dleId: data.dec(_f$dleId),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        parameters: data.dec(_f$parameters),
        characterParameters: data.dec(_f$characterParameters),
        selectableValues: data.dec(_f$selectableValues));
  }

  @override
  final Function instantiate = _instantiate;

  static BasicDle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BasicDle>(map);
  }

  static BasicDle fromJson(String json) {
    return ensureInitialized().decodeJson<BasicDle>(json);
  }
}

mixin BasicDleMappable {
  String toJson() {
    return BasicDleMapper.ensureInitialized()
        .encodeJson<BasicDle>(this as BasicDle);
  }

  Map<String, dynamic> toMap() {
    return BasicDleMapper.ensureInitialized()
        .encodeMap<BasicDle>(this as BasicDle);
  }

  BasicDleCopyWith<BasicDle, BasicDle, BasicDle> get copyWith =>
      _BasicDleCopyWithImpl(this as BasicDle, $identity, $identity);
  @override
  String toString() {
    return BasicDleMapper.ensureInitialized().stringifyValue(this as BasicDle);
  }

  @override
  bool operator ==(Object other) {
    return BasicDleMapper.ensureInitialized()
        .equalsValue(this as BasicDle, other);
  }

  @override
  int get hashCode {
    return BasicDleMapper.ensureInitialized().hashValue(this as BasicDle);
  }
}

extension BasicDleValueCopy<$R, $Out> on ObjectCopyWith<$R, BasicDle, $Out> {
  BasicDleCopyWith<$R, BasicDle, $Out> get $asBasicDle =>
      $base.as((v, t, t2) => _BasicDleCopyWithImpl(v, t, t2));
}

abstract class BasicDleCopyWith<$R, $In extends BasicDle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Parameter, ParameterCopyWith<$R, Parameter, Parameter>>
      get parameters;
  ListCopyWith<
      $R,
      CharacterParameter,
      CharacterParameterCopyWith<$R, CharacterParameter,
          CharacterParameter>> get characterParameters;
  ListCopyWith<$R, SelectableValue,
          SelectableValueCopyWith<$R, SelectableValue, SelectableValue>>
      get selectableValues;
  $R call(
      {String? id,
      String? dleId,
      DateTime? updatedAt,
      DateTime? createdAt,
      List<Parameter>? parameters,
      List<CharacterParameter>? characterParameters,
      List<SelectableValue>? selectableValues});
  BasicDleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BasicDleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BasicDle, $Out>
    implements BasicDleCopyWith<$R, BasicDle, $Out> {
  _BasicDleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BasicDle> $mapper =
      BasicDleMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Parameter, ParameterCopyWith<$R, Parameter, Parameter>>
      get parameters => ListCopyWith($value.parameters,
          (v, t) => v.copyWith.$chain(t), (v) => call(parameters: v));
  @override
  ListCopyWith<
      $R,
      CharacterParameter,
      CharacterParameterCopyWith<$R, CharacterParameter,
          CharacterParameter>> get characterParameters => ListCopyWith(
      $value.characterParameters,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(characterParameters: v));
  @override
  ListCopyWith<$R, SelectableValue,
          SelectableValueCopyWith<$R, SelectableValue, SelectableValue>>
      get selectableValues => ListCopyWith($value.selectableValues,
          (v, t) => v.copyWith.$chain(t), (v) => call(selectableValues: v));
  @override
  $R call(
          {Object? id = $none,
          String? dleId,
          DateTime? updatedAt,
          DateTime? createdAt,
          List<Parameter>? parameters,
          List<CharacterParameter>? characterParameters,
          List<SelectableValue>? selectableValues}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (dleId != null) #dleId: dleId,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (parameters != null) #parameters: parameters,
        if (characterParameters != null)
          #characterParameters: characterParameters,
        if (selectableValues != null) #selectableValues: selectableValues
      }));
  @override
  BasicDle $make(CopyWithData data) => BasicDle(
      id: data.get(#id, or: $value.id),
      dleId: data.get(#dleId, or: $value.dleId),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      parameters: data.get(#parameters, or: $value.parameters),
      characterParameters:
          data.get(#characterParameters, or: $value.characterParameters),
      selectableValues:
          data.get(#selectableValues, or: $value.selectableValues));

  @override
  BasicDleCopyWith<$R2, BasicDle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BasicDleCopyWithImpl($value, $cast, t);
}
