// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplainModel _$ComplainModelFromJson(Map<String, dynamic> json) =>
    _ComplainModel(
      category: json['category'] as String?,
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ComplainModelToJson(_ComplainModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'subject': instance.subject,
      'description': instance.description,
      'date': instance.date,
      'status': instance.status,
    };
