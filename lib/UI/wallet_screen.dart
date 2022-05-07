import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.h, vertical:10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0.h,
                  ),
                  const Text("BALANCE", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5
                  ),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.h, vertical: 20.0.w),
                    child:  Text("\$ 8,235.45", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      fontSize: 30.0.sp,
                    ),),
                  ),
                  // CARD WIDGET
                  Center(
                    child: Container(
                      height: 198.0.h,
                      width: 350.0.w,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(15.0.r)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 13.0.w),
                              child: Text("BOA.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                  fontSize: 20.0.sp,
                                ),
                              ),
                            ),
                            Center(
                              child:
                              Text("5122 7568 2354 1247",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  fontSize: 20.0.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 20.0.h, left: 5.0.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("05/24",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      fontSize: 20.0.sp,
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 30.0.w),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                        children:const [

                                      CircleAvatar(backgroundColor: Colors.black,
                                        radius: 17.0,
                                      ),
                                      Positioned(
                                        left: 23.0,
                                          child: CircleAvatar(backgroundColor: Colors.white,
                                            radius: 17.0,
                                          ),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(20.0.r), topLeft: Radius.circular(20.0.r))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 15.0.h),
                      child: Center(
                        child: Container(
                          height: 90.0.h,
                          width: 300.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                           // color: Colors.black,
                            border: Border.all(color: Colors.grey, width: 1.0.w)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(icon: const Icon(Icons.call_made_sharp, color: Colors.black,), onPressed: () {},),
                                  Text("Transfer",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0.sp
                                    ),
                                  )
                                ],
                              ), Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(icon: const Icon(Icons.add_circle_outline_outlined, color: Colors.black,), onPressed: () {  },),
                                  Text("Deposit",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                        fontSize: 12.0.sp
                                    ),
                                  )
                                ],
                              ), Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(icon:const Icon(Icons.account_balance, color: Colors.black,), onPressed: () {  },),
                                  Text("Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                        fontSize: 12.0.sp
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
