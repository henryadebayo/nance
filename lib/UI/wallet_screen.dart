import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatefulWidget {

   const WalletScreen({Key? key,}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}


class _WalletScreenState extends State<WalletScreen> {
 double _currentValue = 0;
final double _userBalance = 9500.45;

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
                    child:  Text("\$ ${_userBalance}", style: TextStyle(
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
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5122",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2.0,
                                        fontSize: 20.0.sp,
                                      ),
                                    ),
                                    Text("7568",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2.0,
                                        fontSize: 20.0.sp,
                                      ),
                                    ),
                                    Text("2354",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2.0,
                                        fontSize: 20.0.sp,
                                      ),
                                    ),
                                    Text("1247",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2.0,
                                        fontSize: 20.0.sp,
                                      ),
                                    ),
                                  ],
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                           // color: Colors.black,
                            border: Border.all(color: Colors.white54, width: 1.0.w),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xFFF5F5F5),
                                  offset: Offset(4,4),
                                  blurRadius: 10.0,
                                  spreadRadius:1,
                                ),
                                BoxShadow(
                                  color: Color(0xFFFAFaFA),
                                  offset: Offset(-4, -4),
                                  blurRadius: 10.0,
                                  spreadRadius:1,
                                ),
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(icon: const Icon(Icons.call_made_sharp, color: Colors.black,), onPressed: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                        builder: (context){
                                      return StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState) {
                                          return Container(
                                            height: 500.0.h,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20.0
                                                      .r),
                                                  topLeft: Radius.circular(20.0
                                                      .r),)
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .center,
                                              children: [
                                                SizedBox(height: 20.0.h,),
                                                Text("RECEIVERS ACCOUNT NUMBER",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      letterSpacing: 0.1.w
                                                  ),),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.0.w,
                                                      vertical: 10.0.h),
                                                  child: TextFormField(
                                                    keyboardType: TextInputType
                                                        .number,
                                                    decoration: InputDecoration(
                                                      hintText: "Input Receivers account number",
                                                      focusColor: Colors.white,
                                                      //add prefix icon
                                                      // prefixIcon: Icon(
                                                      //   Icons.person_outline_rounded,
                                                      //   color: Colors.grey,
                                                      // ),
                                                      //errorText: "Error",
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(10.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide:
                                                        const BorderSide(
                                                            color: Colors.amber,
                                                            width: 1.0),
                                                        borderRadius: BorderRadius
                                                            .circular(10.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20.0.h,),
                                                const Text("AMOUNT TO TRANSFER",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      letterSpacing: 0.01
                                                  ),),
                                                SizedBox(
                                                  height: 10.0.h,
                                                ),
                                                Text("\$ ${_currentValue
                                                    .toInt()}",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.01,
                                                    fontSize: 50.0.sp,
                                                  ),),
                                                SizedBox(
                                                  height: 20.0.h,
                                                ),
                                                Slider(
                                                  value: _currentValue,
                                                  min: 0.0,
                                                  max: _userBalance,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _currentValue = value;
                                                    });
                                                    // print(
                                                    //     _currentValue.toInt());
                                                  },
                                                  activeColor: Colors
                                                      .amberAccent,
                                                  inactiveColor: Colors
                                                      .grey[200],
                                                  thumbColor: Colors.amber,
                                                ),
                                                SizedBox(height: 20.0.h,),
                                                Padding(
                                                  padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                      height: 50.0,
                                                      child: TextButton(onPressed: (){}, child: Center(
                                                          child:
                                                          Text("TRANSFER \$${_currentValue.toInt()}",
                                                            style:  TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      letterSpacing: 0.01,
                                                     fontSize: 20.0.sp,
                                                    ),)
                                                      ),
                                                        style: ButtonStyle(
                                                          backgroundColor: MaterialStateProperty.all(
                                                          Colors.amber,

                                                          ),
                                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                              side: const BorderSide(
                                                                color: Colors.amberAccent,
                                                                width: 2.0,
                                                                          ),
                                                                      ),
                                                                  ),
                                                          elevation: MaterialStateProperty.all(2.0),
                                                        ),
                                                      ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      );
                                    });
                                  },),
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
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top:25.0.h,left: 20.0.w, right: 20.0.w),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween
                            ,children: const [
                            Text("Today", style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.w500,
                              letterSpacing: 1.0
                            ),),
                            Text("-\$ 1,200.30", style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                              letterSpacing: 1.0
                            ),),

                          ],),
                          Divider(color: Colors.grey, thickness: 0.5.h,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(itemBuilder: (BuildContext ctx, int index){
                        return ListTile(
                          leading: const Icon(Icons.person_pin, color: Colors.black,),
                          title: Text("Enike", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0.sp
                          ),),
                          trailing: Text("\$ 200.05", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0.sp
                          ),),
                          subtitle: const Text("Escrow Service",
                             style: TextStyle(
                               color: Colors.grey
                             ),
                          ),
                        );
                      }),
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
