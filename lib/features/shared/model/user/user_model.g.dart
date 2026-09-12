// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  experience: json['experience'] as String?,
  specialization: json['specialization'] as String?,
  address: json['address'] as String?,
  isAvailable: json['isAvailable'] as bool? ?? true,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'experience': instance.experience,
      'specialization': instance.specialization,
      'address': instance.address,
      'isAvailable': instance.isAvailable,
    };
