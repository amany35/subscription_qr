import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key key,
  }) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.zoom_in_sharp,color: Color.fromRGBO(85, 24, 114,1),),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            //  divisions: 5,
            activeColor: Color.fromRGBO(85, 24, 114,1) ,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          Icon(Icons.zoom_out_sharp,color: Color.fromRGBO(85, 24, 114,1),),
        ],
      ),
    );
  }
}