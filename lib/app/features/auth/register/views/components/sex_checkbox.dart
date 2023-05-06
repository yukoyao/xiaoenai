part of register;

class SexCheckbox extends StatelessWidget {
  SexCheckbox({Key? key, required this.womenSelected, required this.manSelected}) : super(key: key);

  Rx<bool> womenSelected;
  Rx<bool> manSelected;
  
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              womenSelected.value = true;
              manSelected.value = false;
            },
            child: Obx(
                  () => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: womenSelected.value
                          ? const Color.fromRGBO(253, 73, 128, 1)
                          : const Color.fromRGBO(
                          157, 157, 157, 0.4),
                      width: womenSelected.value
                          ? 3.0
                          : 1.0,
                    ),
                  ),
                ),
                padding:
                const EdgeInsets.only(top: 10, bottom: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 40,
                      child: womenSelected.value
                          ? Image.asset(
                          ImageRasterPath.wcIconWomenSelect)
                          : Image.asset(
                          ImageRasterPath.wcIconWomenNormal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '女',
                        style: TextStyle(
                          fontSize: 18,
                          color: womenSelected.value
                              ? const Color.fromRGBO(
                              253, 73, 128, 1)
                              : const Color.fromRGBO(
                              188, 188, 188, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              manSelected.value = true;
              womenSelected.value = false;
            },
            child: Obx(
                  () => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: manSelected.value
                          ? const Color.fromRGBO(98, 158, 254, 1)
                          : const Color.fromRGBO(
                          157, 157, 157, 0.4),
                      width: manSelected.value
                          ? 3.0
                          : 1.0,
                    ),
                  ),
                ),
                padding:
                const EdgeInsets.only(top: 10, bottom: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 40,
                      child: manSelected.value
                          ? Image.asset(
                          ImageRasterPath.wcIconManSelect)
                          : Image.asset(
                          ImageRasterPath.wcIconManNormal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '男',
                        style: TextStyle(
                          fontSize: 18,
                          color: manSelected.value
                              ? const Color.fromRGBO(
                              98, 158, 254, 1)
                              : const Color.fromRGBO(
                              188, 188, 188, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


