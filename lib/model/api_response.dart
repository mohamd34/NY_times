
// ignore: camel_case_types
class ApiResponse {
  String? code = '';
  String? message;
  bool? hasMore;
  int? num_results;

  List<dynamic>? data = <dynamic>[];

  ApiResponse({this.code, this.num_results, this.message, required this.data});


  factory ApiResponse.fromJson(dynamic json) {
    return ApiResponse(
        // code: json['code'],
        data: json['results'],
        // hasMore: json['has_more'],
        num_results: json['num_results'],
    );
  }

  @override
  String toString() {
    return 'ApiResponse{code: $code, message: $message, num_results: $num_results, data: $data}';
  }
}