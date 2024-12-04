import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';

class SeachField extends StatelessWidget {
  final List<String> searchProducts =[
    'Gloves',
    'Mask',
    'Pants',
    'Headseat',
    'Shoes',
  ];

  SeachField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      // height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: (){
          showSearch(context: context, delegate: ProductSearch(searchProducts));
        },
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: Icon(Icons.search),
            ),
            Text(
              "Search Product",
              style: TextStyle(color: Colors.grey),
            ),
          ]
        ),
      )
    );
  }
}

class ProductSearch extends SearchDelegate<String>{
  final List<String> searchProducts;
  ProductSearch(this.searchProducts);

  @override
  List<Widget>? buildActions (BuildContext context){
      // Tombol aksi di AppBar (seperti tombol clear)
    return [
      IconButton(onPressed: (){
        query = ''; //akan menghapus text
      }, icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context){
    // Tombol di sebelah kiri AppBar (biasanya tombol kembali)
    return
      IconButton(onPressed: (){
        close(context, '');
      }, icon: const Icon(Icons.arrow_back_ios));

  }

  @override
  Widget buildResults(BuildContext context){
    // menampilkan pencarian
    final result = searchProducts.where((product)=>product.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(result[index]),
          onTap: (){
            close(context, result[index]);
          },
        );
      });

  }

  @override
  Widget buildSuggestions(BuildContext context){
    // menampilkan saran ketika mengetik
    final sugestion = searchProducts.where((product)=>product.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: sugestion.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(sugestion[index]),
          onTap: (){
            //saran untuk pencarian
            query = sugestion[index];
            //menanampilkan hasil
            showResults(context);
          },
        );
      },
    );
  }

}