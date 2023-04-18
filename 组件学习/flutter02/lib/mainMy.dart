import 'package:flutter/material.dart';

class SubscribeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          topSelect(logic, context),
          topSelect2(logic, context),
          centerView(logic, context)
          // Positioned(child: ,top: 270.h,),
        ],
      ),
    );
  }

  topSelect(SubscribeDetailLogic logic, BuildContext context) {
    return Positioned(
        child: Image.asset(
          'images/Products_back.jpg',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ));
  }

  topSelect2(SubscribeDetailLogic logic, BuildContext context) {
    return Positioned(
        child: Image.asset(
          'images/project_top_back.png',
          height: 700.h,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ));
  }

  centerView(SubscribeDetailLogic logic, BuildContext context) {
    return Obx(() {
      return logic.pdetailData.value.id! > 0
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          topContainer(context, '认购项目'.tr, black: true),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.h,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            logic.pdetailData.value.imgUrl!,
                            fit: BoxFit.fill,
                            height: 580.h,
                            width: MediaQuery.of(context).size.width - 160.w,
                          )),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: topView1(logic, context, '限投次数'.tr,
                                logic.pdetailData.value.jionNum.toString()),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: topView1(logic, context, '会员等级'.tr,
                                logic.pdetailData.value.jionLevel.toString()),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: topView1(logic, context, '高级合伙人等级'.tr, '0'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      CommondBtn(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 153.h,
                          startColor: AppColor.color_ffCDAC91,
                          endCOlor: AppColor.color_ffEDC4A5,
                          onTap: () {
                            //购买按钮
                            Get.toNamed(AppRoutes.HOME_SUBSCRIBE_CONFIRM,
                                arguments: logic.pdetailData.value);
                          },
                          child: Text(
                            '马上认购'.tr,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: selectView(logic, context, '项目信息'.tr, () {
                              logic.selectIndex.value = 0;
                            }, 0),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: selectView(logic, context, '委托协议'.tr, () {
                              logic.selectIndex.value = 1;
                            }, 1),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: selectView(logic, context, '项目详情'.tr, () {
                              logic.selectIndex.value = 2;
                            }, 2),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(() {
                        return logic.selectIndex.value == 0
                            ? getBottomView(logic, context)
                            : logic.selectIndex.value == 1
                            ? getBottomView1(logic, context)
                            : getBottomView2(logic, context);
                      }),
                    ],
                  )))
        ],
      )
          : Container();
    });
  }

  topView1(SubscribeDetailLogic logic, BuildContext context, String str1,
      String value) {
    return Container(
      height: 330.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          )),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [AppColor.color_ffCDAC91, AppColor.color_ffEDC4A5]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
            child: Text(
              str1,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.orangeAccent, fontSize: 18),
                ),
              ))
        ],
      ),
    );
  }

  selectView(SubscribeDetailLogic logic, BuildContext context, String txt,
      GestureTapCallback onTap, int index) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 150.h,
        child: Stack(
          children: [
            Obx(() {
              return Image.asset(
                logic.selectIndex.value == index
                    ? 'images/project_detail_btn2.png'
                    : 'images/project_detail_btn.png',
                height: 150.h,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              );
            }),
            Center(
              child: Obx(() {
                return Text(
                  txt,
                  style: TextStyle(
                      color: logic.selectIndex.value == index
                          ? Colors.white
                          : Colors.black,
                      fontSize: 20),
                );
              }),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }



  getBottomView1(SubscribeDetailLogic logic, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          )),
      child: Obx(() {
        return Html(data :logic.templateData.value.template!); //TODO 返回的html文本有问题
      }),
    );
  }

  getBottomView2(SubscribeDetailLogic logic, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          )),
      child: Obx(() {
        return Html(data :logic.subData.value.content!);
      }),
    );
  }

  getBottomView(SubscribeDetailLogic logic, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          )),
      child: Obx(() {
        return logic.pdetailData.value.id == - 99 ? Container() : Column(
          children: [
            itemView('认购项目'.tr,Text('${logic.pdetailData.value.name}',style: TextStyle(color: Colors.blueAccent),),false,50.0),
            itemView('认购类型'.tr,Text('${logic.pdetailData.value.projectType}',style: TextStyle(color: Colors.blueAccent),),true,50.0),
            itemView('认购金额'.tr,Text('${logic.pdetailData.value.amount}(' +'限购'.tr +'${logic.pdetailData.value.jionNum}' +'次'.tr + ')',style: TextStyle(color: Colors.blueAccent),),false,50.0),
            itemView('收益率'.tr,Text('${logic.pdetailData.value.dailyChemicalIncome}%',style: TextStyle(color: Colors.red),),true,50.0),
            itemView('认购期限'.tr,Text('${logic.pdetailData.value.cycleSec}${logic.pdetailData.value.cycleUnit}',style: TextStyle(color: Colors.blueAccent),),false,50.0),
            itemView('结算时间'.tr,Text('自认购起开始计息, 每 '+'${logic.pdetailData.value.pmTimeTxt}' ' 返息, 在认购周期 '+'${logic.pdetailData.value.cycleSec}${logic.pdetailData.value.cycleUnit}'+' 结束时, 收益与认购本金将一起返还到您的账户余额钱包',style: TextStyle(color: Colors.black),),false,100.0),
            itemView('结算收益'.tr,Text('收益计算: 按最低认购金额 '+'${logic.pdetailData.value.pmTypeTxt}'+', 公式收益 '+ '${logic.pdetailData.value.amount}' +' × '+'${logic.pdetailData.value.dailyChemicalIncome}%' +' × '+'${logic.pdetailData.value.cycleSec}${logic.pdetailData.value.cycleUnit}'+' = 预计总收益 '+'${logic.pdetailData.value.totalRevenue}'+', 总预计本息 '+'${logic.pdetailData.value.totalAmountRevenue}'+'。',style: TextStyle(color: Colors.black),),false,100.0),
            itemView('认购金额'.tr,Text('此项目每人最多可认购金额 '+'${logic.pdetailData.value.pmInvestTxt}'+'。',style: TextStyle(color: Colors.black),),false,100.0),
          ],
        );
      }),
    );
  }

  itemView(String name,Widget desc,bool isYello,double height) {
    return Container(
      height: height,
      color: isYello ? AppColor.color_ffF8E0C0 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            child: Text(name),
          ),
          Expanded(child: desc)
        ],
      ),
    );
  }
}
