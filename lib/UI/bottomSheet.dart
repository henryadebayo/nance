import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../PROVIDERS/wallet_providers.dart';

class TransferBottomSheeet extends StatefulWidget {

   const TransferBottomSheeet({
    Key? key,
  }) : super(key: key);

  @override
  State<TransferBottomSheeet> createState() => _TransferBottomSheeetState();
}

class _TransferBottomSheeetState extends State<TransferBottomSheeet> {
  double currentValue = 0;

  double bal = 2000;

  @override
  Widget build(BuildContext context) {
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
                Container(
                  height: 5.0.h,
                  width: 60.0.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(height: 25.0.h,),
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
                Text( context.watch<WalletProvider>().userBalance,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0.sp,
                  ),),
                SizedBox(
                  height: 20.0.h,
                ),
                Slider(
                  value: currentValue,
                  min: 0.0,
                  max:context.watch<WalletProvider>().mainuserBalance,
                  onChanged: (value) {
                    setState(() {
                       currentValue = value;
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
                        Text("TRANSFER \$${currentValue.toInt()}",
                          style:  TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.01,
                            fontSize: 18.0.sp,
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
  }
}

