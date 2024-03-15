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
      'userName': "Phil Huang",
      'userAvatar': "https://pbs.twimg.com/profile_images/1714301666445402112/5U5myYFv_400x400.jpg",
      'classes': [
        _mdClass1,
        _mdClass2,
        _mdClass3,
      ],
    },
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

final _mdTeacher1 = {
  'userId': 'a123456789',
  'account': 'test123@gmail.com',
  'createdAt': '2021-01-15 02:11:12',
  'userType': 1,
  'updatedAt': '2024-03-15 15:30:48',
  'userName': "Phil Huang",
  "userAvatar": "https://pbs.twimg.com/profile_images/1714301666445402112/5U5myYFv_400x400.jpg"
};

// final _mdTeacher2 = {
//   'userId': 'b123456789',
//   'account': 'test456@gmail.com',
//   'createdAt': '2009-01-15 02:11:12',
//   'userType': 1,
//   'updatedAt': '2021-02-12 13:50:18',
//   'userName': "Cherry Chan",
//   "userAvatar": "https://pbs.twimg.com/profile_images/1480854383697219584/2i8y1ARB_400x400.jpg"
// };
//
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