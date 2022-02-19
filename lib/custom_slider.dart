import 'package:custom_slider/extensions/context.dart';
import 'package:custom_slider/sliders_component/slider_text.dart';
import 'package:custom_slider/sliders_component/vertical_slider.dart';
import 'package:flutter/material.dart';

import 'COL/cart_item.dart';
import 'sliders_component/horzontal_container.dart';

class CustomSlider extends StatefulWidget {
  final int length;
  const CustomSlider({Key? key, this.length = 10}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double slider = 6;
  @override
  Widget build(BuildContext context) {
    int dividers = ((context.getDeviceWidth - 20.0) ~/ widget.length).toInt();
    print(dividers);
    print(widget.length);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const SizedBox(height: 100),

          const Padding(
            padding: const EdgeInsets.all(20.0),
            child:   CartItem(value: 32, isMaxed: true,),
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.black,
            height: 100,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const SliderText(
                  text: '0',
                  leftValue: 5.0,
                ),
                SliderText(
                  text: '${widget.length}',
                  leftValue: (dividers * widget.length) + 5,
                ),
                for (int i = 0; i < widget.length + 1; i++)
                  VerticalSlider(
                      leftValue: 10.0 + (i != 0 ? (i * dividers) : 0)),

                //============
                const Align(
                  // top: 366.0,
                  // left: 10.0,
                  child: HorizontalContainer(),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  top: 0,
                  bottom: 0,
                  left: (dividers * slider), //316.0,
                  child: Container(
                    width: dividers.toDouble(),
                    height: dividers.toDouble(),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                    child: Center(
                      child: Text(
                        '${slider.toInt()}',
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            onChanged: (value) {
              setState(() {
                slider = double.parse(value.isEmpty ? "0.0" : value);
              });
            },
          )
        ],
      ),
    );
  }
}


