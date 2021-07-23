import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:python/utils/ViewPdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatelessWidget {
final int lessonIndex;
  const PdfViewScreen({Key key, this.lessonIndex}) : super(key: key);
  @override
  void initState() {
     initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Builder(
            builder:(context) {
              switch (lessonIndex+1) {
                case 1:
                  {
                    debugPrint("You tapped on item........ $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/intro.pdf",);
                  }
                  break;
                case 2:
                  {
                    debugPrint("You tapped on item .......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/comments.pdf",);

                  }
                  break;
                case 3:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/variables.pdf",);
                  }
                  break;
                case 4:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/types.pdf",);
                  }
                  break;
                case 5:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/numbers.pdf",);
                    break;
                  }
                case 6:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/randomNumber.pdf",);
                  }
                  break;
                case 7:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/strings.pdf",);

                  }
                  break;
                case 8:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/slicingStrings.pdf",);
                  }
                  break;
                case 9:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/booleans.pdf",);
                  }
                  break;
                case 10:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/operators.pdf",);

                  }
                  break;
                case 11:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/lists.pdf",);

                  }
                  break;

                case 12:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/ifElse.pdf",);
                  }
                  break;
                case 13:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/while.pdf",);
                  }
                  break;
                case 14:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/for.pdf",);
                  }
                  break;
                case 15:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/functions.pdf",);
                  }
                  break;
                case 16:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/lambda.pdf",);
                  }
                  break;
                case 17:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/arrays.pdf",);
                  }
                  break;
                case 18:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/class.pdf",);
                  }
                  break;

                case 19:
                  {
                    debugPrint("You tapped on item.......  $lessonIndex");
                    return ViewPdf(pdfName: "assets/pdf/iterators.pdf",);
                  }
                  break;




                default:
                  {
                    //statements;
                  }
                  break;
              } //Switch End
            }
          ),
        ),
      ),
      );
  }
}

