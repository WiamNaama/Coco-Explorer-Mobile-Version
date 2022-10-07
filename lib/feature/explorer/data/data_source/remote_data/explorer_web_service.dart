import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/constant/web_service.dart';

part 'explorer_web_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ExplorerWebService {
  factory ExplorerWebService(Dio dio, {String baseUrl}) = _ExplorerWebService;

  @POST("/coco-dataset-bigquery")
  Future<dynamic> fetchImagesIds(@Body() Map<String, dynamic> formData);

  @POST("/coco-dataset-bigquery")
  Future<dynamic> fetchImages(@Body() Map<String, dynamic> formData);

  @POST("/coco-dataset-bigquery")
  Future<dynamic> fetchCaptions(@Body() Map<String, dynamic> formData);

  @POST("/coco-dataset-bigquery")
  Future<dynamic> fetchSegmentations(@Body() Map<String, dynamic> formData);
}
