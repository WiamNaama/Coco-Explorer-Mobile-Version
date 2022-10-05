import 'package:coco_app/feature/explorer/data/model/segmentation_model.dart';

class ImageModel {
  late final int id;
  late final String cocoUrl;
  late final String flickrUrl;
  late final List<String> captions;
  late final List<SegmentationModel> segmentations;

  ImageModel({
    required this.id,
    required this.cocoUrl,
    required this.flickrUrl,
    required this.captions,
    required this.segmentations,
  });

  factory ImageModel.fromJson(
    Map<String, dynamic> imageJson,
    List<SegmentationModel>? segmentationList,
    List<String>? captionList,
  ) {
    return ImageModel(
      id: imageJson['id'] ?? 0,
      cocoUrl: imageJson['coco_url'] ?? "",
      flickrUrl: imageJson['flickr_url'] ?? "",
      captions: captionList ?? [],
      segmentations: segmentationList ?? [],
    );
  }
}
