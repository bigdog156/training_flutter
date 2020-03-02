import 'base_widget.dart';

enum ChangeState {online, off, await, live}
@immutable
class ColorIcon extends StatelessWidget{
  final double widthBorder ;
  final double radiusIcon ;
  final Color borderColor;
  final ChangeState state;
  ColorIcon(this.widthBorder, this.radiusIcon, this.borderColor, this.state);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: widthBorder,
            style: BorderStyle.solid,
          )
      ),
      child: CircleAvatar(
        radius: radiusIcon,
        backgroundColor: changeState(state),
      ),
    );
  }
  Color changeState(ChangeState state){
    switch(state){
      case ChangeState.online:
        return Color(0xFF2CB9B0);
      case ChangeState.off:
        return Colors.grey;
      case ChangeState.await:
        return Color(0xFFF8C756);
      case ChangeState.live:
        return Colors.white;
      default:
        return Colors.red;
    }
  }
}

