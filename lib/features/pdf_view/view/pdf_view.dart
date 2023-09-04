import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFViewer extends StatefulWidget {
  const PDFViewer({super.key, required this.url});
  final url;

  @override
  State<PDFViewer> createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  late PDFViewController pdfViewController;
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return Scaffold(
      appBar: AppBar(
        title: Text('Расписание'),
      ),
      body: PDFView(
        filePath: widget.url,
        autoSpacing: true,
        enableSwipe: true,
        pageSnap: true,
        swipeHorizontal: true,
        onError: (error) {
          print(error);
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onViewCreated: (PDFViewController vc) {
          pdfViewController = vc;
        },
      ),
    );
  }
}
