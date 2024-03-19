import 'package:flutter/material.dart';

class messagescreen extends StatefulWidget {
  const messagescreen({super.key});

  @override
  State<messagescreen> createState() => _messagescreenState();
}

class _messagescreenState extends State<messagescreen> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4,
    child: Scaffold(
      floatingActionButton: Container(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          child: Icon(Icons.chat),
          onPressed: (){},
        ),
      ),
      
      appBar: AppBar(
         backgroundColor : Colors.green,
         title: new Text("WhatsApp", style: TextStyle(color: Color.fromARGB(255, 235, 237, 236), fontSize: 28.0, fontWeight: FontWeight.w700),),
          
         actions: <Widget>[
         Icon(Icons.search),
            // Widget for implementing the three-dot menu
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return [
                  // In this case, we need 5 popupmenuItems one for each option.
                   PopupMenuItem(child: Text('New Group')),
                 
                ];
              },
            ),
          ],
           bottom:  TabBar(
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
    tabs: [
              Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  )),
     Tab(
                  child: Text('CHATS', style: TextStyle(color: Colors.white)),
                ),
                
],
 labelColor: Colors.white,
  
  
),
    ),
     body:  TabBarView(
          children: [
            Center(child: Text('This feature is coming soon')),
           
            
         
          ],
   // body:
    //TabBarView(
       //children: [videoscreen(),chatscreen(chatTitle: chattitle, chatMessage: chatMessage, seenStatusColor: seenStatusColor), statusscreen(),callscreen(),],
    ),
    ),
    
    );
    
    
    
  }
}


      