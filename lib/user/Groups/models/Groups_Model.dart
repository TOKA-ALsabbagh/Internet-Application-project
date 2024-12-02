//
// class Groups {
//   final int id;
//   final String name;
//   final Owner? owner;
//   final List<UserInFolder> listOfUsers;
//   final List<String> listOfFiles;
//   final List<String> settings;  // Add settings as a List of strings
//
//   Groups({
//     required this.id,
//     required this.name,
//     this.owner,
//     required this.listOfUsers,
//     required this.listOfFiles,
//     required this.settings,  // Include settings in the constructor
//   });
//
//   factory Groups.fromJson(Map<String, dynamic> json) {
//     return Groups(
//       id: json['id'],
//       name: json['name'],
//       owner: json['owner'] != null ? Owner.fromJson(json['owner']) : null,
//       listOfUsers: json['usersInFolder'] != null
//           ? List<UserInFolder>.from(json['usersInFolder'].map((user) => UserInFolder.fromJson(user)))
//           : [],
//       listOfFiles: json['files'] != null
//           ? List<String>.from(json['files'].map((file) => file['name'] ?? ""))
//           : [],
//       settings: json['settings'] != null
//           ? List<String>.from(json['settings'])
//           : [],  // Handle the settings field
//     );
//   }
// }
//
// class UserInFolder {
//   final int id;
//   final String status;
//   final User user;  // This is the full user object
//
//   UserInFolder({
//     required this.id,
//     required this.status,
//     required this.user,  // Include full user info
//   });
//
//   factory UserInFolder.fromJson(Map<String, dynamic> json) {
//     return UserInFolder(
//       id: json['id'],
//       status: json['status'] ?? "", // Map the `status` field
//       user: User.fromJson(json['user']), // Pass user object
//     );
//   }
// }
//
// class User {
//   final int id;
//   final String fullname;
//   final String email;
//   final String role;
//
//   User({
//     required this.id,
//     required this.fullname,
//     required this.email,
//     required this.role,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       fullname: json['fullname'] ?? "",
//       email: json['email'] ?? "",
//       role: json['role'] ?? "",
//     );
//   }
// }
//
// class Owner {
//   final int id;
//   final String fullname;
//   final String email;
//   final String role;
//
//   Owner({
//     required this.id,
//     required this.fullname,
//     required this.email,
//     required this.role,
//   });
//
//   factory Owner.fromJson(Map<String, dynamic> json) {
//     return Owner(
//       id: json['id'],
//       fullname: json['fullname'],
//       email: json['email'],
//       role: json['role'],
//     );
//   }
// }
class Groups {
  final int id;
  final String name;
  final Owner? owner;
  final List<UserInFolder> listOfUsers;
  final List<File> listOfFiles;
  final List<String> settings;

  Groups({
    required this.id,
    required this.name,
    this.owner,
    required this.listOfUsers,
    required this.listOfFiles,
    required this.settings,
  });

  factory Groups.fromJson(Map<String, dynamic> json) {
    return Groups(
      id: json['id'],
      name: json['name'],
      owner: json['owner'] != null ? Owner.fromJson(json['owner']) : null,
      listOfUsers: json['usersInFolder'] != null
          ? List<UserInFolder>.from(json['usersInFolder'].map((user) => UserInFolder.fromJson(user)))
          : [],
      listOfFiles: json['files'] != null
          ? List<File>.from(json['files'].map((file) => File.fromJson(file)))
          : [],
      settings: json['settings'] != null
          ? List<String>.from(json['settings'])
          : [],
    );
  }
}

class UserInFolder {
  final int id;
  final String status;
  final User user;

  UserInFolder({
    required this.id,
    required this.status,
    required this.user,
  });

  factory UserInFolder.fromJson(Map<String, dynamic> json) {
    return UserInFolder(
      id: json['id'],
      status: json['status'] ?? "",
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final int id;
  final String fullname;
  final String email;
  final String role;

  User({
    required this.id,
    required this.fullname,
    required this.email,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullname: json['fullname'] ?? "",
      email: json['email'] ?? "",
      role: json['role'] ?? "",
    );
  }
}

class Owner {
  final int id;
  final String fullname;
  final String email;
  final String role;

  Owner({
    required this.id,
    required this.fullname,
    required this.email,
    required this.role,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      id: json['id'],
      fullname: json['fullname'],
      email: json['email'],
      role: json['role'],
    );
  }
}
class File {
  final int id;
  final String name;
  final String url;
  final String status;
  final User? bookedUser;
  final int folderId;

  File({
    required this.id,
    required this.name,
    required this.url,
    required this.status,
    this.bookedUser,
    required this.folderId,
  });

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      id: json['id'],
      name: json['name'] ?? "",
      url: json['url'] ?? "",
      status: json['status'] ?? "",
      bookedUser: json['bookedUser'] != null ? User.fromJson(json['bookedUser']) : null,
      folderId: json['folderId'],
    );
  }
}

