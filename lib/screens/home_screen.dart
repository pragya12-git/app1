import 'package:app1/DetailBuilder/detail_builder.dart';
import 'package:app1/models/user_data_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.userData});

  final UserData userData;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Data"),
      ),
      backgroundColor: Colors.blue,
      // body: Center(
      // child: Text(widget.userData.users.length.toString()),

      body: ListView.builder(
          itemCount: widget.userData.users.length,
          itemBuilder: (listViewContext, Index) {
            return Card(
                child: ListTile(
                    title: Text(
                        "${widget.userData.users[Index].firstName}  ${widget.userData.users[Index].lastName}"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailBuilder(
                              label: "Maiden Name",
                              value: widget.userData.users[Index].maidenName),
                          DetailBuilder(
                              label: "Age",
                              value:
                                  widget.userData.users[Index].age.toString()),
                          DetailBuilder(
                              label: "Id",
                              value:
                                  widget.userData.users[Index].id.toString()),
                          DetailBuilder(
                              label: "Gender",
                              value: widget.userData.users[Index].gender.name),
                          DetailBuilder(
                              label: "Phone",
                              value: widget.userData.users[Index].phone),
                          DetailBuilder(
                              label: "User Name",
                              value: widget.userData.users[Index].username),
                          DetailBuilder(
                              label: "Password",
                              value: widget.userData.users[Index].password),
                          DetailBuilder(
                              label: "Email",
                              value: widget.userData.users[Index].email),
                          DetailBuilder(
                              label: "Birth Date",
                              value: widget.userData.users[Index].birthDate
                                  .timeZoneName),
                          DetailBuilder(
                            label: "Image",
                            value: widget.userData.users[Index].image,
                            isImage: true,
                          ),
                          DetailBuilder(
                              label: "Blood Group",
                              value: widget.userData.users[Index].bloodGroup),
                          DetailBuilder(
                              label: "height",
                              value: widget.userData.users[Index].height
                                  .toString()),
                          DetailBuilder(
                              label: "Weight",
                              value: widget.userData.users[Index].weight
                                  .toString()),
                          DetailBuilder(
                              label: "Eyecolor",
                              value: widget.userData.users[Index].eyeColor.index
                                  .toString()),
                          DetailBuilder(
                              label: "Hair",
                              value: widget.userData.users[Index].hair.color
                                  .toString()),
                          DetailBuilder(
                              label: "Domain",
                              value: widget.userData.users[Index].domain
                                  .toString()),
                          DetailBuilder(
                              label: "Ip",
                              value:
                                  widget.userData.users[Index].ip.toString()),
                          DetailBuilder(
                              label: "Address",
                              value: widget.userData.users[Index].address.city),
                          DetailBuilder(
                              label: "University",
                              value: widget.userData.users[Index].university),
                          DetailBuilder(
                              label: "Mac Address",
                              value: widget.userData.users[Index].macAddress),
                          DetailBuilder(
                              label: "Bank",
                              value:
                                  widget.userData.users[Index].bank.cardExpire),
                          DetailBuilder(
                              label: "Company",
                              value: widget
                                  .userData.users[Index].company.department),
                          DetailBuilder(
                              label: "Ein",
                              value: widget.userData.users[Index].ein),
                          DetailBuilder(
                              label: "SSN",
                              value: widget.userData.users[Index].ssn),
                          DetailBuilder(
                              label: "UserAgent",
                              value: widget.userData.users[Index].userAgent),

                          /* D(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(mai ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].maidenName}"))
                            ],
                          ),*/
                          /* Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("age"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].age}")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("id"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].id}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("gender"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].gender}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("email"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].email}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("username"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].username}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("birthDate"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].birthDate}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("bloodGroup"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].bloodGroup}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("height"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].height}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("weight"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].weight}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("password"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].password}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("phone"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].phone}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("eyeColor"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].eyeColor.name}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("hair"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].hair.color}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("image"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Image.network(
                                      "${widget.userData.users[Index].image}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("domain"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].domain}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("ip"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].ip}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("addres"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].address.city}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("macAddress"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].macAddress}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("university"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].university}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("bank"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].bank.cardExpire}"
                                      "${widget.userData.users[Index].bank.cardNumber}")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("ein"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].ein}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("ssn"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].ssn}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("userAgent"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].userAgent}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text("company"),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      "${widget.userData.users[Index].company.address}"))
                            ],
                          ),

                          /* Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text("email"),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Text(
                                            "${widget.userData.users[Index].email}")),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text("gender"),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Text(
                                            "${widget.userData.users[Index].gender}")),
                                  ],
                                ),
                                Row(children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text("phone"),
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                          "${widget.userData.users[Index].phone}")),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Text("username"),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                              "${widget.userData.users[Index].username}")),
                                    ],
                                  ),*/*/
                        ])));
          }),
    );
  }
}
