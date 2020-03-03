import 'package:sophie/custom/base_widgets/base_widget.dart';
import 'package:sophie/custom/components/list_items/ava_state_text.dart';
import '../base_components.dart';

class AvatarCheckbox extends StatefulWidget{
  final String title;
  final double radius;
  final ChangeState state;

  AvatarCheckbox({this.title, this.radius, this.state,});

  @override
  _AvatarCheckboxState createState() => _AvatarCheckboxState();
}

class _AvatarCheckboxState extends State<AvatarCheckbox> {
  bool _tick = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
     AvatarStateText(
        title: widget.title,
        state: widget.state,
        radius: widget.radius,
        icon: Container(
          child: Checkbox(
            value: _tick,
            onChanged: (stg){
              setState(() {
                print(stg);
                _tick = !_tick;
              });
            },
          ),
        )
    );
  }
}