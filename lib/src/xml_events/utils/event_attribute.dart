import '../../xml/utils/attribute_type.dart';
import '../annotations/has_parent.dart';
import 'named.dart';

/// Immutable attributes of XML events.
class XmlEventAttribute with XmlNamed, XmlHasParent {
  XmlEventAttribute(this.name, this.value, this.attributeType);

  @override
  final String name;

  final String value;

  final XmlAttributeType attributeType;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      other is XmlEventAttribute &&
      other.name == name &&
      other.value == value &&
      other.attributeType == attributeType;
}
