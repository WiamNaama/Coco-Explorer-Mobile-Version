class ErrorModel {
  late final String field;
  late final String message;

  ErrorModel({
    required this.field,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(field: json['field'], message: json['message']);
  }
}
