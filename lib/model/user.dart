part of 'models.dart';

class UserLocal extends Equatable {
  final String? id;
  final String? email;
  final String? name;
  final String? profilePicture;
  final List<String>? selectedGenres;
  final String? selectedLanguage;
  final int? balance;

  UserLocal(
      {this.id,
      this.email,
      this.name,
      this.profilePicture,
      this.balance,
      this.selectedGenres,
      this.selectedLanguage});

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
        selectedGenres,
        selectedLanguage,
        balance
      ];

  @override
  String toString() {
    return "$id - $email $name";
  }
}
