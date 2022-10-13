import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomendedFoodDetail extends StatelessWidget {
  const RecomendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black54,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/images/pancake.jpeg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.",
            ),
          ),
        ],
      ),
    );
  }
}
