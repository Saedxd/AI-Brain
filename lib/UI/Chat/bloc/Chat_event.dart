library Chat_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Chat_event.g.dart';

abstract class ChatEvent {}


abstract class SendMessage extends ChatEvent
    implements Built<SendMessage,SendMessageBuilder> {
  String? get Msg;

 SendMessage._();
  factory SendMessage([updates(SendMessageBuilder b)]) = _$SendMessage;
}
