import 'dart:convert';

class SegmentationModel {
  late final int categoryId;
  late final List<num> points;

  SegmentationModel({
    required this.categoryId,
    required this.points,
  });

  factory SegmentationModel.fromJson(Map<String, dynamic> segmentJson) {
    return SegmentationModel(
      categoryId: segmentJson['category_id'] ?? 0,
      points: json.decode(segmentJson['segmentation'] ?? "[[]]") is List
          ? List<num>.from(
              (json.decode(segmentJson['segmentation'] ?? "[[]]")
                      as List<dynamic>)
                  .first,
            )
          : <num>[],
    );
  }
}
