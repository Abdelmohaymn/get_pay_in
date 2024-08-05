
import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import 'income_item.dart';

class InOutCard extends StatelessWidget{
  const InOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: Card(
        elevation: 2,
        color: ColorManager.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
        ),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IncomeItem(
                      icon: Icons.arrow_downward,
                      iconColor: ColorManager.green,
                      title: 'Income', amount: '\$ 20,000',
                    ),
                  ),
                  VerticalDivider(thickness:1.5 ,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IncomeItem(
                      icon: Icons.arrow_upward,
                      iconColor: ColorManager.red,
                      title: 'Outcome', amount: '\$ 17,000',
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: ClipPath(
                clipper: CicClipper(),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: ColorManager.lightPurple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10)
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class CicClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double h=size.height;
    double w=size.width;

    Path path = Path();
    path.lineTo(w, 0);
    Offset firsts = Offset(w-2, h/2);
    Offset firste = Offset(0, h-h/4);
    path.quadraticBezierTo(
        firsts.dx, firsts.dy, firste.dx, firste.dy
    );
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}


