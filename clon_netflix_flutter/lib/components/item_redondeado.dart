import 'package:flutter/material.dart';
class ItemRedondeado extends StatelessWidget {
  const ItemRedondeado({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border:Border.all(
                    color: Colors.yellow,
                    width: 2.0,
                  )
                ),
                child: ClipOval(child: Image.network(
                "https://imgs.search.brave.com/Ex8NAinY-jilcrxst2BdhbVpz1_484dHhrl7jsLqjOk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9rbGF1/cy1uZXRmbGl4LTE2/NDYzODQ0ODQuanBn/P2Nyb3A9MC43OTN4/dzowLjkzNnhoOzAu/MjA3eHcsMCZyZXNp/emU9OTgwOio"
                ,fit: BoxFit.cover,
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}