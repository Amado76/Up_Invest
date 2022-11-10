// ignore_for_file: public_member_api_docs, sort_constructors_first
class AvatarModel {
  int? id;
  AvatarModel({
    this.id,
  });

  get avatarPath => _avatarMap[id];

  get avatarList => _avatarMap;

  final Map<int, String> _avatarMap = {
    1: 'assets/avatars/kitty.png',
    2: 'assets/avatars/dog.png',
    3: 'assets/avatars/man.png',
    4: 'assets/avatars/unicorn.png',
    5: 'assets/avatars/woman.png',
    6: 'assets/avatars/crocodile.png',
    7: 'assets/avatars/fox.png',
    8: 'assets/avatars/kid.png',
  };
}
