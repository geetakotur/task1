import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';




void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:Expanded(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          ],
        ),
        ),
      ),
    ),
  );
}

class Ticket extends StatefulWidget {
  final Color containerColor;
  final String imagePath;
  final String name;
  final String event;
  final String dateTime;
  final String place;

  const Ticket({
    Key? key,
    required this.containerColor,
    required this.imagePath,
    required this.name,
    required this.event,
    required this.dateTime,required this.place, required bool overlap,
  }) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}



class _TicketState extends State<Ticket> {
  Widget _buildTicketContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Position your common elements here
        Positioned(
          left: -10,
          bottom: 80,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: 80,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: -10,
          top: 15,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          top: 15,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: -10,
          top: 47,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          top: 47,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: -10,
          bottom: 45,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: 45,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: -10,
          bottom: 10,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: 10,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: 180,
          top: -10,
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: 180,
          bottom: -10,
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),

        Positioned(
          top: 0,
          right: 10,
          child: Container(
            padding: const EdgeInsets.only(bottom: 100, right: 6, left: 10),
            child: Text(
              'W84375GB837845G8',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Positioned(
          left: 20,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40), // Adjust the top margin as needed
                width: 110,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imagePath),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.event,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                   Row(
                     children: [
                       Icon(
                         Icons.location_on_outlined,
                         color: Colors.white,
                         size: 20,
                       ),
                       SizedBox(width: 2),
                       Text(
                         widget.dateTime,
                         style: TextStyle(
                           fontSize: 12,
                           color: Colors.white,
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 2,),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 2),
                        Text(
                          widget.place,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),

                  ],

                ),

              ),
            ],

          ),

        ),
        // Barcode widget
        Positioned(
          top:135,
          right:20,
          child: BarcodeWidget(
            barcode: Barcode.code128(),
            data: 'YourBarcodeDataHere',
            width: 330,
            height: 20,
            color: Colors.white,
            drawText: false,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 370,
          decoration: BoxDecoration(
            color: widget.containerColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: _buildTicketContent(),
        ),

        // Barcode widget

      ],

    );

  }
}

