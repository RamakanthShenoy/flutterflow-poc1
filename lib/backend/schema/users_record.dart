import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  BuiltList<int>? get favorites;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get organisation;

  @BuiltValueField(wireName: 'is_admin')
  bool? get isAdmin;

  @BuiltValueField(wireName: 'org_logo')
  String? get orgLogo;

  @BuiltValueField(wireName: 'org_bg_image')
  String? get orgBgImage;

  @BuiltValueField(wireName: 'no_of_assets')
  int? get noOfAssets;

  @BuiltValueField(wireName: 'no_of_employees')
  int? get noOfEmployees;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..favorites = ListBuilder()
    ..phoneNumber = ''
    ..organisation = ''
    ..isAdmin = false
    ..orgLogo = ''
    ..orgBgImage = ''
    ..noOfAssets = 0
    ..noOfEmployees = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? organisation,
  bool? isAdmin,
  String? orgLogo,
  String? orgBgImage,
  int? noOfAssets,
  int? noOfEmployees,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..favorites = null
        ..phoneNumber = phoneNumber
        ..organisation = organisation
        ..isAdmin = isAdmin
        ..orgLogo = orgLogo
        ..orgBgImage = orgBgImage
        ..noOfAssets = noOfAssets
        ..noOfEmployees = noOfEmployees,
    ),
  );

  return firestoreData;
}
