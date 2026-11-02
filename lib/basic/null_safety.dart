/// Definition: null safety makes nullable and non-nullable values explicit.
void main() {
  String? nickname; // `?` means this String may be null.
  nickname = 'River';

  print(nickname?.toUpperCase() ?? 'NO NICKNAME');
}
