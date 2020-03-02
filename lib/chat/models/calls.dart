import 'package:sophie/chat/base_widget/avatar.dart';
import 'package:sophie/chat/models/user.dart';
class Calls {
  final int id;
  final User user;
  final bool state;
  final String time;
  final String isOnline;
  Calls({
    this.id,
    this.user,
    this.state,
    this.time,
    this.isOnline,
});
}
final Calls call1 = Calls(
  id: 0,
  user: user1,
  state: true,
  time: "3m",
  isOnline: "online",
);
final Calls call2 = Calls(
  id: 1,
  user: user2,
  state: true,
  time: "1h",
  isOnline: "off",
);
final Calls call3 = Calls(
  id: 2,
  user: user3,
  state: false,
  time: "10m",
  isOnline: "online"
);
final Calls call4 = Calls(
  id: 3,
  user: user4,
  state: true,
  time: "5h",
  isOnline: "off"
);
final List<Calls> listCall = [call1,call2,call3,call4];