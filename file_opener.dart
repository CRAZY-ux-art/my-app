import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileOpenerButton extends StatelessWidget {
  final String label;
  final String assetPath;

  const FileOpenerButton({
    super.key,
    required this.label,
    required this.assetPath,
  });

  Future<void> openAssetFile(BuildContext context) async {
    final byteData = await rootBundle.load(assetPath);
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${assetPath.split("/").last}');
    await file.writeAsBytes(byteData.buffer.asUint8List());

    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => openAssetFile(context),
      icon: const Icon(Icons.folder_open),
      label: Text(label),
    );
  }
}
