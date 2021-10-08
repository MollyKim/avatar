import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<String> outerList = [];
List<String> dressList = [];
List<String> topList = [];
List<String> pantsList = [];
List<String> skirtList = [];
List<Widget> extracted = <Widget>[Container(height:370,child: Image.asset('assets/avatar.png'),key: listKey[22],),];
List<Widget> extractedOuterChildren = <Widget>[Container(height:370,width: 100,key: listKey[23],)];

List<Key> listKey = List.generate(24, (index) => UniqueKey());

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50,),
            avatar(),
            bottomClothes(),
            Divider(thickness: 1,),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  avatar () {
    if(outerList.isEmpty)
      return Stack(
        alignment: Alignment.topCenter,
        children: extracted,
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: extracted,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: extractedOuterChildren,
          )
        ],
      );
    // else
    //   return Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Stack(
    //           alignment: Alignment.topCenter,
    //           children: [
    //             Container(height:370,child: Image.asset('assets/avatar.png')),
    //             if(topList.length==2) ...[
    //               Positioned(child: Image.asset(topList[0],height: 370,)),
    //               Positioned(child: Image.asset(topList[1],height: 370,)),
    //             ],
    //             if(topList.length==1)
    //               Positioned(child: Image.asset(topList.first,height: 370,)),
    //             ////
    //             if(dressList.length==2) ...[
    //               Positioned(child: Image.asset(dressList[0],height: 370,)),
    //               Positioned(child: Image.asset(dressList[1],height: 370,)),
    //             ],
    //             if(dressList.length==1)
    //               Positioned(child: Image.asset(dressList.first,height: 370,)),
    //             ////
    //             if(pantsList.length==2) ...[
    //               Positioned(child: Image.asset(pantsList[0],height: 370,)),
    //               Positioned(child: Image.asset(pantsList[1],height: 370,)),
    //             ],
    //             if(pantsList.length==1)
    //               Positioned(child: Image.asset(pantsList.first,height: 370,)),
    //             ////
    //             if(skirtList.length==2) ...[
    //               Positioned(child: Image.asset(skirtList[0],height: 370,)),
    //               Positioned(child: Image.asset(skirtList[1],height: 370,)),
    //             ],
    //             if(skirtList.length==1)
    //               Positioned(child: Image.asset(skirtList.first,height: 370,)),
    //             ////
    //             if(outerList.length==2) ...[
    //               Positioned(child: Image.asset(outerList[0],height: 370,)),
    //               Positioned(child: Image.asset(outerList[1],height: 370,)),
    //             ],
    //             if(outerList.length==1)
    //               Positioned(child: Image.asset(outerList.first,height: 370,)),
    //             /////
    //           ]
    //       ),
    //       Stack(
    //           alignment: Alignment.topCenter,
    //           children: [
    //             Container(height:370),
    //             if(outerList.length==2) ...[
    //               Positioned(child: Image.asset(outerList[0],height: 370,)),
    //               Positioned(child: Image.asset(outerList[1],height: 370,)),
    //             ],
    //             if(outerList.length==1)
    //               Positioned(child: Image.asset(outerList.first,height: 370,)),
    //             /////
    //             if(topList.length==2) ...[
    //               Positioned(child: Image.asset(topList[0],height: 370,)),
    //               Positioned(child: Image.asset(topList[1],height: 370,)),
    //             ],
    //             if(topList.length==1)
    //               Positioned(child: Image.asset(topList.first,height: 370,)),
    //             ////
    //             if(dressList.length==2) ...[
    //               Positioned(child: Image.asset(dressList[0],height: 370,)),
    //               Positioned(child: Image.asset(dressList[1],height: 370,)),
    //             ],
    //             if(dressList.length==1)
    //               Positioned(child: Image.asset(dressList.first,height: 370,)),
    //             ////
    //             if(pantsList.length==2) ...[
    //               Positioned(child: Image.asset(pantsList[0],height: 370,)),
    //               Positioned(child: Image.asset(pantsList[1],height: 370,)),
    //             ],
    //             if(pantsList.length==1)
    //               Positioned(child: Image.asset(pantsList.first,height: 370,)),
    //             ////
    //             if(skirtList.length==2) ...[
    //               Positioned(child: Image.asset(skirtList[0],height: 370,)),
    //               Positioned(child: Image.asset(skirtList[1],height: 370,)),
    //             ],
    //             if(skirtList.length==1)
    //               Positioned(child: Image.asset(skirtList.first,height: 370,)),
    //             ////
    //
    //           ]
    //       ),
    //     ],
    //   );
  }

  bottomClothes() {
    return DefaultTabController(
      length: 5,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Icon(Icons.refresh),
                onTap: (){
                  setState(() {
                    extracted.clear();
                    extracted.add(Container(height:370,child: Image.asset('assets/avatar.png'),key:listKey[22],));
                    extractedOuterChildren.clear();
                    extractedOuterChildren.add(Container(height:370,width: 100,));
                    outerList.clear();
                    topList.clear();
                    dressList.clear();
                    pantsList.clear();
                    skirtList.clear();
                  });
                },
              ),
              category(),
              clothes(),
            ],
          ),
        ),
      ),
    );
  }

  category() {
    return Container(
      height: 50,
      child: TabBar(
        isScrollable: true,
        tabs: [
          Tab(child: Text('OUTER',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),),
          Tab(child: Text('DRESS',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),),
          Tab(child: Text('TOP',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),),
          Tab(child: Text('PANTS',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),),
          Tab(child: Text('SKIRT',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),),
        ],
      ),
    );
  }
  selectClothes(String imageName, List clothList, Key key) {
    return GestureDetector(child: Image.asset(imageName)
      ,onTap: (){
      if(clothList.length<2) {
          if (!clothList.contains(imageName)) {
            var outer;
            setState(() {
              if(outerList.isNotEmpty){
                outer = extracted.last;
                extracted.remove(outer);
                if(extractedOuterChildren.indexWhere((element) => element.key == key) == -1)
                  extractedOuterChildren.add(Positioned(child: Image.asset(imageName),height: 370,key: key,));
              }
              clothList.add(imageName);
              if(extracted.indexWhere((element) => element.key == key) == -1)
                  extracted.add(Positioned(child: Image.asset(imageName),height: 370,key: key,));
              if(outer != null)
                extracted.add(outer);
            });
          } else if (clothList.contains(imageName))
            setState(() {
              clothList.remove(imageName);
              int i = extracted.indexWhere((element) => (element.key == key) );
              extracted.removeAt(i);
              int j = extractedOuterChildren.indexWhere((element) => (element.key == key) );
              extractedOuterChildren.removeAt(j);
            });
        }
        else if(clothList.length==2) {
          if(clothList.contains(imageName))
            setState(() {
              clothList.remove(imageName);
              int i = extracted.indexWhere((element) { print(element.key);print(key); return (element.key == key); });
              extracted.removeAt(i);
              int j = extractedOuterChildren.indexWhere((element) => (element.key == key) );
              extractedOuterChildren.removeAt(j);
            });
          else
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: SizedBox(
                    width: 298,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        new Text("카테고리별 등록할 수 있는\n아이템은 최대 2개 입니다.\n\n"),
                        GestureDetector(
                          child: Container(
                            height: 35,
                            child: Center(child: new Text("확인")),
                            color: Colors.deepPurple[200],
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
        }
      },);
  }

  selectOuterClothes(String imageName, List clothList, Key key){
    return GestureDetector(child: Image.asset(imageName)
      ,onTap: (){print(extractedOuterChildren.length);
        if(clothList.length==0) {
          if (!clothList.contains(imageName))
            setState(() {
              clothList.add(imageName);
              for(int index = 1; index < extracted.length; index++){
                if(!extractedOuterChildren.contains(extracted[index]) && !extractedOuterChildren.contains(extractedOuterChildren[index])){
                  extractedOuterChildren.add(extracted[index]);
                }
              }
              int i = extractedOuterChildren.indexWhere((element) => (element.key == listKey[22]) );
              if(i != -1)
                extractedOuterChildren.removeAt(i);
              if(extracted.indexWhere((element) => element.key == key) == -1)
                extracted.add(Positioned(child: Image.asset(imageName),height: 370,key: key,));
            });
        }
        else {
          if(clothList.contains(imageName))
            setState(() {
              clothList.remove(imageName);
              int i = extracted.indexWhere((element) => (element.key == key) );
              extracted.removeAt(i);
            });
          else
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: SizedBox(
                    width: 298,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        new Text("아우터는 최대 1개 입니다.\n\n"),
                        GestureDetector(
                          child: Container(
                            height: 35,
                            child: Center(child: new Text("확인")),
                            color: Colors.deepPurple[200],
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
        }
      },);
  }

  clothes() {
    return Expanded(
      child: TabBarView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(child:
            Row(
              children: [
                selectOuterClothes('assets/outer/outer.png',outerList,listKey[0]),
                selectOuterClothes('assets/outer/outer1.png',outerList,listKey[1]),
                selectOuterClothes('assets/outer/outer2.png',outerList,listKey[2]),
                selectOuterClothes('assets/outer/outer3.png',outerList,listKey[3]),
                selectOuterClothes('assets/outer/outer4.png',outerList,listKey[4]),
                selectOuterClothes('assets/outer/outer5.png',outerList,listKey[5]),
                selectOuterClothes('assets/outer/outer6.png',outerList,listKey[6]),
              ],
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(child:
            Row(
              children: [
                selectClothes('assets/dress/dress.png',dressList,listKey[7]),
                selectClothes('assets/dress/dress2.png',dressList,listKey[8]),
                selectClothes('assets/dress/dress3.png',dressList,listKey[9]),
              ],
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(child:
            Row(
              children: [
                selectClothes('assets/top/top1.png',topList,listKey[10]),
                selectClothes('assets/top/top2.png',topList,listKey[11]),
                selectClothes('assets/top/top3.png',topList,listKey[12]),
                selectClothes('assets/top/top4.png',topList,listKey[13]),
                selectClothes('assets/top/top5.png',topList,listKey[14]),
              ],
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(child:
            Row(
              children: [
                selectClothes('assets/bottom/pants.png',pantsList,listKey[15]),
                selectClothes('assets/bottom/pants1.png',pantsList,listKey[16]),
                selectClothes('assets/bottom/pants2.png',pantsList,listKey[17]),
                selectClothes('assets/bottom/pants3.png',pantsList,listKey[18]),
              ],
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(child:
            Row(
              children: [
                selectClothes('assets/bottom/skirt.png',skirtList,listKey[19]),
                selectClothes('assets/bottom/skirt2.png',skirtList,listKey[20]),
                selectClothes('assets/bottom/skirt3.png',skirtList,listKey[21]),
              ],
            )),
          ),
        ],
      ),
    );
  }

}

