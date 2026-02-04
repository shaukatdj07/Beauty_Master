import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .5,
      width:width * 1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8E5AF7),
            Color(0xFFB18CFE),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(35),
          bottomLeft: Radius.circular(35),
        ),
      ),
      child: Positioned(
        top: 130,
        left:0,
        right: 0,
        child: Center(
          child: Container(
            height: height * .58,
            width: width * .58,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: .15)
            ),
            child: Center(
              child: Container(
                  height: height * .46,
                  width: width * .46,
                  //color: Colors.purpleAccent,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: .15),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: .5),
                      width: 6
                    ),
                  ),
                child: Container(
                  height: height * .34,
                  width: width * .34,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your Score',style: TextStyle(color: Color(0xFF8E5AF7), fontSize: 16),),
                      SizedBox(height: 6),
                      Text('150 pt',style: TextStyle(color: Color(0xFF8E5AF7), fontSize: 26, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
