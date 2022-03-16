import 'dart:convert';

import 'package:bs_flutter_card/bs_flutter_card.dart';
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Users/Source.dart';
import 'package:http/http.dart' as http;

class Datatables extends StatefulWidget {
  @override
  _DatatablesState createState() => _DatatablesState();
}

class _DatatablesState extends State<Datatables> {

  ExampleSource _source1 = ExampleSource(
    data: [
      {'typeid': 0, 'typecd': 'TP1', 'typenm': 'Type 1'},
      {'typeid': 0, 'typecd': 'TP2', 'typenm': 'Type 2'},
      {'typeid': 0, 'typecd': 'TP3', 'typenm': 'Type 3'},
      {'typeid': 0, 'typecd': 'TP4', 'typenm': 'Type 4'},
      {'typeid': 0, 'typecd': 'TP5', 'typenm': 'Type 5'},
    ]
  );


  Future loadApi(){
    return http.post(
      Uri.parse('http://localhost/flutter_crud/api/public/types/datatables'),
    ).then((value) {
      Map<String, dynamic> json = jsonDecode(value.body);
      setState(() {
        _source1.onEditListener = (typeid, index) {
          final data = _source1.get(index);
          data['typenm'] = 'Edited';

          _source1.put(index, data);
        };
        _source1.onDeleteListener = (typeid, index) {
          _source1.removeAt(index);
        };
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Datatables.net'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: BsCard(
                children: [
                  BsCardContainer(title: Text('Datatables'), actions: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Insert'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add'),
                    )
                  ]),
                  // BsCardContainer(
                  //   child: BsDatatable(
                  //     source: _source,
                  //     title: Text('Datatables Data'),
                  //     columns: ExampleSource.columns,
                  //     language: const BsDatatableLanguage(
                  //       nextPagination: 'Next',
                  //       previousPagination: 'Previous',
                  //       information: 'Show __START__ to __END__ of __FILTERED__ entries',
                  //       informationFiltered: 'filtered from __DATA__ total entries',
                  //       firstPagination: 'First Page',
                  //       lastPagination: 'Last Page',
                  //       hintTextSearch: 'Search data ...',
                  //       perPageLabel: null,
                  //       searchLabel: null
                  //     ),
                  //     serverSide: (params) => loadApi(params),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}