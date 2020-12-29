import 'dart:convert';
import 'package:gca_assignment2/model/movie.dart';
import 'package:http/http.dart';

class API {
  static Future<List<Movie>> fetchPost() async {
    String url = "https://yts.mx/api/v2/list_movies.json";
    Response response = await get(url);
    List list = jsonDecode(response.body)["data"]["movies"];
    List<Movie> responseModelList = List();
    for (var each in list) {
      Movie model = Movie(
          id: each["id"],
          year: each["year"],
          rating: each[{"rating"}],
          runtime: each["runtime"],
          title: each["title"],
          descriptionIntro: each["description_full"],
          backgroundImageUrl: each["medium_cover_image"]);
      responseModelList.add(model);
    }
    return responseModelList;
  }
}
