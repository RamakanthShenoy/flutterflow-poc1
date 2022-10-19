import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'organizations_record.g.dart';

abstract class OrganizationsRecord
    implements Built<OrganizationsRecord, OrganizationsRecordBuilder> {
  static Serializer<OrganizationsRecord> get serializer =>
      _$organizationsRecordSerializer;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'org_logo')
  String? get orgLogo;

  @BuiltValueField(wireName: 'org_bg_image')
  String? get orgBgImage;

  @BuiltValueField(wireName: 'no_of_assets')
  int? get noOfAssets;

  @BuiltValueField(wireName: 'no_of_employees')
  int? get noOfEmployees;

  @BuiltValueField(wireName: 'organization_name')
  String? get organizationName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrganizationsRecordBuilder builder) => builder
    ..orgLogo = ''
    ..orgBgImage = ''
    ..noOfAssets = 0
    ..noOfEmployees = 0
    ..organizationName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('organizations');

  static Stream<OrganizationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrganizationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrganizationsRecord._();
  factory OrganizationsRecord(
          [void Function(OrganizationsRecordBuilder) updates]) =
      _$OrganizationsRecord;

  static OrganizationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrganizationsRecordData({
  DateTime? createdTime,
  String? orgLogo,
  String? orgBgImage,
  int? noOfAssets,
  int? noOfEmployees,
  String? organizationName,
}) {
  final firestoreData = serializers.toFirestore(
    OrganizationsRecord.serializer,
    OrganizationsRecord(
      (o) => o
        ..createdTime = createdTime
        ..orgLogo = orgLogo
        ..orgBgImage = orgBgImage
        ..noOfAssets = noOfAssets
        ..noOfEmployees = noOfEmployees
        ..organizationName = organizationName,
    ),
  );

  return firestoreData;
}
