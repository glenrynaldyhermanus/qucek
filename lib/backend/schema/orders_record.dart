import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @nullable
  String get uid;

  @nullable
  int get quantity;

  @nullable
  @BuiltValueField(wireName: 'service_fee')
  double get serviceFee;

  @nullable
  @BuiltValueField(wireName: 'delivery_fee')
  double get deliveryFee;

  @nullable
  @BuiltValueField(wireName: 'admin_fee')
  double get adminFee;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  DocumentReference get customer;

  @nullable
  @BuiltValueField(wireName: 'updated_time')
  DateTime get updatedTime;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'pickup_time')
  DateTime get pickupTime;

  @nullable
  @BuiltValueField(wireName: 'delivery_time')
  DateTime get deliveryTime;

  @nullable
  @BuiltValueField(wireName: 'delivery_address')
  String get deliveryAddress;

  @nullable
  @BuiltValueField(wireName: 'delivery_geo')
  LatLng get deliveryGeo;

  @nullable
  @BuiltValueField(wireName: 'payment_status')
  String get paymentStatus;

  @nullable
  @BuiltValueField(wireName: 'service_name')
  String get serviceName;

  @nullable
  DocumentReference get service;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..uid = ''
    ..quantity = 0
    ..serviceFee = 0.0
    ..deliveryFee = 0.0
    ..adminFee = 0.0
    ..status = ''
    ..deliveryAddress = ''
    ..paymentStatus = ''
    ..serviceName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersRecordData({
  String uid,
  int quantity,
  double serviceFee,
  double deliveryFee,
  double adminFee,
  DateTime createdTime,
  DocumentReference customer,
  DateTime updatedTime,
  String status,
  DateTime pickupTime,
  DateTime deliveryTime,
  String deliveryAddress,
  LatLng deliveryGeo,
  String paymentStatus,
  String serviceName,
  DocumentReference service,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..uid = uid
          ..quantity = quantity
          ..serviceFee = serviceFee
          ..deliveryFee = deliveryFee
          ..adminFee = adminFee
          ..createdTime = createdTime
          ..customer = customer
          ..updatedTime = updatedTime
          ..status = status
          ..pickupTime = pickupTime
          ..deliveryTime = deliveryTime
          ..deliveryAddress = deliveryAddress
          ..deliveryGeo = deliveryGeo
          ..paymentStatus = paymentStatus
          ..serviceName = serviceName
          ..service = service));
