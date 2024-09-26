import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:koombea/data/model/user.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: CircleAvatar(
        child: CachedNetworkImage(
          imageUrl: user.pictureUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      title: Text("${user.firstName} ${user.lastName}"),
      subtitle: Text(user.email),
    );
  }
}
