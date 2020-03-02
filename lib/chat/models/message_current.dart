class MessageData {
  final int id;
  final String name;
  final String urlImage;
  final String state;
  final String message;
  final String time;
  final bool read;
  MessageData({
    this.id,
    this.name,
    this.urlImage,
    this.state,
    this.message,
    this.time,
    this.read}
  );
}

final MessageData mess1 = MessageData(
  id: 0,
  name: 'Victorya Secret',
  urlImage: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
  message: 'What up? ... ',
  time: '2m',
  read: true,
);

final MessageData mess2 = MessageData(
  id: 1,
  name: 'Lumia Vicy',
  urlImage: 'https://images.unsplash.com/photo-1582396265304-66f20d80210e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'off',
  message: 'Ăn cơm chưa ...',
  time: '1h',
  read: true,
);
final MessageData mess3 = MessageData(
  id: 2,
  name: 'Levi',
  urlImage: 'https://images.unsplash.com/flagged/photo-1576212152884-614580e3d5ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
  message: 'Ăn rồi ... rồi chưa ăn gì luôn à',
  time: '5m',
  read: false,
);
final MessageData mess4 = MessageData(
  id: 3,
  name: 'Sirius Black',
  urlImage: 'https://images.unsplash.com/photo-1572863141204-83031c77e65a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
  message: 'Không nay nhịn giảm cân để còn đi chơi bời linh tinh chớ má...',
  time: '15m',
  read: false,
);
final MessageData mess5 = MessageData(
  id: 4,
  name: 'Harry Potter',
  urlImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'await',
  message: 'Oke ... Nhịn tiếp đi ',
  time: '12m',
  read: true,
);
final MessageData mess6 = MessageData(
  id: 5,
  name: 'Rober Terry',
  urlImage: 'https://images.unsplash.com/photo-1510520434124-5bc7e642b61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'off',
  message: "What do you do, Secret ?",
  time: '10m',
  read: true,
);
final MessageData mess7 = MessageData(
  id: 6,
  name: 'Hano Vans',
  urlImage: 'https://images.unsplash.com/photo-1582396265304-66f20d80210e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
  message: 'I lala ...',
  time: '5m',
  read: false,
);
final MessageData mess8 = MessageData(
  id: 0,
  name: 'Mecr Gorm',
  urlImage: 'https://images.unsplash.com/photo-1582396265304-66f20d80210e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'online',
  message: 'I go to school ... And i seeing ....',
  time: '5m',
  read: true,
);

final MessageData mess9 = MessageData(
  id: 1,
  name: 'Phine Dumlador',
  urlImage: 'https://images.unsplash.com/photo-1582396265304-66f20d80210e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  state: 'off',
  message: 'Let gooooooo ...',
  time: '5m',
  read: true,
);



List<MessageData> listMessage = [mess1, mess2, mess3, mess4,mess5,mess6,mess7,mess8, mess9];