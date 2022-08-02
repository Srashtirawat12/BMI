import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key,
      required this.gender,
      required this.icon,
      required this.onTap,
      required this.isSelected})
      : super(key: key);
  final IconData icon;
  final String gender;
  final onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? cCardPrimaryBGColorSelected : cCardPrimaryBGColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        margin: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            this.icon,
            size: 100,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            this.gender,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ]),
      ),
    );
  }
}

class AWcard extends StatelessWidget {
  const AWcard({
    Key? key,
    this.title = '',
    this.value = 0,
    required this.onPressedMinus,
    required this.onPressedPlus,
  }) : super(key: key);
  final String title;
  final int value;
  final onPressedMinus;
  final onPressedPlus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 34, 17, 69),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            '${this.value}',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonRound(text: '-', onPressed: this.onPressedMinus),
              SizedBox(width: 20),
              ButtonRound(text: '+', onPressed: this.onPressedPlus),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonRound extends StatelessWidget {
  const ButtonRound({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: RawMaterialButton(
        padding: const EdgeInsets.all(4),
        onPressed: this.onPressed,
        shape: const CircleBorder(),
        fillColor: const Color(0xffa0d033),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
    required this.onChanged,
    this.title = '',
    this.unit = '',
    this.value = 0,
  }) : super(key: key);

  final onChanged;
  final String title;
  final String unit;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 17, 7, 75),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${this.value}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                this.unit,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Color.fromARGB(255, 219, 58, 112),
              inactiveTrackColor: Color.fromARGB(255, 141, 74, 96),
              thumbColor: Color.fromARGB(255, 214, 58, 219),
              overlayColor: Color.fromARGB(255, 219, 58, 58),
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 10.0,
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 20.0,
              ),
            ),
            child: Slider(
              value: this.value.toDouble(),
              min: 0.0,
              max: 250.0,
              onChanged: this.onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        color: Color.fromARGB(255, 207, 139, 209),
        height: 5,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 10.0,
          bottom: 5.0,
        ),
        padding: EdgeInsets.only(
          bottom: 50,
        ),
        child: Center(
          child: Text(
            this.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
