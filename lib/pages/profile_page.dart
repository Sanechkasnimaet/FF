import 'package:flutter/material.dart';
import 'package:vers2/design/colors.dart';
import 'FriendsListBT.dart';
import 'SettingsBT.dart';
import 'map_page.dart';
import 'create_events.dart';
import 'package:flutter/cupertino.dart';
import 'search_events.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      body: Padding(
        padding: MediaQuery.of(context).size.width > 600
            ? EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width - 430) * 0.49,
        )
            : EdgeInsets.zero,
        child: Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
              child: Container(
                constraints: const BoxConstraints.expand(),
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Мой профиль",
                          style: TextStyle(
                            fontSize: 35,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ), // Добавляем отступ после иконки
                      Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100), // половина ширины и высоты контейнера
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/img/avatar.jpeg'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Изображение нажато');
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) => buildSettings(),
                                      );
                                    },
                                    child: const Row(
                                      children: [
                                        Icon(Icons.settings, color: accentColor, size: 40), // Ваша иконка
                                        SizedBox(width: 10), // Отступ между иконкой и текстом
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  const Text(
                                    "Лахта",
                                    style: TextStyle(
                                      fontSize: 39,
                                      color: accentColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  const Row(
                                    children: [
                                      Icon(Icons.edit, color: Colors.grey, size: 20), // Иконка редактирования
                                      SizedBox(width: 5), // Отступ между иконкой и текстом
                                      Text(
                                        "Редактировать профиль",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 20), // Добавляем отступ после аватара

                      Column(
                        children: [

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) => buildSheetFriends(),
                                );
                              },
                              icon: Icon(Icons.person_2, color: accentColor), // Указываем цвет иконки
                              label: Text('Друзья', style: TextStyle(color: blackColor, fontSize: 20,)), // Указываем цвет текста
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // Задаем белый цвет фона
                                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),

                          SizedBox(height: 10), // Отступ между кнопками

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Действие при нажатии на кнопку
                              },
                              icon: Icon(Icons.calendar_month, color: accentColor),
                              label: Text('Мои события',style: TextStyle(color: blackColor, fontSize: 20,)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),

                          SizedBox(height: 10),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Действие при нажатии на кнопку
                              },
                              icon: Icon(Icons.heart_broken, color: accentColor),
                              label: Text('Любимые события',style: TextStyle(color: blackColor, fontSize: 20,)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),

                          SizedBox(height: 10),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {


                              },
                              icon: Icon(Icons.lock, color: accentColor),
                              label: Text('Безопасность',style: TextStyle(color: blackColor, fontSize: 20,)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),




                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // Действие при нажатии на кнопку
                                  },
                                  icon: Icon(CupertinoIcons.location_fill),
                                  color: accentColor,
                                  iconSize: 40,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      print('Изображение нажато');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const CreateScreen()),
                                      );
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/img/add_events.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    print('Изображение нажато');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                                    );
                                  },
                                  icon: Icon(Icons.person),
                                  color: accentColor,
                                  iconSize: 50,
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget makeDismissible({required Widget child}) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(onTap: () {}, child: child),
  );

  Widget buildSheet() => makeDismissible(
    child: DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(16),
        child: _buildSheetFriends(controller),
      ),
    ),
  );


  Widget buildSheetFriends() => makeDismissible(
    child: DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(16),
        child: _buildSheetFriends(controller),
      ),
    ),
  );

  Widget _buildFindFriendsButton({
    required VoidCallback onPressed,
    required String label,
    required TextEditingController searchController,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          // Показываем клавиатуру при нажатии на кнопку
          FocusScope.of(context).requestFocus(FocusNode());
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: TextField(
                  controller: searchController,
                  autofocus: true, // Фокус на поле ввода
                  decoration: InputDecoration(
                    labelText: 'Поиск друзей',
                    border: OutlineInputBorder(),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Закрыть'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Действие при нажатии на кнопку "Найти"
                      // Можно обработать введенные данные для поиска друзей
                      Navigator.of(context).pop();
                    },
                    child: Text('Найти'),
                  ),
                ],
              );
            },
          );
        },
        child: Text(
          label,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          // Убираем тень
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white), // Белая граница
          ),
        ),
      ),
    );
  }


  Widget _buildElevatedButtonWithImage({
    required VoidCallback onPressed,
    required String imagePath,
    required String label,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 35,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: blackColor,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: whiteColor,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }



  Widget _buildSheetFriends(ScrollController controller) {
    return ListView(
      controller: controller,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 0),
          child: Center(
            child: Text(
              "Мои друзья",
              style: TextStyle(
                fontSize: 35,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        SizedBox(height: 40),




        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Разделяй и властвуй',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'БингаБонга Николаева',
        ),

        SizedBox(height: 15), // Расстояние между кнопками

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Дочь Полковника',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Бездельник',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Сын Мамы',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Пабгер',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Старостик',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Друг 10',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Друг 10',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Друг 10',
        ),

        SizedBox(height: 15),

        _buildElevatedButtonWithImage(
          onPressed: () { },
          imagePath: 'assets/img/account.png',
          label: 'Друг 10',
        ),


        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                print('На карту');
                // Фокусировка карты на геолокации пользователя
              },
              icon: const Icon(CupertinoIcons.location_fill),
              color: accentColor,
              iconSize: 40,
            ),
            GestureDetector(
              onTap: () {
                print('Изображение нажато');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateScreen()),
                );
              },
              child: Image.asset(
                'assets/img/add_events.png',
                width: 100,
                height: 100,
              ),
            ),
            IconButton(
              onPressed: () {
                print('Настройки');
              },
              icon: const Icon(Icons.person),
              color: accentColor,
              iconSize: 50,
            ),
          ],
        ),


      ],
    );
  }

  Widget buildSettings() => makeDismissible(
    child: DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      builder: (_, controller) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(16),
        child: _buildSheetContent(controller),
      ),
    ),
  );


  Widget _buildSheetContent(ScrollController controller) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: Center(
            child: Text(
              "Настройки",
              style: TextStyle(
                fontSize: 35,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Expanded(
          child: ListView(
            controller: controller,
            children: [
              buildTwoButtonsWithIconAndText(),
              const SizedBox(height: 20),
              buildLogoutButton(
                onPressed: () {
                  // Действие при нажатии на кнопку
                },
              ),
              // Убран лишний child
            ],
          ),
        ),
        // Размещаем Row внизу экрана

        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  print('На карту');
                  // Фокусировка карты на геолокации пользователя
                },
                icon: const Icon(CupertinoIcons.location_fill),
                color: accentColor,
                iconSize: 40,
              ),
              GestureDetector(
                onTap: () {
                  print('Изображение нажато');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateScreen()),
                  );
                },
                child: Image.asset(
                  'assets/img/add_events.png',
                  width: 100,
                  height: 100,
                ),
              ),
              IconButton(
                onPressed: () {
                  print('Настройки');
                },
                icon: const Icon(Icons.person),
                color: accentColor,
                iconSize: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget buildLogoutButton({
    required VoidCallback onPressed,
  }) =>
      Container(
        height: 70,
        width: 362,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            backgroundColor: Colors.white, // Цвет кнопки
          ),
          child: Text(
            'Выйти из аккаунта',
            style: TextStyle(fontSize: 20,
                color: Colors.redAccent),
          ),
        ),
      );

  Widget buildTwoButtonsWithIconAndText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 173,
          height: 173,
          child: ElevatedButton(
            onPressed: () {
              // Действие при нажатии на кнопку
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  size: 70,
                  color: accentColor,
                ),
                Text(
                  'Сменить\nпочту',
                  style: TextStyle(color: accentColor, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 16),
        SizedBox(
          width: 173,
          height: 173,
          child: ElevatedButton(
            onPressed: () {
              // Действие при нажатии на кнопку
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 70,
                  color: accentColor,
                ),
                Text(
                  'Поменять\nпароль',
                  style: TextStyle(color: accentColor, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


