class Info {
  final int count;
  final int next;

  Info({required this.count, required this.next});

  // Factory method for JSON deserialization
  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json['count'] as int,
      next: json['next'] as int,
    );
  }

  // Method for JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
    };
  }
}