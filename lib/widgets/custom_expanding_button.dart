import 'package:flutter/material.dart';

class CustomExpandingDropdown extends StatefulWidget {
  final List<String> dropdownItems;
  final List<Function()> itemActions;
  final String mainText;
  final IconData leftIconData;
  final EdgeInsets margin;
  final EdgeInsets contentPadding;
  final bool isExpanded;
  final VoidCallback onTap;

  CustomExpandingDropdown({
    required this.mainText,
    required this.leftIconData,
    required this.margin,
    required this.contentPadding,
    required this.dropdownItems,
    required this.itemActions,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  _CustomExpandingDropdownState createState() =>
      _CustomExpandingDropdownState();
}

class _CustomExpandingDropdownState extends State<CustomExpandingDropdown> {
  @override
  Widget build(BuildContext context) {
    // Calculate the height based on the number of items.
    double containerHeight = widget.isExpanded
        ? (widget.dropdownItems.length * 40.0 + 106.0) // Adjust 40.0 for item height.
        : 106.0;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10.0), // Space before the button
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: containerHeight, // Use the calculated height.
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF021864), Color(0xFF556DC1)],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    widget.onTap();
                  },
                  child: Container(
                    margin: widget.margin,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(
                            widget.leftIconData,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            widget.mainText,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(
                            widget.isExpanded
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (widget.isExpanded)
                  Padding(
                    padding: widget.contentPadding,
                    child: Column(
                      children: List.generate(widget.dropdownItems.length,
                              (index) {
                            final item = widget.dropdownItems[index];
                            final itemAction = widget.itemActions[index];
                            return TextButton(
                              onPressed: () {
                                itemAction();
                                setState(() {
                                  widget.onTap();
                                });
                              },
                              child: Text(
                                item,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10.0), // Space after the button
        ],
      ),
    );
  }
}
