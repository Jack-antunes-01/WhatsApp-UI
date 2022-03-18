import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/info.dart';
import 'package:whatsapp_ui/theme/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
            ),
          ),
          const SizedBox(width: 20),
          Text(
            info[0]['name'].toString(),
            style: TextStyle(fontSize: 18),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
