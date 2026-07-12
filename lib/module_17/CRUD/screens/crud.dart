import 'package:flutter/material.dart';
import 'package:flutter_166/module_17/CRUD/controller/product_Controller.dart';
import 'package:flutter_166/module_17/CRUD/model/product_Model.dart';

class Crud_Mod17 extends StatefulWidget {
  const Crud_Mod17({super.key});

  @override
  State<Crud_Mod17> createState() => _Crud_Mod17State();
}

class _Crud_Mod17State extends State<Crud_Mod17> {
  ProductController productController = ProductController();

  Future fetchData() async {
   await productController.getProduct();
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  productDialog(bool isUpdate, {Data ? data}){
    TextEditingController productNameController = TextEditingController();
    TextEditingController productImgController = TextEditingController();
    TextEditingController productQtyController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    if(isUpdate){
      productNameController.text= data!.productName.toString();
      productImgController.text = data!.img.toString();
      productQtyController.text = data!.qty.toString();
      productUnitPriceController.text = data!.unitPrice.toString();
      productTotalPriceController.text = data!.totalPrice.toString();
    }
    
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text(isUpdate ? 'Edit product' : 'Create product'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: productNameController,
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 10,),

          TextField(
            controller: productImgController,
            decoration: InputDecoration(
              labelText: 'Image',
            ),
          ),
          SizedBox(height: 10,),

          TextField(
            controller: productQtyController,
            decoration: InputDecoration(
              labelText: 'Qty',
            ),
          ),
          SizedBox(height: 10,),

          TextField(
            controller: productUnitPriceController,
            decoration: InputDecoration(
              labelText: 'Unit Price',
            ),
          ),
          SizedBox(height: 10,),

          TextField(
            controller: productTotalPriceController,
            decoration: InputDecoration(
              labelText: 'Total Price',
            ),
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel')),
            ElevatedButton(onPressed: () async {

              if(isUpdate){
                productController.updateProduct(data!.sId.toString(),Data(
                  productName: productNameController.text,
                  img: productImgController.text,
                  qty: int.parse (productQtyController.text),
                  unitPrice: int.parse(productUnitPriceController.text),
                  totalPrice:int.parse (productTotalPriceController.text),
                ));
               await fetchData();
              }else{
                productController.createProduct(Data(
                  productName: productNameController.text,
                  img: productImgController.text,
                  qty: int.parse (productQtyController.text),
                  unitPrice: int.parse(productUnitPriceController.text),
                  totalPrice:int.parse (productTotalPriceController.text),
                ));

              }



              Navigator.pop(context);
              await fetchData();
              }, child: Text('Submit')),
            ],
          )

        ],
      ),
    ));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
        backgroundColor: Colors.green[100],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 15,
            childAspectRatio: 0.8,
          ), 
          itemCount: productController.productss.length,
          itemBuilder: (context, index){
            final item = productController.productss[index];
            return Column(
              children: [
                SizedBox(
                    height: 140,
                    child: Image.network(item.img.toString())),
                Text(item.productName.toString(),style: TextStyle(fontSize: 20),),
                Text('Price: ${item.totalPrice}'),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){
                      productDialog(true,data: item);
                    }, icon: Icon(Icons.edit_note,color: Colors.grey,)),
                    IconButton(onPressed: () async {
                      productController.deleteProduct(item.sId.toString()).then((value) async {
                        if(value){
                        await  fetchData();
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Product deleted',textAlign: TextAlign.center,),));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('something wrong try again'))
                          );
                        }
                      });
                    }, icon: Icon(Icons.delete,color: Colors.red,)),
                  ],
                )


              ],
            );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        productDialog(false);
      },child: Icon(Icons.add),),
    );
  }
}
