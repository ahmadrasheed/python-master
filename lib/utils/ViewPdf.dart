import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class ViewPdf extends StatelessWidget {
  ViewPdf({Key key, this.pdfName}) : super(key: key);
  final String pdfName;
  //important for pdf
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return
     Container(
        child: Column(
          children: [
            SfPdfViewer.asset(
              "$pdfName",
              //initialZoomLevel: 1.1,
              canShowScrollHead: true,
              key: _pdfViewerKey,
            ),
          ],
        ),
    );
  }
}
