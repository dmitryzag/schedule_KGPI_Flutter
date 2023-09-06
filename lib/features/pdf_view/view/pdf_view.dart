import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

@RoutePage()
class PDFViewerGroup extends StatefulWidget {
  const PDFViewerGroup({super.key, required this.url});
  final String url;

  @override
  State<PDFViewerGroup> createState() => _PDFViewerGroupState();
}

class _PDFViewerGroupState extends State<PDFViewerGroup> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Расписание',
          style: theme.textTheme.bodyLarge,
        ),
      ),
      body: Container(child: SfPdfViewer.network(widget.url)),
    );
  }
}
