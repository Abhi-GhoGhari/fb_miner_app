class UserModal {
  var uid;
  var displayname;
  var email;
  var photoUrl;
  var phoneNumber;

  UserModal(
    this.uid,
    this.displayname,
    this.email,
    this.photoUrl,
    this.phoneNumber,
  );

  factory UserModal.froMap(Map Data) => UserModal(
        Data['uid'],
        Data['name'],
        Data['email'],
        Data['photoUrl'],
        Data['phoneNumber'],
      );

  Map<String, dynamic> get toMap => {
        'uid': uid,
        'displayName': displayname ?? "DEMO User",
        'email': email ?? "DEMO@Email",
        'phoneNumber': phoneNumber ?? "NO NUMBER",
        'photoUrl': photoUrl ??
            "https://seds.ca/wp-content/uploads/2019/05/user-placeholder.png",
      };
}
