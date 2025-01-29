import 'package:admin_dash_board/models/all_expensess_item_model.dart';
import 'package:admin_dash_board/utils/app_images.dart';
import 'package:admin_dash_board/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129')
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
                itemModel: items[0], isSelected: selectedIndex == 0),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
                itemModel: items[1], isSelected: selectedIndex == 1),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
                itemModel: items[2], isSelected: selectedIndex == 2),
          ),
        ),
      ],
    );
    // Row(
    //     children: items.asMap().entries.map((e) {
    //   int index = e.key;
    //   var item = e.value;
    //   return Expanded(
    //     child: GestureDetector(
    //       onTap: () {
    //         updateIndex(index);
    //       },
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //         child: AllExpensessItem(
    //             itemModel: item, isSelected: selectedIndex == index),
    //       ),
    //     ),
    //   );
    // }).toList());
  }

/////////////////////
  // if (index == 1) {
  //       return Expanded(
  //         child: GestureDetector(
  //           onTap: () {
  //             updateIndex(index);
  //           },
  //           child: Padding(
  //             padding:  EdgeInsets.symmetric(horizontal: 12),
  //             child: AllExpensessItem(
  //                 itemModel: item, isSelected: selectedIndex == index),
  //           ),
  //         ),
  //       );
  //     } else {
  //       return Expanded(
  //         child: GestureDetector(
  //           onTap: () {
  //             updateIndex(index);
  //           },
  //           child: AllExpensessItem(
  //               itemModel: item, isSelected: selectedIndex == index),
  //         ),
  //       );
  //     }
///////////////////////////////////////////////

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
