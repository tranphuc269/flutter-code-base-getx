import 'dart:async';
import 'dart:convert';

import 'package:beauty_mall/data/network/dio_base.dart';
import 'package:beauty_mall/models/base_entity.dart';


abstract class BaseRepositoryInterface {
  int get timeoutInterval;

  final dio = DioBase.getDio();

  Future<String> create(BaseEntity entity);

  Future<void> createByDocumentId(BaseEntity entity, String documentId);

  Future<void> updateByDocumentId(BaseEntity entity, String documentId);

  Future<void> deleteByDocumentId(String documentId);

  Future<T?> getByDocumentId<T extends BaseEntity>(String documentId, T Function(dynamic e) convert);

  Future<List<T>> getAll<T extends BaseEntity>(T Function(dynamic e) convert);

  Future<List<T>> getByKeyValue<T extends BaseEntity>(
      String key, String value, T Function(dynamic e) convert);
}

class BaseRepository extends BaseRepositoryInterface{

  late String url;
  BaseRepository({required this.url});

  @override
  Future<String> create(BaseEntity entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> createByDocumentId(BaseEntity entity, String documentId) {
    // TODO: implement createByDocumentId
    throw UnimplementedError();
  }

  @override
  Future<void> deleteByDocumentId(String documentId) {
    // TODO: implement deleteByDocumentId
    throw UnimplementedError();
  }

  @override
  Future<List<T>> getAll<T extends BaseEntity>(T Function(dynamic e) convert) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<T?> getByDocumentId<T extends BaseEntity>(String documentId, T Function(dynamic e) convert) {
    // TODO: implement getByDocumentId
    throw UnimplementedError();
  }

  @override
  Future<List<T>> getByKeyValue<T extends BaseEntity>(String key, String value, T Function(dynamic e) convert) {
    // TODO: implement getByDocumentId
    throw UnimplementedError();
  }

  @override
  // TODO: implement timeoutInterval
  int get timeoutInterval => 20;

  @override
  Future<void> updateByDocumentId(BaseEntity entity, String documentId) {
    // TODO: implement updateByDocumentId
    throw UnimplementedError();
  }

  T _decode<T extends BaseEntity>(Map<String, dynamic> document, T convert(e)) {
    try {
      final json = document;
      return convert(json);
    } on Exception {
      rethrow;
    }
  }

  Future<T?> _getDocument<T extends BaseEntity>(
      Future<dynamic> response, T Function(dynamic e) convert) async {
    try {
      final snapShot = (await response
          .timeout(Duration(seconds: timeoutInterval), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      })).data;
      final listObj = _decode<T>(snapShot, convert);
      return listObj;
    } on Exception {
      rethrow;
    }
  }

  Future<List<T>> _getDocuments<T extends BaseEntity>(
      Future<dynamic> response, T Function(dynamic e) convert) async {
    try {
      final snapShot = (await response
          .timeout(Duration(seconds: timeoutInterval), onTimeout: () {
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      })).data['data'];
      final listObj =
      snapShot.map<T>((document) => _decode(document, convert)).toList();
      // listObj.forEach((element) {
      //   element as T;
      // });
      return listObj;
    } on Exception catch(e) {
      rethrow;
    }
  }

}