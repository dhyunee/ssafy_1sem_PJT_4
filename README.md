# WhereIsMyHome_4_Algo_5조_김송빈_김정윤
## 알고리즘 적용, Event 노출 및 참여
## 평가항목 및 점수표
|구현기능|점수|
|:---:|:---:|
| **1. 최단경로 알고리즘 적용** | 30 |
| **1-1. 위도 경도로 거리 측정** |  | 
| **1-2.예상 도보시간 계산** |  | 
| **4. 이벤트 관련 프론트 & 백엔드** | 30 |
| **4-1.EVENT 노출(참여 후 db에서 참여코드 변화)** |   |
| **4-1.EVENT 참여(참여 후 db에서 참여코드 변화)** |   |
| **관련 기획서 제출** | 10 |
| 추가 알고리즘 및 기획서 | 개당 10 |

- **위도 경도로 거리 측정 및 도보시간 계산**
![kakao](https://user-images.githubusercontent.com/81145399/195274588-532bb389-2f27-400e-9c37-b0aa0ade5bb3.png)
1. 매물과 가장 가까운 지하철 역의 위도와 경도를 통해 최단 경로를 계산하고 Kakao Map API를 이용하여 해당 거리를 직선으로 나타냄
2. 평균적으로 한 시간 당 4km를 이동하므로 예상 도보시간을 나타냄.


- **이벤트 관련 프론트 & 백엔드**
 
1. 이벤트 노출

이벤트 메인 화면

![image](https://user-images.githubusercontent.com/81145399/195278910-4938bd74-9831-44b1-9e3c-75ad4583d6ce.png)

이벤트 상세 화면 ( 리뷰 이벤트 )
![image](https://user-images.githubusercontent.com/81145399/195280230-04bd0a8e-6144-4fa6-a0b1-3a87beccbe5a.png)

1-1. 회원 가입된 고객들만 접근 가능함
1-2. 기간에 따라서 보이고 안보이고-> 이벤트 기간 지나면 비활성화

2. 이벤트 참여

![image](https://user-images.githubusercontent.com/81145399/195275721-d8a543c0-5ff4-44b2-8f35-590cea085c6d.png)

 USER_EVENT_PART == 001 : 이벤트 참여 고객
 USER_EVENT_PART == 002 : 이벤트 미참여 고객

2-1. register 버튼 누르면 DB에서 이벤트 미참여 고객 코드 002에서 001로 바뀜

2-2. alert로 이벤트 참여 확인 창 띄움


![ezgif com-gif-maker](https://user-images.githubusercontent.com/81145399/195278359-cc3f4f4a-99d2-4938-b87e-781976fc670c.gif)
