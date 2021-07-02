import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'services_record.g.dart';

abstract class ServicesRecord
    implements Built<ServicesRecord, ServicesRecordBuilder> {
  static Serializer<ServicesRecord> get serializer =>
      _$servicesRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get code;

  @nullable
  String get name;

  @nullable
  DocumentReference get category;

  @nullable
  double get fee;

  @nullable
  @BuiltValueField(wireName: 'fee_unit')
  String get feeUnit;

  @nullable
  int get sla;

  @nullable
  @BuiltValueField(wireName: 'sla_unit')
  String get slaUnit;

  @nullable
  @BuiltValueField(wireName: 'color_base')
  String get colorBase;

  @nullable
  @BuiltValueField(wireName: 'color_item')
  String get colorItem;

  @nullable
  @BuiltValueField(wireName: 'picture_url')
  String get pictureUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServicesRecordBuilder builder) => builder
    ..uid = ''
    ..code = ''
    ..name = ''
    ..fee = 0.0
    ..feeUnit = ''
    ..sla = 0
    ..slaUnit = ''
    ..colorBase = ''
    ..colorItem = ''
    ..pictureUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ServicesRecord._();
  factory ServicesRecord([void Function(ServicesRecordBuilder) updates]) =
      _$ServicesRecord;

  static ServicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createServicesRecordData({
  String uid,
  String code,
  String name,
  DocumentReference category,
  double fee,
  String feeUnit,
  int sla,
  String slaUnit,
  String colorBase,
  String colorItem,
  String pictureUrl,
}) =>
    serializers.toFirestore(
        ServicesRecord.serializer,
        ServicesRecord((s) => s
          ..uid = uid
          ..code = code
          ..name = name
          ..category = category
          ..fee = fee
          ..feeUnit = feeUnit
          ..sla = sla
          ..slaUnit = slaUnit
          ..colorBase = colorBase
          ..colorItem = colorItem
          ..pictureUrl = pictureUrl));
