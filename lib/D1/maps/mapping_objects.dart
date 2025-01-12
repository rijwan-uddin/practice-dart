void main() {
  List<Map<String, String>> users = [
    {'firstName': 'John', 'lastName': 'Doe'},
    {'firstName': 'Jane', 'lastName': 'Smith'},
  ];

  List<String> fullNames = users.map((user) {
    return '${user['firstName']} ${user['lastName']}';
  }).toList();

  print(fullNames);
}
