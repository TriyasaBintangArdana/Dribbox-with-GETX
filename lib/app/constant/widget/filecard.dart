import 'package:flutter/material.dart';

class FileCard extends StatelessWidget {
  final String title;
  final String date;
  final String imagePath;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onMorePressed;

  const FileCard({
    Key? key,
    required this.title,
    required this.date,
    required this.imagePath,
    required this.backgroundColor,
    required this.textColor,
    this.onMorePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
      width: 168,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
              const Spacer(),
              IconButton(
                onPressed: onMorePressed ?? () {},
                icon: Icon(Icons.more_vert_sharp, color: textColor),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          Text(date, style: TextStyle(fontSize: 10, color: textColor)),
        ],
      ),
    );
  }
}
