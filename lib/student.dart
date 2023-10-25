class Student {
  String _name, _id, _address, _phone;
  bool att = false;

  Student(this._name, this._id, this._address, this._phone);

  get id => _id;

  set id(value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  get phone => _phone;

  set phone(value) {
    _phone = value;
  }

  get address => _address;

  set address(value) {
    _address = value;
  }

  @override
  String toString() {
    return 'name: $_name\nid: $_id\naddress: $_address\nphone: $_phone';
  }
}

