part of profile_detail;

class SexItem extends StatelessWidget {
  const SexItem({Key? key, required this.sex}) : super(key: key);

  final RxString sex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 4),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(200, 200, 200, 1), // 边框颜色
            width: 0.2, // 边框宽度
          ),
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Text(
              '性别',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              alignment: Alignment.centerRight,
              child: Obx(
                () => Text(
                  sex.value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(143, 143, 148, 1),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                _showBottomSheet(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 210,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 20),
                child: Text(
                  '修改性别',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  sex.value = '男';
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.2,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: const Text(
                    '男',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  sex.value = '女';
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.2,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: const Text(
                    '女',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              Container(
                height: 12,
                color: const Color.fromRGBO(213, 213, 213, 0.3),
              ),
              ListTile(
                title: const Text(
                  '取消',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  // 处理列表项的点击事件
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
