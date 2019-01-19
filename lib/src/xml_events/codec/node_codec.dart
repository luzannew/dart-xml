library xml_events.codec.node_codec;

import 'dart:convert' show Codec, Converter;

import 'package:xml/xml.dart' show XmlNode;

import '../converters/node_decoder.dart';
import '../converters/node_encoder.dart';
import '../event.dart';

/// Converts between [XmlEvent] objects and [XmlNode] trees.
class XmlNodeCodec extends Codec<List<XmlNode>, List<XmlEvent>> {
  const XmlNodeCodec();

  /// Decodes a sequence of [XmlEvent] objects to a forest of [XmlNode] objects.
  @override
  Converter<List<XmlEvent>, List<XmlNode>> get decoder =>
      const XmlNodeDecoder();

  /// Encodes a forest of [XmlNode] objects to a sequence of [XmlEvent] objects.
  @override
  Converter<List<XmlNode>, List<XmlEvent>> get encoder =>
      const XmlNodeEncoder();
}
