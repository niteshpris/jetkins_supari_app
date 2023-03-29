import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrdersFragement extends StatefulWidget {
  String? restorationId="app";
  @override
  State<StatefulWidget> createState() => orderState();
}

class orderState extends State<OrdersFragement> with RestorationMixin{
  @override
  String? get restorationId => widget.restorationId;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "MY ORDER",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/filter.png",
              height: 25,
              width: 25,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20,10,20,10),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(



                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(width: 0.5, color: Colors.grey)),

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [

                             Image.asset("assets/calendar.png",height: 15,width: 15,),
                              GestureDetector(
                                onTap: (){
                                  _restorableDatePickerRouteFuture.present();
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text("From Date",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      Row(
                                        children: [
                                          Text("Jan 13,2022",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold)),
                                          Image.asset("assets/dropdown.png",height: 15,width: 15,),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(



                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(width: 0.5, color: Colors.grey)),

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [

                              Image.asset("assets/calendar.png",height: 15,width: 15,),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text("To Date",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Row(
                                      children: [
                                        Text("Jan 15,2022",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold)),
                                        Image.asset("assets/dropdown.png",height: 15,width: 15,),
                                      ],
                                    ),

                                  ],
                                ),
                              )

                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.5, color: Colors.grey)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Order Number",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.start),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text("DB686876e87638",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Total Amount",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.start),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text("₹1400",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/check.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                    Text("Delivered on July 12,2022",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )),
                          ),
                          Divider(thickness: 0.5, color: Colors.grey),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                  child: Text("View Details",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green[50],
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.5, color: Colors.green)),
                                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                  child: Text("Delivered",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12)))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final RestorableDateTime _selectedDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
      BuildContext context,
      Object? arguments,
      ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2099),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }
}
