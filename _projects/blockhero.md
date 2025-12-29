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

- **기간** : 2016.03 – 2016.09
    
- **인원** : 5명 (개발 2, 기획 1, 디자인 2)
    
- **기술 스택** : Unity, C#
    
- **역할** : 퍼즐 코어 로직 및 전투 시스템 구현, UI 연동
    
### 시연 영상

<iframe width="560" height="315" src="https://www.youtube.com/embed/Ki5UoWxGf88" frameborder="0" allowfullscreen></iframe>

### 🎯 성과

- **3-Match + 슬라이딩** 규칙을 결합한 퍼즐 코어 구현
    
- **스테이트 머신 기반** 게임 플로우 관리 (Wait → Move → Match → Create → SideMatch)
    
- 8x8 격자에서 **스와이프 기반 전체 라인 이동** 시스템 구축
    

### 🔑 주요 구현

1. **퍼즐 시스템**
    
    - 8x8 격자 관리, 스와이프 방향 감지를 통한 **전체 라인 슬라이딩**
        
    - 가로/세로 3-Match 탐색 및 **애니메이션 기반 블록 삭제/생성**

```csharp
// 실제 매치 탐색 구현
int CheckBlockoverHorizontal(int x, int y, int ox, int oy) {
    if (x < 1 || x > 6) return 0;
    if (mBlockArray[x, y].mType != mBlockArray[ox, oy].mType) return 0;
    if (mBlockArray[x, y].isChecked == true) return 0;
    
    mBlockArray[x, y].isChecked = true;
    tempBlockList.Add(mBlockArray[x, y]);
    
    return 1 + CheckBlockoverHorizontal(x - 1, y, ox, oy) + 
               CheckBlockoverHorizontal(x + 1, y, ox, oy);
}
```

2. **스테이트 기반 게임플로우**
    
    - **GameState enum**을 통한 명확한 상태 관리
        
    - Wait → Move → Match → Create → SideMatch 순차 진행

```csharp
public enum GameState {
    Wait, Move, Match, Create, SideMatch
}

void Update() {
    switch(gamestate) {
        case GameState.Wait:
            // 터치 입력 처리 및 매치 검사
            break;
        case GameState.Move:
            // 스와이프에 따른 라인 이동
            break;
        case GameState.Match:
            // 매치된 블록들 삭제 애니메이션
            break;
        // ...
    }
}
```

3. **스와이프 기반 라인 이동**
    
    - 터치 방향 감지로 **전체 행/열 순환 이동**
        
    - 사이드 블록 생성/삭제를 통한 **무한 순환** 구조

```csharp
void MoveUp(int xPos) {
    for (int i = 0; i < 7; i++) {
        mBlockArray[xPos, i] = mBlockArray[xPos, i + 1];
        mBlockArray[xPos, i + 1].MoveAnimation(new Vector2(0, 1));
    }
    mBlockArray[xPos, 7] = null;
}
```

4. **애니메이션 시스템**
    
    - **코루틴 기반** 이동/삭제/생성 애니메이션
        
    - 애니메이션 완료 시점의 **상태 전환 트리거**

```csharp
IEnumerator DeleteCoroutine() {
    float startTime = Time.time;
    Vector2 orgVec = transform.localScale;
    
    while (Time.time - startTime <= 0.2f) {
        transform.localScale = Vector2.Lerp(orgVec, Vector2.zero, 
            (Time.time - startTime) / 0.2f);
        yield return null;
    }
    
    isMatched = true;
    if (Blockmng.gamestate != BlockManager.GameState.Create) {
        Blockmng.gamestate = BlockManager.GameState.Create;
    }
}
```

### 📚 배운 점 & 개선점

- **스테이트 머신 패턴**을 통한 복잡한 게임 플로우 관리의 효과성 확인
    
- **코루틴 기반 애니메이션**과 상태 전환의 동기화 중요성 체감
    
- 현재는 퍼즐 전용 구현으로, **전투 시스템과의 연동** 및 **이벤트 시스템** 도입 필요
    
- **.NET Framework 3.5** 환경에서의 최적화와 **GC 최소화** 고려사항 발견
    

### 🔗 참고 링크

-  [시연 영상 (YouTube)](https://youtu.be/Ki5UoWxGf88) · [GitHub](https://github.com/Joogba/BLOCKHERO)
- [SK STAC 본선 합격 게임 '블록히어로' : 네이버 블로그](https://m.blog.naver.com/game_project/220748953242)