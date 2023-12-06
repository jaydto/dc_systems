import 'package:dc_system/constants/Theme.dart';
import 'package:dc_system/screens/DcSystems.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  CustomAppBar({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: DcSystemColors.bgColorBottomNavigations,
        title: Container(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: Text(widget.title, softWrap: true, overflow: TextOverflow.fade,maxLines:1,),
              ),
              Container(
                height: 50,
                width: 110,
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DcSystems(),
                        ))
                    // Navigator.pushNamed(context, '/'),
                    ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        'https://diamondcanopy.co.ke/dcsystem/uploads/company/b5196903dbcc9766b4faf9dcc01c3663.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
