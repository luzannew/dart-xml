import '../nodes/node.dart';
import '../utils/node_type.dart';
import 'exception.dart';

/// Exception thrown when an unsupported node type is used.
class XmlNodeTypeException extends XmlException {
  /// Creates a new XmlNodeTypeException.
  XmlNodeTypeException(String message,
      {required this.node, required this.types})
      : super(message);

  /// Ensure that [node] is of one of the provided [types].
  static void checkValidType(XmlNode node, Iterable<XmlNodeType> types) {
    if (!types.contains(node.nodeType)) {
      throw XmlNodeTypeException(
        'Got ${node.nodeType}, but expected one of ${types.join(', ')}',
        node: node,
        types: types,
      );
    }
  }

  /// The unsupported node.
  final XmlNode node;

  /// The expected node types.
  final Iterable<XmlNodeType> types;

  @override
  String toString() => 'XmlNodeTypeException: $message';
}
