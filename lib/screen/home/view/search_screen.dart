import 'package:flutter/cupertino.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.black.withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        CupertinoIcons.search,
                        color: CupertinoColors.black.withOpacity(0.2),
                        size: 24,
                      ),
                    ),
                    Text(
                      "shirt",
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        CupertinoIcons.clear_circled_solid,
                        color: CupertinoColors.black.withOpacity(0.3),
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return searchUI();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchUI() {
    return Container(
      height: 80,
      width: double.infinity,
      color: CupertinoColors.white,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 80,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CupertinoColors.black,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: CupertinoColors.black.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "vagabond sack",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                            fontSize: 11,
                            color: CupertinoColors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 21,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}