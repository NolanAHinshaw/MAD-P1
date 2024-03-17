import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> pages;

  const NavigationButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.pages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDropdownMenu(context);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue, // Customize the color according to your design
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDropdownMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: DropdownButton<String>(
            items: pages.map((String page) {
              return DropdownMenuItem<String>(
                value: page,
                child: Text(page),
              );
            }).toList(),
            onChanged: (String? selectedPage) {
              if (selectedPage != null) {
                // Navigate to the selected page
                Navigator.of(context).pop(); // Close the dropdown menu
                Navigator.pushNamed(
                    context, selectedPage); // Navigate to the selected page
              }
            },
          ),
        );
      },
    );
  }
}
