import 'package:get/get.dart';
import 'package:promilo_app/domain/entities/description_screen_entity.dart';

class DescriptionScreenController extends GetxController {
  DescriptionEntity dummyData = DescriptionEntity(
    images: [
        ImageEntity(image: "assets/images/meeting_image_1.jpg", link: "link"),
        ImageEntity(image: "assets/images/meeting_image_2.jpg", link: "link"),
        ImageEntity(image: "assets/images/pexels-christina-morillo-1181396.jpg", link: "link"),
      // "assets/images/meeting_image_1.jpg",
      // "assets/images/meeting_image_2.jpg",
      // "assets/images/pexels-christina-morillo-1181396.jpg"
    ],
    saveCount: 1034,
    likeCount: 1034,
    rating: 3.5,
    actorName: "Indian Actress",
    durationIinMinutes: 20,
    avgFee: 9999,
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  );
}
