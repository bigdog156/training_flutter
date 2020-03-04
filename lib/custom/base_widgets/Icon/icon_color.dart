import '../base_widget.dart';

@immutable
class ColorIcon extends StatelessWidget{
  final double widthBorder ;
  final double radiusIcon ;
  final Color borderColor;
  final ChangeState state;
  ColorIcon({this.widthBorder, this.radiusIcon, this.borderColor, this.state});
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
}

