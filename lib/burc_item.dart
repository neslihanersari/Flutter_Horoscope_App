import 'package:flutter/material.dart';
import 'package:flutter_application_1/burc_detay.dart';
import 'package:flutter_application_1/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({
    required this.listelenenBurc,
  });

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
                ),
              );
            },
            /*leading: Image.asset(
              "assets/images/" + listelenenBurc.burcKucukResim,
            ),*/
            leading: Image.asset(
              "assets/images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
