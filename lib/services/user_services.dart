part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(UserLocal user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<UserLocal> getUser(String id) async {
    DocumentSnapshot snap = await _userCollection.doc(id).get();
    return UserLocal(
      id: id,
      email: snap["email"],
      name: snap["name"],
      profilePicture: snap["profilePicture"],
      balance: snap["balance"],
      selectedLanguage: snap["selectedLanguage"],
      selectedGenres: (snap["selectedGenres"] as List).map((e) => e.toString()).toList()
    );
  }
}
