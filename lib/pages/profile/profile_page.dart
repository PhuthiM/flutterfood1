import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/helpers/platform_aware_asset_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Container(
              width: 180.0,
              height: 180.0,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/profile.jpg',
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Text('Phuthita Sookhong',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 8.0),
          Text('sookhong_p@silpakorn.edu', style: TextStyle(fontSize: 20.0)),
        ],
      ),
    );
  }
}
