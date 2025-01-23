class BackupModel {
  final int id;
  final String name;
  final String url;
  final String createdAt;

  BackupModel({required this.id, required this.name, required this.createdAt,required this.url});

  factory BackupModel.fromJson(Map<String, dynamic> json) {
    return BackupModel(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      createdAt: json['createdAt'],
    );
  }
}
