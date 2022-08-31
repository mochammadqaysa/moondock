import 'package:flutter/material.dart';
import 'package:moondock/models/Hotel.dart';
import 'package:moondock/widgets/my_widgets.dart';

class SearchCondition extends SearchDelegate {
  SearchCondition(this.list, this.context);

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return <Widget>[
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
  }

  String selectedResult = "";

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<Hotel> list;
  final BuildContext context;
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<Hotel> suggestionList = <Hotel>[];
    query.isEmpty
        ? suggestionList = list
        : suggestionList.addAll(list.where((element) =>
            element.hotelName.toString().toLowerCase().contains(query)));
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: suggestionList.length,
      itemBuilder: (context, position) {
        return rowHotelCheckable(position, suggestionList[position], context);
      },
    );
  }
}
