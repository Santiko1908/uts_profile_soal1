class Profile {
  final String name;
  final String nim;
  final String studyProgram;
  final String studentClass;
  final String bio;
  final String email;
  final String phone;
  final String github;

  const Profile({
    required this.name,
    required this.nim,
    required this.studyProgram,
    required this.studentClass,
    required this.bio,
    required this.email,
    required this.phone,
    required this.github,
  });

  Profile copyWith({
    String? name,
    String? nim,
    String? studyProgram,
    String? studentClass,
    String? bio,
    String? email,
    String? phone,
    String? github,
  }) {
    return Profile(
      name: name ?? this.name,
      nim: nim ?? this.nim,
      studyProgram: studyProgram ?? this.studyProgram,
      studentClass: studentClass ?? this.studentClass,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      github: github ?? this.github,
    );
  }
}
