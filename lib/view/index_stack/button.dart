import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const ToggleButton({
    super.key,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
