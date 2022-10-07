import 'dart:io';

void main(List<String> args) {
  List<phonebook> p = [
    phonebook(
        fname: 'John', lname: 'Tan', number: 09182736452, address: 'Mabolo'),
    phonebook(
        fname: 'Jason',
        lname: 'Flores',
        number: 09129384756,
        address: 'Centro'),
    phonebook(
        fname: 'Michael',
        lname: 'Olasiman',
        number: 09129384732,
        address: 'Lacion'),
    phonebook(
        fname: 'David', lname: 'Luna', number: 091293837456, address: 'Tayud'),
    phonebook(
        fname: 'Andrew', lname: 'Uy', number: 09129389876, address: 'Looc'),
  ];
  print("List of Contacts:");
  displayContacts(p);

// Adding new contact
  phonebook newcontact =
      new phonebook(fname: '', lname: '', number: '', address: '');

  print("Enter details for new contact:");
  print("First name:");
  newcontact.fname = stdin.readLineSync();
  print("Last name:");
  newcontact.lname = stdin.readLineSync();
  print("Number:");
  newcontact.number = stdin.readLineSync();
  print("Address:");
  newcontact.address = stdin.readLineSync();

  p.insert(p.length++, newcontact);

  displayContacts(p);

  print("Enter the number of contact to be deleted:");
  dynamic str = stdin.readLineSync();
  deleteContact(p, str);
  displayContacts(p);
  print("Enter the number of contact to be searched:");
  dynamic str2 = stdin.readLineSync();
  findContact(p, str2);
}

class phonebook {
  dynamic fname;
  dynamic lname;
  dynamic number;
  dynamic address;
  phonebook(
      {required this.fname,
      required this.lname,
      required this.number,
      required this.address});
}

void displayContacts(List<phonebook> P) {
  for (var i = 0; i < P.length; i++) {
    print("Name: ${P[i].fname} ${P[i].lname}");
    print("Contact Number: ${P[i].number}");
    print("Location: ${P[i].address}");
  }
}

void deleteContact(List<phonebook> P, dynamic str) {
  P.remove(str);
}

void findContact(List<phonebook> P, dynamic str) {
  var i;
  for (i = 0; i < P.length && P[i].number != str; i++) {}

  if (i <= P.length) {
    print("Name: ${P[i].fname} ${P[i].lname}");
    print("Contact Number: ${P[i].number}");
    print("Location: ${P[i].address}");
  } else {
    print("Contact not found");
  }
}
