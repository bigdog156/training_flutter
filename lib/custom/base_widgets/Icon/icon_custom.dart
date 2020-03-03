import '../base_widget.dart';

class IconCustom extends StatelessWidget{
  final double size;
  final double widthBorder;
  final Color colorBorder;
  final Color color;
  final Widget icon;
  IconCustom({this.size, this.color, this.icon,this.colorBorder, this.widthBorder});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          width: widthBorder,
          color: colorBorder,
          style: BorderStyle.solid
        ),
      ),
      child: icon,
    );
  }
}