import 'dart:async';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'service_categories_record.g.dart';

abstract class ServiceCategoriesRecord
    implements Built<ServiceCategoriesRecord, ServiceCategoriesRecordBuilder> {
  static Serializer<ServiceCategoriesRecord> get serializer =>
      _$serviceCategoriesRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get code;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServiceCategoriesRecordBuilder builder) =>
      builder
        ..uid = ''
        ..code = ''
        ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('service_categories');

  static Stream<ServiceCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ServiceCategoriesRecord._();
  factory ServiceCategoriesRecord(
          [void Function(ServiceCategoriesRecordBuilder) updates]) =
      _$ServiceCategoriesRecord;

  static ServiceCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createServiceCategoriesRecordData({
  String uid,
  String code,
  String name,
}) =>
    serializers.toFirestore(
        ServiceCategoriesRecord.serializer,
        ServiceCategoriesRecord((s) => s
          ..uid = uid
          ..code = code
          ..name = name));

ServiceCategoriesRecord get dummyServiceCategoriesRecord {
  final builder = ServiceCategoriesRecordBuilder()
    ..uid = dummyString
    ..code = dummyString
    ..name = dummyString;
  return builder.build();
}

List<ServiceCategoriesRecord> createDummyServiceCategoriesRecord({int count}) =>
    List.generate(count, (_) => dummyServiceCategoriesRecord);
