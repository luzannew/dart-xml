library xml_events.codec;

import 'dart:convert';

import 'decoder.dart';
import 'encoder.dart';
import 'event.dart';

/// An [XmlCodec] decodes a [String] to a list of [XmlEvent] objects, and
/// encodes a list of [XmlEvent] objects to a serialized [String].
class XmlCodec extends Codec<Iterable<XmlEvent>, String> {
  /// Decodes a [String] to an [Iterable] of [XmlEvent] objects.
  @override
  Converter<String, Iterable<XmlEvent>> get decoder => const XmlDecoder();

  /// Encodes an [Iterable] of [XmlEvent] objects to a [String].
  @override
  Converter<Iterable<XmlEvent>, String> get encoder => const XmlEncoder();
}
