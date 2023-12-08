import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class DocumentSerializer
    implements
        JsonConverter<DocumentReference<Map<String, dynamic>>,
            DocumentReference<Map<String, dynamic>>> {
  const DocumentSerializer();

  @override
  DocumentReference<Map<String, dynamic>> fromJson(
    DocumentReference<Map<String, dynamic>> docRef,
  ) =>
      docRef;

  @override
  DocumentReference<Map<String, dynamic>> toJson(
    DocumentReference<Map<String, dynamic>> docRef,
  ) =>
      docRef;
}
