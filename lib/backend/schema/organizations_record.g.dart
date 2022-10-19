// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganizationsRecord> _$organizationsRecordSerializer =
    new _$OrganizationsRecordSerializer();

class _$OrganizationsRecordSerializer
    implements StructuredSerializer<OrganizationsRecord> {
  @override
  final Iterable<Type> types = const [
    OrganizationsRecord,
    _$OrganizationsRecord
  ];
  @override
  final String wireName = 'OrganizationsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrganizationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orgLogo;
    if (value != null) {
      result
        ..add('org_logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orgBgImage;
    if (value != null) {
      result
        ..add('org_bg_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.noOfAssets;
    if (value != null) {
      result
        ..add('no_of_assets')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.noOfEmployees;
    if (value != null) {
      result
        ..add('no_of_employees')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.organizationName;
    if (value != null) {
      result
        ..add('organization_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrganizationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'org_logo':
          result.orgLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'org_bg_image':
          result.orgBgImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'no_of_assets':
          result.noOfAssets = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'no_of_employees':
          result.noOfEmployees = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'organization_name':
          result.organizationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationsRecord extends OrganizationsRecord {
  @override
  final DateTime? createdTime;
  @override
  final String? orgLogo;
  @override
  final String? orgBgImage;
  @override
  final int? noOfAssets;
  @override
  final int? noOfEmployees;
  @override
  final String? organizationName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrganizationsRecord(
          [void Function(OrganizationsRecordBuilder)? updates]) =>
      (new OrganizationsRecordBuilder()..update(updates))._build();

  _$OrganizationsRecord._(
      {this.createdTime,
      this.orgLogo,
      this.orgBgImage,
      this.noOfAssets,
      this.noOfEmployees,
      this.organizationName,
      this.ffRef})
      : super._();

  @override
  OrganizationsRecord rebuild(
          void Function(OrganizationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationsRecordBuilder toBuilder() =>
      new OrganizationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationsRecord &&
        createdTime == other.createdTime &&
        orgLogo == other.orgLogo &&
        orgBgImage == other.orgBgImage &&
        noOfAssets == other.noOfAssets &&
        noOfEmployees == other.noOfEmployees &&
        organizationName == other.organizationName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, createdTime.hashCode), orgLogo.hashCode),
                        orgBgImage.hashCode),
                    noOfAssets.hashCode),
                noOfEmployees.hashCode),
            organizationName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationsRecord')
          ..add('createdTime', createdTime)
          ..add('orgLogo', orgLogo)
          ..add('orgBgImage', orgBgImage)
          ..add('noOfAssets', noOfAssets)
          ..add('noOfEmployees', noOfEmployees)
          ..add('organizationName', organizationName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrganizationsRecordBuilder
    implements Builder<OrganizationsRecord, OrganizationsRecordBuilder> {
  _$OrganizationsRecord? _$v;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _orgLogo;
  String? get orgLogo => _$this._orgLogo;
  set orgLogo(String? orgLogo) => _$this._orgLogo = orgLogo;

  String? _orgBgImage;
  String? get orgBgImage => _$this._orgBgImage;
  set orgBgImage(String? orgBgImage) => _$this._orgBgImage = orgBgImage;

  int? _noOfAssets;
  int? get noOfAssets => _$this._noOfAssets;
  set noOfAssets(int? noOfAssets) => _$this._noOfAssets = noOfAssets;

  int? _noOfEmployees;
  int? get noOfEmployees => _$this._noOfEmployees;
  set noOfEmployees(int? noOfEmployees) =>
      _$this._noOfEmployees = noOfEmployees;

  String? _organizationName;
  String? get organizationName => _$this._organizationName;
  set organizationName(String? organizationName) =>
      _$this._organizationName = organizationName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrganizationsRecordBuilder() {
    OrganizationsRecord._initializeBuilder(this);
  }

  OrganizationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _orgLogo = $v.orgLogo;
      _orgBgImage = $v.orgBgImage;
      _noOfAssets = $v.noOfAssets;
      _noOfEmployees = $v.noOfEmployees;
      _organizationName = $v.organizationName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationsRecord;
  }

  @override
  void update(void Function(OrganizationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationsRecord build() => _build();

  _$OrganizationsRecord _build() {
    final _$result = _$v ??
        new _$OrganizationsRecord._(
            createdTime: createdTime,
            orgLogo: orgLogo,
            orgBgImage: orgBgImage,
            noOfAssets: noOfAssets,
            noOfEmployees: noOfEmployees,
            organizationName: organizationName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
