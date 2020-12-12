import 'package:flutter/material.dart';
import 'asset.dart';
/***
 *
 * 创建人：xuqing
 * 创建时间 :2020年10月18日18:19:02
 * 类说明 : 搜索框
 *
 */

class SearchBarDemo extends StatefulWidget {
  SearchBarDemo({Key key}) : super(key: key);

  @override
  _SearchBarDemoState createState() {
    return _SearchBarDemoState();
  }
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text("searchDemo"),
       actions: <Widget>[
         IconButton(
           icon: Icon(
             Icons.search
           ),
           onPressed: (){
             showSearch(context: context, delegate: searchBarDelegate());
           },
         )
       ],
     ),
    );
  }

}

class  searchBarDelegate extends SearchDelegate<String> {

    @override
    List<Widget>buildActions(BuildContext context){
      return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query="",
      )
      ];
    }

    @override
     Widget buildLeading(BuildContext context) {
     return IconButton(
       icon: AnimatedIcon(
           icon: AnimatedIcons.menu_arrow,
           progress:transitionAnimation),
       onPressed: ()=>close(context,null),
     );

  }

  @override
  Widget buildResults(BuildContext context) {
      return Center(
          child:Container(
              width: 100,
              height: 100,
            child:Card(
               color: Colors.redAccent,
            child: Text(query),
           ),
          ),
      );

  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?
        reecntSuggest:serchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length==0?0:suggestionList.length,
        itemBuilder: (context ,index)=>ListTile(
          title: RichText(
            text: TextSpan(
              text: suggestionList[index].substring(0,query.length),
              style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                    text:suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey
                    )
                )
                ]
            ),
          ),
        ),
    );
  }

}