import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gca_assignment2/model/movie.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int id = 25435;
  String name = "Alpha and OmegaAlpha and OmegaAlpha and OmegaAlpha and Omega";
  String descriptionIntro =
      "Four independent stories set in modern China about random acts of violence.Four independent stories set in modern China about random acts of violence.Four independent stories set in modern China about random acts of violence.Four independent stories set in modern China about random acts of violence.";
  int year = 2010;

  @override
  Widget build(BuildContext context) {
    GestureDetector(
      onTap: () => ,
    );
    return Card(
      elevation: 20,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 180,
              child: Image.network(
                  "https://img.yts.mx/assets/images/movies/alpha_and_omega_2010/large-cover.jpg"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Container(
                width: 245,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text("$year",
                        maxLines: 1,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    SizedBox(height: 2),
                    Text(
                      descriptionIntro,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
