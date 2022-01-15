import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'doctor_list.dart';

class DoctorItemSearch extends SearchDelegate<DoctorItem> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query, style: TextStyle(fontSize: 20.0),));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadDoctorItem()
        : loadDoctorItem()
        .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return myList.isEmpty
        ? Center(
          child: Text(
      'No Result Found!',
      style: TextStyle(
          fontSize: 20.0,
      ),
    ),
        )
        : ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        final DoctorItem listItem = myList[index];
        return ListTile(
          onTap: () {
            query = listItem.title;
            showResults(context);
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                listItem.title,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                listItem.specialty,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                height: 5.0,
              ),
            ],
          ),
          leading: Icon(Icons.perm_identity),
        );
      },
    );
  }
}
