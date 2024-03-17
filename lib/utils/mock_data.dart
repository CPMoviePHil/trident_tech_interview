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
      'userDesc': '''葉子 是不會飛翔的翅膀 翅膀 是落在天上的葉子''',
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
      'userDesc': '''孤單 是一個人的狂歡 狂歡 是一群人的孤單''',
      "userAvatar": "https://pbs.twimg.com/profile_images/1766480267353661440/u3cPpgVg_400x400.jpg",
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
      'userDesc': '''我一個人吃飯旅行 到處走走停停 也一個人看書寫信 自己對話談心''',
      "userAvatar": "https://pbs.twimg.com/profile_images/1568417445211152388/YsUHG-Ea_400x400.jpg",
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
      'userDesc': '阿桑逝世那年我高一，住學校宿舍，在餐廳吃完飯正要離開，新聞說著阿桑癌逝了，於是就愣著站在電視前久久不能自己，10年了，那一刻我直到現在記憶猶新，謝謝你的聲音一直留下來陪我們。',
      "userAvatar": "https://pbs.twimg.com/profile_images/1648334723725361152/ev7V1230_400x400.jpg",
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
      'userDesc': '''我穿梭金星木星水星火星土星土星，追尋你時間滴滴答滴答　答滴聲音''',
      "userAvatar": "https://pbs.twimg.com/profile_images/1750659903285264384/dG8XVYRU_400x400.jpg",
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
  'updatedAt': '2012-09-02 01:11:11',
  'desc': "A SQLite database is a file in the file system identified by a path. If relative, this path is relative to the path obtained by getDatabasesPath(), which is the default database directory on Android and the documents directory on iOS/MacOS.",
};

final _mdClass2 = {
  'classId': 'zxc123456789',
  'className': '人工智慧總整與實作',
  'classTime': '每周四, 14:00-16:00',
  'createdAt': '2013-12-01 01:11:11',
  'updatedAt': '2013-12-03 01:11:11',
  'desc': 'Many applications use one database and would never need to close it (it will be closed when the application is terminated). If you want to release resources, you can close the database.'
};

final _mdClass3 = {
  'classId': 'edc123456789',
  'className': '訊號與系統',
  'classTime': '每周五, 10:00-12:00',
  'createdAt': '2017-11-01 01:11:11',
  'updatedAt': '2018-02-03 01:11:11',
  'desc': 'A transaction is committed if the callback does not throw an error. If an error is thrown, the transaction is cancelled. So to rollback a transaction one way is to throw an exception.'
};

final _mdClass4 = {
  'classId': 'feg123456789',
  'className': '計算機概論',
  'classTime': '每周一, 13:00-16:00',
  'createdAt': '2011-11-01 01:11:11',
  'updatedAt': '2018-02-03 01:11:11',
  'desc': "Getting the result for each operation has a cost (id for insertion and number of changes for update and delete), especially on Android where an extra SQL request is executed. If you don't care about the result and worry about performance in big batches, you can use"
};

final _mdClass5 = {
  'classId': 'aws123456789',
  'className': '國文',
  'classTime': '每周二, 15:00-18:00',
  'createdAt': '2012-11-01 02:13:11',
  'updatedAt': '2018-12-03 11:42:31',
  'desc': 'By default a batch stops as soon as it encounters an error (which typically reverts the uncommitted changes). You can ignore errors so that every successful operation is ran and committed even if one operation fails:'
};

final _mdClass6 = {
  'classId': 'wcb123456789',
  'className': '數學',
  'classTime': '每周三, 17:00-18:00',
  'createdAt': '2015-12-03 02:13:11',
  'updatedAt': '2019-12-21 15:42:31',
  'desc': 'Due to the way transaction works in SQLite (threads), concurrent read and write transaction are not supported. All calls are currently synchronized and transactions block are exclusive. I thought that a basic way to support concurrent access is to open a database multiple times but it only works on iOS as Android reuses the same database object. I also thought a native thread could be a potential future solution however on android accessing the database in another thread is blocked while in a transaction...'
};

final _mdClass7 = {
  'classId': 'wfe123456789',
  'className': '資料結構',
  'classTime': '每周四, 12:00-18:00',
  'createdAt': '2014-11-02 02:13:11',
  'updatedAt': '2019-12-21 15:42:31',
  'desc': '''
    才離開沒多久就開始　擔心今天的妳過得好不好
    整個畫面是妳　想妳想的睡不著
    嘴嘟嘟那可愛的模樣　還有在妳身上香香的味道
    我的快樂是妳　想妳想的都會笑
    沒有妳在我有多難熬(沒有妳在我有多難熬多煩惱)
    沒有妳煩我有多煩惱(沒有妳煩我有多煩惱多難熬)
    穿過雲層　我試著努力向妳奔跑
    愛才送到　妳卻已在別人懷抱
    就是開不了口　讓她知道
    我一定會呵護著妳　也逗妳笑
    妳對我有多重要　我後悔沒　讓妳知道
    安靜的聽妳撒嬌　看妳睡著　一直到老
    就是開不了口　讓她知道
    就是那麼簡單幾句　我辦不到
    整顆心懸在半空　我只能夠　遠遠看著
    這些我都做得到　但那個人已經不是我 
  ''',
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