import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;
  const HomePage(this.presenter);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.presenter.getAllWizards();
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return StreamBuilder<List<WizardEntity?>?>(
                stream: widget.presenter.wizardsList,
                builder: (BuildContext context,
                    AsyncSnapshot<List<WizardEntity?>?> snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot);
                    print(snapshot.error);
                    return const SizedBox();
                  } else {
                    return ListView.separated(
                        addAutomaticKeepAlives: false,
                        itemCount: snapshot.data!.length,
                        separatorBuilder: (context, index) =>
                            Divider(color: Colors.black),
                        itemBuilder: (BuildContext ctxt, int index) {
                          return ListTile(
                            leading:
                                Image.network(snapshot.data![index]!.image),
                            tileColor: snapshot.data![index]!.house ==
                                    'Gryffindor'
                                ? Color(0xffFFCCCB)
                                : (snapshot.data![index]!.house == 'Slytherin'
                                    ? Color(0xff90EE90)
                                    : (snapshot.data![index]!.house ==
                                            'Ravenclaw'
                                        ? Color(0xffffffe0)
                                        : (snapshot.data![index]!.house ==
                                                'Hufflepuff'
                                            ? Color.fromARGB(255, 121, 166, 238)
                                            : Color.fromARGB(
                                                255, 153, 6, 202)))),
                            title: Text(
                              snapshot.data![index]!.name,
                              style: TextStyle(color: Color(0xffA020F0)),
                            ),
                          );
                        });
                  }
                });
          },
        ),
      ),
    );
  }
}
