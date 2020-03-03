import 'package:sophie/custom/base_widgets/base_widget.dart';
import '../base_components.dart';

class ItemBase extends StatelessWidget {
  final Widget avatar;
  final Widget icon;

  ItemBase({
    this.avatar,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          avatar,
          icon
        ],
      ),
    );
  }
}
