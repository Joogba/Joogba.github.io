---
title: 백팩로그 (BackPack Rogue)
date: 2025-03-01
excerpt: UE5 Dedicated Server, GAS, 인벤토리 테트리스/코스메틱 시스템
layout: single
categories: [Projects]
tags: [Unreal, UE5, C++, Multiplayer, GAS]

header:
  teaser: ../assets/images/projects/backpackrogue.jpg
  overlay_image: ../assets/images/projects/backpackrogue.jpg
  overlay_filter: 0.3

# links:
#   - label: GitHub
#     url: https://github.com/Joogba/BackPackRogue-Live
#   - label: Demo Video
#     url: https://youtu.be/QOCWEXl7bXA
---


## 🎒 백팩 로그 (BackPack Rogue)

- **기간** : 2025.03 ~ 진행 중
    
- **인원** : 개인 프로젝트트
    
- **기술 스택** : Unreal Engine 5, C++, Dedicated Server, GAS(Game Ability System)
    
- **역할** : 전반적인 게임플레이/네트워크 시스템 구현
    

---

### 시연 영상

<iframe width="560" height="315" src="https://www.youtube.com/embed/QOCWEXl7bXA" frameborder="0" allowfullscreen></iframe>

### 🎯 성과

- **Dedicated Server 기반 멀티플레이 구조** 구축 및 RPC/Replication 활용
    
- **GAS**를 통한 스킬/루팅/상호작용 시스템 완성
    
- 장착 장비를 캐릭터 모델에 반영하는 **코스메틱 시스템** 구현
    
- 아이템 회전과 별칸(Star Socket)을 지원하는 **테트리스형 인벤토리** 제작
    
- **Data Asset** 기반 컨텐츠 관리 파이프라인 확보
    

---

### 🔑 주요 구현

1. **Dedicated Server**
    
    - Listen Server가 아닌 **Dedicated Server 구조**를 설계
        
    - 캐릭터 이동, 스킬 사용, 아이템 상호작용을 **RPC + Replication**으로 동기화
        
    - 서버 권한 기반 충돌 처리 및 상태 업데이트
        
2. **코스메틱 시스템**
    
    - 장착 아이템에 따라 캐릭터의 외형을 즉시 변경
        
    - 각 부위를 액터로 생성하여 부모 애니메이션을 상속받아 구현
        
3. **인벤토리 테트리스**
        
    - 아이템 충돌 검사, 경계 조건 검사 기능 구현
		
	- 인벤토리 , 장비 칸 간 이동 구현
        
4. **Data Asset 기반 관리**
    
    - 무기/아이템/스킬 데이터를 **Data Asset**으로 관리
        
    - 블루프린트와 C++ 혼합 구조로 컨텐츠 생산성 강화
        

---

### 📚 배운 점 & 개선점

- Unreal Engine 멀티플레이 구조(Replication, Authority 개념)의 이해
    
- GAS를 활용한 **확장 가능한 스킬 시스템** 설계 경험
    
- 인벤토리 시스템을 통해 **UI/UX와 게임플레이의 긴밀한 관계** 학습
    
- 개선 예정: **매칭 시스템**, **자기장 시스템** 추가 및 **서버 성능 최적화**
    

---

### 🔗 참고 링크

- [시연 영상 (YouTube)](https://youtu.be/QOCWEXl7bXA)
    
- [GitHub 저장소](https://github.com/Joogba/BackPackRogue-Live)