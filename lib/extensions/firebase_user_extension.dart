part of 'extensions.dart';

extension FirebaseUserExtension on UserCredential {
  UserLocal convertToUser(
          {String name = "no name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          int balance = 50000}) =>
      UserLocal(
          id: this.user?.uid,
          email: this.user?.email,
          name: name,
          balance: balance,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);
}
