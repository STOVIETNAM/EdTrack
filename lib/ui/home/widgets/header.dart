import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../api/endpoints.dart';
import '../../../models/user/user_model.dart';
import '../../user/user_profile.dart';

class Header extends StatelessWidget {
  final User user;
  const Header({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, ${user.firstName}!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(user.email),
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(builder: (_) => UserProfile(user: user)),
            ),
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl: '${Endpoints.fileBlob}/${user.profilePictureId}',
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
