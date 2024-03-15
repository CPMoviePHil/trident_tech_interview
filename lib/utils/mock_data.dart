final mockDataUserInfo = {
  "result": true,
  "code": 10000,
  "value": _mdTeacher1,
};

final mockDataTeacherList = {
  "result": true,
  "code": 10000,
  "value": [
    {
      'userId': 'a123456789',
      'account': 'test123@gmail.com',
      'createdAt': '2021-01-15 02:11:12',
      'userType': 1,
      'updatedAt': '2024-03-15 15:30:48',
      'userName': "Albert Flores",
      'userAvatar': "https://pbs.twimg.com/profile_images/1714301666445402112/5U5myYFv_400x400.jpg",
      'classes': [
        _mdClass1,
        _mdClass2,
        _mdClass3,
      ],
    }, {
      'userId': 'b123456789',
      'account': 'test456@gmail.com',
      'createdAt': '2009-01-15 02:11:12',
      'userType': 2,
      'updatedAt': '2021-02-12 13:50:18',
      'userName': "Floyd Miles",
      "userAvatar": "https://pbs.twimg.com/profile_images/1480854383697219584/2i8y1ARB_400x400.jpg",
      'classes': [
        _mdClass4,
      ],
    }, {
      'userId': 'c123456789',
      'account': 'test678@gmail.com',
      'createdAt': '2019-01-15 02:11:12',
      'userType': 3,
      'updatedAt': '2022-03-14 12:50:18',
      'userName': "Savannah Nguyen",
      "userAvatar": "https://pbs.twimg.com/profile_images/1480854383697219584/2i8y1ARB_400x400.jpg",
      'classes': [
        _mdClass5
      ],
    }, {
      'userId': 'scVsw789',
      'account': 'waste123@gmail.com',
      'createdAt': '2023-02-21 13:13:14',
      'userType': 4,
      'updatedAt': '2029-02-13 12:50:18',
      'userName': "Jenny Wilson",
      "userAvatar": "https://pbs.twimg.com/profile_images/1743575668989050880/tdXrzHbR_400x400.jpg",
      'classes': [
        _mdClass6
      ],
    }, {
      'userId': 'scVsw789',
      'account': 'waste123@gmail.com',
      'createdAt': '2003-03-22 14:16:13',
      'userType': 4,
      'updatedAt': '2019-02-13 12:50:18',
      'userName': "Floyd Miles",
      "userAvatar": "https://pbs.twimg.com/profile_images/1656596986097987587/XvQcye3R_400x400.jpg",
      'classes': [
        _mdClass6,
        _mdClass7
      ],
    }
  ]
};

final mockDataClassList = {
  "result": true,
  "code": 10000,
  "value": [
    _mdClass1,
    _mdClass2,
    _mdClass3,
  ],
};

final _mdClass1 = {
  'classId': 'abc123456789',
  'className': '基礎程式設計',
  'classTime': '每周二, 10:00-12:00',
  'createdAt': '2012-09-01 01:11:11',
  'updatedAt': '2012-09-02 01:11:11'
};

final _mdClass2 = {
  'classId': 'zxc123456789',
  'className': '人工智慧總整與實作',
  'classTime': '每周四, 14:00-16:00',
  'createdAt': '2013-12-01 01:11:11',
  'updatedAt': '2013-12-03 01:11:11'
};

final _mdClass3 = {
  'classId': 'edc123456789',
  'className': '訊號與系統',
  'classTime': '每周五, 10:00-12:00',
  'createdAt': '2017-11-01 01:11:11',
  'updatedAt': '2018-02-03 01:11:11'
};

final _mdClass4 = {
  'classId': 'feg123456789',
  'className': '計算機概論',
  'classTime': '每周一, 13:00-16:00',
  'createdAt': '2011-11-01 01:11:11',
  'updatedAt': '2018-02-03 01:11:11'
};

final _mdClass5 = {
  'classId': 'aws123456789',
  'className': '國文',
  'classTime': '每周二, 15:00-18:00',
  'createdAt': '2012-11-01 02:13:11',
  'updatedAt': '2018-12-03 11:42:31'
};

final _mdClass6 = {
  'classId': 'wcb123456789',
  'className': '數學',
  'classTime': '每周三, 17:00-18:00',
  'createdAt': '2015-12-03 02:13:11',
  'updatedAt': '2019-12-21 15:42:31'
};

final _mdClass7 = {
  'classId': 'wfe123456789',
  'className': '資料結構',
  'classTime': '每周四, 12:00-18:00',
  'createdAt': '2014-11-02 02:13:11',
  'updatedAt': '2019-12-21 15:42:31'
};

final _mdTeacher1 = {
  'userId': 'a123456789',
  'account': 'test123@gmail.com',
  'createdAt': '2021-01-15 02:11:12',
  'userType': 1,
  'updatedAt': '2024-03-15 15:30:48',
  'userName': "Phil Huang",
  "userAvatar": "https://pbs.twimg.com/profile_images/1714301666445402112/5U5myYFv_400x400.jpg"
};

// final _mdStudent1 = {
//   'userId': 'c123456789',
//   'account': 'test789@gmail.com',
//   'createdAt': '2012-09-01 01:11:11',
//   'userType': 2,
//   'updatedAt': '2023-05-31 13:50:18',
//   'userName': "Mickey Texan",
//   "userAvatar": "https://pbs.twimg.com/profile_images/1648334723725361152/ev7V1230_400x400.jpg"
// };
//
// final _mdStudent2 = {
//   'userId': 'd123456789',
//   'account': 'testa123@gmail.com',
//   'createdAt': '2012-09-01 01:11:11',
//   'userType': 2,
//   'updatedAt': '2022-03-31 13:50:18',
//   'userName': "George Clooney",
//   "userAvatar": "https://pbs.twimg.com/profile_images/1727861871016108032/VUh8mUUv_400x400.jpg"
// };