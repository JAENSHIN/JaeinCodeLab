import 'package:flutter/material.dart';
import 'package:health/Kim/record/myrecord_machinerecord.dart';

class MyRecordMachinePage extends StatelessWidget {
  final String exercise;

  MyRecordMachinePage({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$exercise 운동'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 3, // 너비 대 높이 비율 조정
          crossAxisSpacing: 8, // 수평 간격
          mainAxisSpacing: 8, // 수직 간격
          padding: EdgeInsets.all(16),
          children: _buildMachineButtons(context, exercise),
        ),
      ),
    );
  }

  List<Widget> _buildMachineButtons(BuildContext context, String exercise) {
    List<String> machines = [];

    switch (exercise) {
      case '가슴':
        machines = [
          '벤치 프레스',
          '인클라인밴치프레스',
          '디클라인밴치프레스',
          '딥스',
          '딥스어시스트',
          '씨티드 체스트 프레스(머신)',
          '체스트 프레스(머신)',
          '플라이(머신)',
          '딥스(머신)'
        ];
        break;
      case '어깨':
        machines = ['숄더 프레스', '레터럴 레이즈', '페이스 풀', '숄더 쉬러그'];
        break;
      case '하체':
        machines = [
          '스미스머신',
          '스쿼트(프리웨이트)',
          '라잉 레그컬',
          '레그프레스',
          '레그익스텐션',
          '힙어브덕션'
        ];
        break;
      case '엉덩이':
        machines = ['힙 쓰러스트', '레그 프레스', '딥스', '프론트 런지'];
        break;
      case '등':
        machines = ['풀업', '풀업어시스트', '씨티드 로우', '랫풀다운', '랫풀다운(머신)'];
        break;
      case '복근':
        machines = ['토르소 소테이션', '플랭크', '레그 레이즈', '러시안 트위스트'];
        break;
      case '전신':
        machines = ['데드리프트', '벤치 프레스', '풀업', '스쿼트'];
        break;
      case '유산소':
        machines = ['트렌드밀', '싸이클', '씨티드 로우'];
        break;
      default:
        break;
    }

    return machines
        .map((machine) => _buildMachineButton(context, machine))
        .toList();
  }

  Widget _buildMachineButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        // 운동 기구 버튼을 눌렀을 때 처리할 작업 작성
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyRecordMachineRecord(exercise: text)),
        );
      },
      child: Text(text),
    );
  }
}
