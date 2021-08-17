

class User {
  final String firstName,
      middleLastName,
      email,
      skillSet,
      imageUrl,
      aboutMe,
      skill1,
      skill2,
      phoneNo,
      twitter,
      instagram,
      github;

  const User(
      {required this.firstName,
        required this.middleLastName,
        required this.email,
        required this.skillSet,
        required this.imageUrl,
        required this.aboutMe,
        required this.skill1,
        required this.skill2,
        required this.phoneNo,
        required this.twitter,
        required this.instagram,
        required this.github});
}