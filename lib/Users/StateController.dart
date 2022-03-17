import 'package:flutter/material.dart';
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';
import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';

class UserStateController extends BsDatatableSource{

  UserStateController({
    List<Map<String, dynamic>>? data = const [],
  }) : super(data: data);

  Function(dynamic, int) onEditListener = (value, index) {};
  Function(dynamic, int) onDeleteListener = (value, index) {};

  static List<BsDataColumn> get columns => <BsDataColumn>[
    BsDataColumn(label: Text('No'), orderable: false, searchable: false, width: 100.0),
    BsDataColumn(label: Text('Name'), columnName: 'name'),
    BsDataColumn(label: Text('Gender'), columnName: 'gender'),
    BsDataColumn(label: Text('Address'), columnName: 'address', width: 200.0),
    BsDataColumn(label: Text('Phone'), columnName: 'phone'),
    BsDataColumn(label: Text('Actions'), orderable: false, searchable: false, width: 200.0),
  ];

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(index: index, cells: <BsDataCell>[
      BsDataCell(Text('${controller.start + index + 1}')),
      BsDataCell(Text('${response.data[index]['user_name']}')),
      BsDataCell(Text('${response.data[index]['user_gender']}')),
      BsDataCell(Text('${response.data[index]['user_address']}')),
      BsDataCell(Text('${response.data[index]['user_phone']}')),
      BsDataCell(Row(
        children: [
          BsButton(
            margin: EdgeInsets.only(right: 5.0),
            onPressed: () => onEditListener(response.data[index]['user_id'], index),
            prefixIcon: Icons.edit,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.primary,
          ),
          BsButton(
            onPressed: () => onDeleteListener(response.data[index]['user_id'], index),
            prefixIcon: Icons.delete,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.danger,
          )
        ],
      ))
    ]);
  }

}