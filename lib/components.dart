import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {required this.colour,
        required this.title,
        required this.onPressed,
        required this.animation,
        required this.animation2,
        required this.icon});

  final Color colour;
  final String title;
  final VoidCallback onPressed;
  final Animation animation;
  final Animation animation2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: animation2.value,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 325,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
              //   style: GoogleFonts.poppins(
              //       color: animation.value,
              //       fontSize: 14,
              //       fontWeight: FontWeight.w600),
              )
            ,
              SizedBox(
                width: 7,
              ),
              Icon(
                icon,
                color: Colors.black,
                weight: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MY_textField extends StatelessWidget {
  final String hint_text;
  var onchange;
  final double h;
  MY_textField({required this.hint_text , required this.onchange, required this.h});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: h,
      decoration: BoxDecoration(
          color: Color(0xff4E4B4A), borderRadius: BorderRadius.circular(10)),
      child: TextField(
        style: TextStyle(color: Colors.white),

        onChanged: onchange,
        decoration:
        InputDecoration(border: InputBorder.none, hintText: '$hint_text'),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// -----------------------------------

class RoundedButton2 extends StatelessWidget {
  const RoundedButton2({
    required this.colour,
    required this.title,
    required this.onPressed,
  });

  final Color colour;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 325,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                // style: GoogleFonts.poppins(
                //     color: Colors.black,
                //     fontSize: 14,
                //     fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------

class RoundedButton_withicon extends StatelessWidget {
  const RoundedButton_withicon(
      {required this.colour,
        required this.title,
        required this.onPressed,
        required this.icon});

  final Color colour;
  final String title;
  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 325,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                // style: GoogleFonts.poppins(
                //     color: Colors.black,
                //     fontSize: 14,
                //     fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 7,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------=======================-----------------------
class myiconbutton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;
  final Color color;
  const  myiconbutton(
      {required this.icon,
        required this.title,
        required this.onPressed,
        required this.color
      });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: color,
          ),
          onPressed: onPressed,
        ),
        Text(
          '$title',
          // style: GoogleFonts.poppins(fontSize: 14),
        )
      ],
    );
  }
}


// =================================

class RoundedButtonSmall extends StatelessWidget {
  const RoundedButtonSmall({
    required this.colour,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.icon,
    required this.iconColor,
    required this.textcolor

  });

  final Color colour;
  final String title;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final IconData icon;
  final Color iconColor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: iconColor,),
              SizedBox(width: 10,),
              Text(
                title,
                // style: GoogleFonts.poppins(
                //     color: textcolor,
                //     fontSize: 14,
                //     fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//=====================================================================
//
class MY_DropdownButton extends StatefulWidget {
  final String yourColumnName;
  final String hint_text;
  final ValueChanged<int?> onChanged;
  final double h;
  final String sql;
  int? selectedValue;



  MY_DropdownButton({
    required this.hint_text,
    required this.onChanged,
    required this.h,
    required this.sql,
    required this.yourColumnName, this.selectedValue,
  });

  @override
  State<MY_DropdownButton> createState() => _MY_DropdownButtonState();
}

class _MY_DropdownButtonState extends State<MY_DropdownButton> {
  // int? selectedValue;



  // Wrap the asynchronous operation in Future.sync
  Future<List<int>> listy() async {
    List<int> resultList = [];


    return resultList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.h,
      decoration: BoxDecoration(
        color: Color(0xff4E4B4A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: FutureBuilder<List<int>>(
        future: listy(),
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.waiting) {
          //   // Return a loading indicator or placeholder while waiting for the data
          //   return CircularProgressIndicator();
          if (snapshot.hasError) {
            // Handle error case
            return Text('Error fetching data: ${snapshot.error}');
          } else {
            // Data is available, use it to build your DropdownButton
            return DropdownButton<int>(
              value: widget.selectedValue, // You may need to manage the selected value using state
              onChanged: widget.onChanged,
              items: snapshot.data!.map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Center(
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
              underline: Container(),
              icon: Icon(Icons.arrow_drop_down, color: Colors.white),
              style: TextStyle(color: Colors.white),
              hint: Center(
                child: Text(
                  '    ${widget.hint_text}',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            );
          }
        },
      ),
    );
  }

}
