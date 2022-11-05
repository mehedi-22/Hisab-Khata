import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget menuBox({String boxText='', IconData icon = Icons.account_circle_outlined,String route='/menu'}){
      return Expanded(
        child: ElevatedButton.icon(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 50,
          ),
          onPressed: () {
              if(route != '/menu'){
                Navigator.pushNamed(context, route);
              }
          },
          label:Text(
            boxText,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Color.fromRGBO(63, 51, 81,
                  1.0),
              padding: EdgeInsets.all(10.0),
              minimumSize: Size(120, 120),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0))),
        ),
      );
    }



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Center(
          child: Text(
            'Hisab Rakhi',
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor:Color.fromARGB(255, 11, 168, 230),
        child: ListView(
          children: [
            DrawerHeader(
              child: (Container(
                child: const Center(
                  child: Text(
                    'Hisab Rakhi',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                //color: Color.fromARGB(255, 7, 145, 214),
              )),
            ),
            Divider(
              thickness: 4.0,
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.home),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                    color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.person),
              title: const Text(
                'Customer',
                style: TextStyle(
                  fontSize: 18,
                    color: Colors.white
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.report),
              title: const Text(
                'Report',
                style: TextStyle(
                  fontSize: 18,
                    color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.settings),
              title: const Text(
                'Setting',
                style: TextStyle(
                  fontSize: 18,
                    color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                Row(
                  children: <Widget>[
                    menuBox(boxText: 'overall sell',icon:Icons.add_chart_outlined ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    menuBox(boxText: 'Overall Due',icon:Icons.account_balance_sharp ),

                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: <Widget>[
                     menuBox(boxText:'Customer',icon:Icons.search_off_outlined,route: '/' ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    menuBox(boxText: 'customer',icon: Icons.add_circle_outline,route: '/add')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
