---
title: 블록 히어로 (Block Hero)
date: 2016-09-30
excerpt: 3-Match+슬라이딩 퍼즐과 전투 상호작용 루프 구현 (Unity/C#)
layout: single
categories: [Projects]
tags: [Unity, C#, Puzzle, Combat]

header:
  teaser: ../assets/images/projects/blockhero.png
  overlay_image: ../assets/images/projects/blockhero.png
  overlay_filter: 0.3

# links:
#   - label: GitHub
#     url: https://github.com/Joogba/BLOCKHERO
#   - label: Demo Video
#     url: https://www.youtube.com/watch?v=Ki5UoWxGf88
---


## 🧱 블록 히어로 (Block Hero)

![[스크린샷 2025-09-24 002122.png|300]]

- **기간** : 2016.03 – 2016.09
    
- **인원** : 5명 (개발 2, 기획 1, 디자인 2)
    
- **기술 스택** : Unity, C#
    
- **역할** : 퍼즐 코어 로직 및 전투 시스템 구현, UI 연동
    

### 🎯 성과

- **3-Match + 슬라이딩** 규칙을 결합한 퍼즐 코어 구현
    
- 매치 결과가 실시간으로 전투 파라미터(데미지/게이지/콤보)에 반영되는 **퍼즐-전투 상호작용 루프** 완성
    
- 스테이트 기반 **라운드/웨이브 진행 로직**과 간단한 **AI 타겟팅** 구축
    

### 🔑 주요 구현

1. **퍼즐 시스템**
    
    - 격자(Grid) 관리, 셀 스왑/슬라이드, 매치 탐색(가로/세로/연속)
        
    - 연쇄(Chain) 및 콤보 가중치, 특수 블록(폭발/라인 클리어) 생성 규칙

```c#
// 간단한 매치 탐색 스케치
bool IsMatchAt(int x, int y) {
    return (CountSame(x, y, 1, 0) + CountSame(x, y, -1, 0) - 1 >= 3) ||
           (CountSame(x, y, 0, 1) + CountSame(x, y, 0, -1) - 1 >= 3);
}
```

2. **전투 시스템**
    
    - 매치 결과 → **DamageEvent** 생산 → 적 HP 반영
        
    - 속성 상성/콤보 배수/스킬 게이지 증가 등 **전투 파라미터화**
```c#
void ApplyMatchResult(MatchInfo m) {
    var damage = baseDamage * m.ComboMultiplier * ElementBonus(m.Element);
    enemy.TakeDamage(damage);
    playerGauge.Add(m.Gems);
}
```

3. **퍼즐-전투 상호작용**
    
    - 퍼즐 보드와 전투 매니저를 **이벤트 버스**로 decouple
        
    - 보드 → (MatchEvent) → CombatManager / UI / SFX 동시 반응
        
4. **UI/UX & 이펙트**
    
    - 콤보 카운트/게이지/스킬 버튼 연동
        
    - 매치·폭발·스킬 사용 시 피드백(애니메이션/사운드) 정합성 유지
        

### 📚 배운 점 & 개선점

- 퍼즐 규칙과 전투 파라미터의 **데이터 구동 설계** 필요성 체감(ScriptableObject 등으로 외부화 권장)
    
- 보드 연산(탐색/중력/리필) 최적화와 **프레임 일관성** 확보의 중요성
    
    

### 🔗 참고 링크

-  [시연 영상 (YouTube)](https://youtu.be/Ki5UoWxGf88) · [GitHub](https://github.com/Joogba/BLOCKHERO)
- [SK STAC 본선 합격 게임 '블록히어로' : 네이버 블로그](https://m.blog.naver.com/game_project/220748953242)