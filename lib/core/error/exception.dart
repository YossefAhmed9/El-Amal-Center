import 'package:dio/dio.dart';

import 'error_model.dart';

class ServerException implements Exception {
final ErrorModel errorModel;

ServerException({required this.errorModel});
}

void handleDioException(DioException e) {
  switch (e.type){
    case DioExceptionType.connectionTimeout:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch(e.response?.statusCode){
        case 400: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 401: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 403: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 404: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 409: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 422: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case 504: ServerException(errorModel: ErrorModel.fromJson(e.response!.data));

      }

  }
}
