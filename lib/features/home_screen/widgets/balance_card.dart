
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';

import '../../../shared/widgets/horizontal_space.dart';

class BalanceCard extends StatelessWidget{
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 2,
        color: ColorManager.lightBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: FontsHelper.workSans(color: ColorManager.grey,size: 12,weight: FontWeightHelper.medium),
                  ),
                  Text(
                    '\$ 25,000.40',
                    style: FontsHelper.workSans(color: ColorManager.white,size: 20,weight: FontWeightHelper.bold),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'My Wallet',
                        style: FontsHelper.workSans(color: ColorManager.grey,size: 12,weight: FontWeightHelper.medium),
                      ),
                      const HorizontalSpace(width:10),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: ColorManager.white,
                        child: Icon(Icons.arrow_forward,color: ColorManager.lightBlack,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ClipPath(
                clipper: CicClipper(),
                child: Container(
                  width: 50,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: ColorManager.yellow,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10)
                    )
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  width: 90,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: ColorManager.blue2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10)
                    )
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ClipPath(
                clipper: CicClipper2(),
                child: Container(
                  width: 70,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: ColorManager.mintGreen,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10)
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

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
     double h=size.height;
     double w=size.width;

     Path path = Path();
     path.lineTo(0, 0);
     Offset firsts = Offset(5, h/2);
     Offset firste = Offset(w/2, h-h/3);
     path.quadraticBezierTo(
       firsts.dx, firsts.dy, firste.dx, firste.dy
     );
     Offset seconds = Offset(w-5, h-h/4);
     Offset seconde = Offset(w, h);
     path.quadraticBezierTo(
         seconds.dx, seconds.dy, seconde.dx, seconde.dy
     );
     path.lineTo(w, 0);
     path.close();
     return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}

class CicClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double h=size.height;
    double w=size.width;

    Path path = Path();
    path.lineTo(0, 0);
    Offset firsts = Offset(3, h-h/4);
    Offset firste = Offset(w, h);
    path.quadraticBezierTo(
        firsts.dx, firsts.dy, firste.dx, firste.dy
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class CicClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double h=size.height;
    double w=size.width;

    Path path = Path();
    path.lineTo(0, h/2-5);
    Offset firsts = Offset(w/2, h/4);
    Offset firste = Offset(w-w/3, h);
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