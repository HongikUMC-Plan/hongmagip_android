import 'package:flutter/material.dart';
import 'package:hongmagip_android/screens/view.dart';
import 'detail_view/detail_page.dart';

class SubView extends StatefulWidget {
  final String type;
  final List<String> restaurantList;
  final Color containerColor;

  const SubView({
    Key? key,
    required this.type,
    required this.restaurantList,
    required this.containerColor,
  }) : super(key: key);

  @override
  _SubViewState createState() => _SubViewState();
}

class _SubViewState extends State<SubView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.03,
              child: Container()
          ),
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(widget.type, style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),),
              )),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.restaurantList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      showDetailPage(context, widget.restaurantList[index], widget.type);
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.containerColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.restaurantList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              letterSpacing: -1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 1,),
                  InkWell(
                    onTap: (){
                      Navigator.pop(
                        context, MaterialPageRoute(
                          builder: (context) => ViewScreen()),
                      );
                    },
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/image/뒤로가기.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Spacer(flex: 1,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
