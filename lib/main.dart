import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Contact list'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  TextFormField(
                  decoration: InputDecoration(
                    label: Text('Contact Name'),
                    hintText: "Enter your name ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                )
                ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: Text('Contact Number'),
                        hintText: "Enter your number ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                        onPressed: (){}, child:Text('Save',style: TextStyle(fontSize: 15,color: Colors.white,backgroundColor: Colors.blue),)
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    child: ElevatedButton(
                        onPressed: (){}, child:Text('Update',style: TextStyle(fontSize: 15,color: Colors.white,backgroundColor: Colors.blue),)
                    ),
                  )
                ],
              ),

              Column(
                children: [
                    Container(
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  padding: EdgeInsets.all(5),
             physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(

                          visualDensity: VisualDensity.standard,
                          tileColor: Colors.grey,
                          title: Text("Eric",style: TextStyle(fontSize: 25),),
                          subtitle: Text('9876543210'),
                          trailing: Container(
                            width: 50,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Icon(Icons.edit),
                                 Icon(Icons.delete)
                               ],
                             ),
                          )

                        ),
                      );
                    },
                ),
              )
                ],
              )


            ],
          ),
        ),
      ),

    );
  }
}
