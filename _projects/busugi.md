---
title: 부수기 (중단)
date: 2023-06-01
excerpt: 채팅·치트·유닛 배치·발사체 시스템 (Unity/C#)
layout: single
categories: [Projects]
tags: [Unity, C#, Networking, Tools]

header:
  teaser: /assets/images/projects/busugi_thumb.jpg
  overlay_image: /assets/images/projects/busugi_hero.jpg
  overlay_filter: 0.3

# links:
#   - label: GitHub
#     url: https://github.com/KG-Crash/crash
---


## 🔨 부수기 (중단 프로젝트)

- **기간** : 2021.05 – 2023.06
    
- **인원** : 팀 프로젝트 (클라이언트 2, 서버 1)
    
- **기술 스택** : Unity, C#, MySQL, Go
    
- **역할** : 클라이언트 코어 로직 및 UI 구현, 서버 연동 일부
    

---

### 🎯 성과

- **채팅 시스템** 구축 → 실시간 메시징 및 시스템 로그 관리
    
- 채팅 입력을 통한 **치트 명령어 실행 기능** 제작
    
- **유닛 배치 및 생성 로직** 구현으로 전략적 전투 경험 제공
    
- **발사체/투사체 시스템** 설계 및 동작 구현
    
- 클라이언트 UI 제작 및 서버와 연동 완료
    

---

### 🔑 주요 구현

1. **채팅 시스템**
    
    - 실시간 메시징 + 시스템 이벤트 출력
        
    - 명령어 파싱 기반 치트 기능 확장 (예: `/spawn unitA`)
        
2. **치트 시스템**
    
    - 관리자 전용 명령어 처리
        
    - 디버깅 및 테스트 자동화 용도로 사용
        
3. **유닛 생성 & 배치**
    
    - 마우스 클릭 위치 → 유닛 생성/이동 처리
        
    - **Pathfinding**과 배치 제한 로직 구현
        
4. **발사체 시스템**
    
    - 투사체 속도, 궤적, 충돌 판정 구현
        
5. **UI 구현**
    
    - 전투 현황, 채팅창, 유닛 정보 패널 제작
        
        

---

### 📚 배운 점 & 개선점

- **클라이언트-서버 구조**에서 채팅/전투 시스템을 연동하는 경험
    
- 치트 기능을 통한 **개발 효율성 향상** 체감
    
- 프로젝트 관리 미흡과 일정 지연으로 **중도 종료 경험** → 협업/스케줄 관리의 중요성 학습
    
- 개선할 점: **버전 관리 및 태스크 관리 도구** 활용, 서버 최적화, 네트워크 안정성 강화
    

---

### 🔗 참고 링크

- [GitHub 저장소](https://github.com/KG-Crash/crash)