# SemiProject 잠자리(Zamzari)
## 프로젝트 개요
> 코로나 19로 인해 국외여행의 수요가 감소하고 국내 여행의 수요가 증가하였습니다. 기존 플랫폼인 에어비앤비의 약점을 보완하여 확실한 국내 지역 숙소 정보, 정확한 위치 정보, 사용자가 원하는 선별적인 정보를 제공하여 개인(게스트)-개인(호스트)간의 숙박 예약 사이트를 만들어 보고자 기획하게 되었습니다.
<br>

## 프로젝트 진행 순서
1. 기획  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f63008b3-bafb-4242-9caa-04e1f4e40658/01.%EA%B8%B0%ED%9A%8D%ED%9A%8C%EC%9D%98_Worktech.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220207T235321Z&X-Amz-Expires=86400&X-Amz-Signature=0f2872bbf2e3853c7ae558f06a3604c22c3b5a902f7685550f1277feaaddd000&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2201.%25EA%25B8%25B0%25ED%259A%258D%25ED%259A%258C%25EC%259D%2598_Worktech.pdf%22&x-id=GetObject)
    + 개발 배경 고찰
    + 구현 목표 설정
    + 요구사항 정의서 작성
    + 단위업무 정의서 작성을 통한 요구사항 상세화  
    <br>
    
2. UI 설계  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f53cb7de-d619-4517-ace3-b1a405bca110/02.UI%ED%9A%8C%EC%9D%98_Worktech.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220207T235340Z&X-Amz-Expires=86400&X-Amz-Signature=9be916893fd0cd9e85d774806249837cd82a8f971f7ece2567eb284e2e4ed3d5&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2202.UI%25ED%259A%258C%25EC%259D%2598_Worktech.pdf%22&x-id=GetObject)
    + 유스케이스 다이어그램 작성
    + 스토리보드를 통한 화면 구성 설계  
    <br>
3. DB 구축  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/4d256ca5-c5b8-4dd3-a0bb-bf31dd382477/03.DB%ED%9A%8C%EC%9D%98_Worktech.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220207T235352Z&X-Amz-Expires=86400&X-Amz-Signature=0aa27746cf4b880918ef00b1791dab36eeda17771535b6acbbdcb5f0b78687a8&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2203.DB%25ED%259A%258C%25EC%259D%2598_Worktech.pdf%22&x-id=GetObject)
    + DB 구축을 위한 ERD 설계
    + 테이블 정의서를 통한 ERD 상세화
    + 실제 테이블 구성 : [:clipboard:.sql](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6f039189-5c25-4b4f-99cd-6283dad91e5d/Worktech_DB.sql?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220207T235405Z&X-Amz-Expires=86400&X-Amz-Signature=8c73153bdc613d4a198fc3e396aae6aac3e2753ae2a678243e2a3b1c40f764b7&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Worktech_DB.sql%22&x-id=GetObject)
    <br>

4. 실구현  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/a4974ee2-b15c-4479-bb77-054bcefb911a/04.%EC%B5%9C%EC%A2%85_Worktech.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220207T235427Z&X-Amz-Expires=86400&X-Amz-Signature=6a5737095f764c9f67aa71befb034a362eae8a017138f32eab853c8dc4226577&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2204.%25EC%25B5%259C%25EC%25A2%2585_Worktech.pdf%22&x-id=GetObject)
<br>

## 프로젝트 산출물
### ERD
![Zamzari_ERD](https://ifh.cc/g/C58TOr.jpg)
### 유스케이스 다이어그램
![유스케이스 다이어그램](https://ifh.cc/g/g7HWcK.jpg)

<br>

## 구현 기능
### [회원]
-------------
+ 회원가입
+ 로그인
+ 개인 정보조회
+ 회원 정보수정
+ 회원 탈퇴,
+ 쪽지 목록 조회
+ 쪽지 발송/수신/삭제

<br>

### [숙소]
-------------
+ 숙소 등록
+ 검색을 통한 숙소 목록조회
+ 세부정보조회
<br>

### [예약]
-------------
+ 숙소 예약
+ 아임포트(I'mport)를 이용한 결제 프로세스
<br>

## 결과물
...

## 사용 기술 및 개발 환경
```
Server : Apache Tomcat 9.0
Database : Oracle 18c
Development Tool : Eclipse 4.15.0, sqlDeveloper version 21.2.1
Development Language :  JAVA, HTML5, CSS3, JavaScript, jQuery, SQL, EL/JSTL
Framework: Spring, Mybatis, Bootstrap
Team Coop : Github, VScode 1.16.2, ERDCloud, kakaoOven
Open API : Google Map API, I’mport API
```

