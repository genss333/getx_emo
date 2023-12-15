
class ResultModel {
  final int value;
  final String message;

  ResultModel(
    this.value,
    this.message,
  );

  Map<String, dynamic> toJson() => {
        'value': value,
        'message': message,
      };

  
}
