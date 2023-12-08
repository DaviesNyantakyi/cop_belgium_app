import 'package:cached_network_image/cached_network_image.dart';
import 'package:cop_belgium_app/main.dart';
import 'package:cop_belgium_app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import '../utilities/constant.dart';

const _cardHeight = 140.0;

class ChurchTile extends StatefulWidget {
  final VoidCallback onTap;

  const ChurchTile({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ChurchTile> createState() => _ChurchTileState();
}

class _ChurchTileState extends State<ChurchTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _cardHeight,
      child: Card(
        child: CustomElevatedButton(
          padding: EdgeInsets.zero,
          onPressed: widget.onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildImage(),
              _buildAddress(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kContentSpacing8).copyWith(
          left: kContentSpacing8,
          right: kContentSpacing12,
        ),
        height: _cardHeight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(kRadius)),
          color: kGreyLight,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              kImageUrl,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddress() {
    return Expanded(
      flex: 3,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: kContentSpacing8).copyWith(
          right: kContentSpacing8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'widget.church.churchName',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: kContentSpacing4),
            Flexible(
              child: Text(
                'widget.church.address',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
