import 'package:sophie/chat/base_widget/avatar.dart';
import 'package:sophie/chat/models/user.dart';

class Group{
  final int id;
  final List<User> listUser;
  final String nameGroup;
  final User urlAvatar;
  Group({
    this.id,
    this.listUser,
    this.nameGroup,
    this.urlAvatar
});
}

final Group group1 = Group(
  id: 0,
  listUser: [user2, user1, user7],
  nameGroup: "Best Friends",
  urlAvatar: ava1,
);
final Group group2 = Group(
  id: 0,
  listUser: [user5, user3, user4],
  nameGroup: "UIT chat",
  urlAvatar: ava2,
);
final Group group3 = Group(
  id: 0,
  listUser: [user1, user6],
  nameGroup: "Thanh le me",
  urlAvatar: ava3,
);
final Group group4 = Group(
  id: 0,
  listUser: [user2, user4, user5,user6],
  nameGroup: "Sing and Song",
  urlAvatar: ava4,
);

final List<Group> listGroup = [group1, group2, group3, group4];

final User ava4 = User(
  id: 6,
  name: 'Beauty Lukaku',
  urlImage: 'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
);
final User ava1 = User(
  id: 6,
  name: 'Beauty Lukaku',
  urlImage: 'https://images.unsplash.com/photo-1563387852576-964bc31b73af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
);
final User ava2 = User(
  id: 6,
  name: 'Beauty Lukaku',
  urlImage: 'https://images.unsplash.com/photo-1559628233-e9eb5d83882f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'off',
);
final User ava3 = User(
  id: 6,
  name: 'Beauty Lukaku',
  urlImage: 'https://images.unsplash.com/photo-1578616070222-50c4de9d5ade?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'await',
);