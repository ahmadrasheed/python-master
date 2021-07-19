import 'package:meta/meta.dart';

class ImageData {
  final String id;
  final String imageUrl;
  final String imageName;


  const ImageData(
   {
      this.imageName,
      this.id,
      this.imageUrl,
  });
}

const imageList = [
  ImageData(
    id: 'id-002',
    imageName: 'assets/images/arrays.jpg',
    imageUrl: 'https://picsum.photos/seed/image002/500/800',
  ),
  ImageData(
    id: 'id-003',
    imageName: 'assets/images/600.jpg',
    imageUrl: 'https://picsum.photos/seed/image003/500/300',
  ),
  ImageData(
    id: 'id-004',
    imageName: 'assets/images/functions.jpg',
    imageUrl: 'https://picsum.photos/seed/image004/500/900',
  ),
  ImageData(
    id: 'id-005',
    imageName: 'assets/images/loops.jpg',
    imageUrl: 'https://picsum.photos/seed/image005/500/600',
  ),
  ImageData(
    id: 'id-006',
    imageName: 'assets/images/oop.jpg',
    imageUrl: 'https://picsum.photos/seed/image006/500/500',
  ),
  ImageData(
    id: 'id-007',
    imageName: 'assets/images/600.jpg',
    imageUrl: 'https://picsum.photos/seed/image007/500/400',
  ),
  ImageData(
    id: 'id-008',
    imageName: 'assets/images/oop.jpg',
    imageUrl: 'https://picsum.photos/seed/image008/500/700',
  ),
  ImageData(
    id: 'id-009',
    imageName: 'assets/images/functions.jpg',
    imageUrl: 'https://picsum.photos/seed/image009/500/600',
  ),
  ImageData(
    id: 'id-010',
    imageName: 'assets/images/oop.jpg',
    imageUrl: 'https://picsum.photos/seed/image010/500/900',
  ),
  ImageData(
    id: 'id-011',
    imageName: 'assets/images/functions.jpg',
    imageUrl: 'https://picsum.photos/seed/image011/500/900',
  ),
  ImageData(
    id: 'id-012',
    imageName: 'assets/images/600.jpg',
    imageUrl: 'https://picsum.photos/seed/image012/500/700',
  ),
  ImageData(
    id: 'id-013',
    imageName: 'assets/images/functions.jpg',
    imageUrl: 'https://picsum.photos/seed/image013/500/700',
  ),

];