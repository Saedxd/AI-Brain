
library ChoicesModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chatgpt/models/serializer/serializer.dart';

part 'ChoicesModel.g.dart';

abstract class ChoicesModel
    implements Built<ChoicesModel,ChoicesModelBuilder> {

  String? get text;
  String? get finish_reason;
  int? get index;
  //logprobs

  ChoicesModel._();
  factory ChoicesModel([void Function(ChoicesModelBuilder b)? updates]) =  _$ChoicesModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ChoicesModel.serializer, this));
  }
  static ChoicesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChoicesModel.serializer, json.decode(jsonString));
  }

  static Serializer<ChoicesModel> get serializer => _$choicesModelSerializer;
}

