class User {
  final int id;
  final String name;
  final String urlImage;
  final String state;
  User({
    this.id,
    this.name,
    this.urlImage,
    this.state
  });
}
final User user1 = User(
  id: 0,
  name: 'Victorya Secret',
  urlImage: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
);
final User user2 = User(
  id: 1,
  name: 'Harry Loria',
  urlImage: 'https://images.unsplash.com/photo-1582396265304-66f20d80210e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'off',
);
final User user3 = User(
  id: 2,
  name: 'Material Layer',
  urlImage: 'https://images.unsplash.com/photo-1510520434124-5bc7e642b61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  state: 'online',
);
final User user4 = User(
  id: 3,
  name: 'Willia Maria',
  urlImage: 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  state: 'online',
);
final User user5 = User(
  id: 4,
  name: 'Merio Goo',
  urlImage: 'https://images.unsplash.com/photo-1441123694162-e54a981ceba5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  state: 'await',
);
final User user6 = User(
  id: 5,
  name: 'Olala roike',
  urlImage: 'https://images.unsplash.com/photo-1578616070222-50c4de9d5ade?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=956&q=80',
  state: 'off',
);
final User user7 = User(
  id: 6,
  name: 'Beauty Lukaku',
  urlImage: 'https://images.unsplash.com/photo-1560748526-881455a4e9b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  state: 'online',
);

List<User> listUser = [user1,user2,user3,user4, user5,user6, user7];