class UserProfile {
  final DateTime birthDate;
  final String name;
  final String nahuatl; // ナワトル語の守護霊
  final String guardianSpirit; // 日本語の守護霊

  UserProfile({
    required this.birthDate,
    required this.name,
    required this.nahuatl,
    required this.guardianSpirit,
  });

  Map<String, dynamic> toJson() {
    return {
      'birthDate': birthDate.toIso8601String(),
      'name': name,
      'nahuatl': nahuatl,
      'guardianSpirit': guardianSpirit,
    };
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      birthDate: DateTime.parse(json['birthDate']),
      name: json['name'],
      nahuatl: json['nahuatl'],
      guardianSpirit: json['guardianSpirit'],
    );
  }
}
