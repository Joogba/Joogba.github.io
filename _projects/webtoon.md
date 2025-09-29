---
title: 3D 웹툰 제작 시스템 / 뷰어
date: 2023-09-30
excerpt: Full Body IK·스토리보드·뷰어·Docker/Node/MySQL 연동
layout: single
categories: [Projects]
tags: [Unity, IK, Tooling, Docker, Node, MySQL]

header:
  teaser: ../assets/images/projects/webtoon.png
  overlay_image: ../assets/images/projects/webtoon.png
  overlay_filter: 0.3

# links:
#   - label: GitHub
#     url: https://github.com/metaversewebtoon/joljak
#   - label: Demo Video
#     url: https://youtu.be/lv2iRuSi9Mk
---


## 📚 3D 웹툰 제작 시스템 / 뷰어

![[Pasted image 20250929194947.png|500]]

- **기간** : 2023.03 – 2023.09
    
- **인원** : 팀 프로젝트 (클라이언트 2, 서버 1)
    
- **기술 스택** : Unity, C#, Docker, Node.js, MySQL
    
- **역할** : 뷰어 클라이언트 개발, Full Body IK 적용, 스토리보드 툴 구현
    

---

### 🎯 성과

- 웹툰 제작 과정에서 **3D 캐릭터와 배경을 활용한 장면 연출** 기능 구현
    
- **오픈소스 Full Body IK** 라이브러리 학습 및 적용 → 캐릭터 포즈 편집 지원
    
- **스토리보드 시스템** 구축 → 컷 단위 연출과 뷰어 재생 지원
    
- 서버-클라이언트 구조로 **웹툰 데이터 관리 파이프라인** 정립
    

---

### 🔑 주요 구현

1. **스토리보드 시스템**
    
    - 장면(Scene)을 컷 단위로 보드에 배치 및 크기/위치 조절 기능
        
    - 배치된 컷들을 통합하여 뷰어 서버로 전송
        
2. **Full Body IK**
    
    - 오픈소스 IK 솔루션을 Unity에 적용
        
    - 드래그 앤 드롭 기반의 캐릭터 포즈 조작 지원
        
    - 관절 제약(Constraint) 적용으로 비자연스러운 포즈 최소화
        



---

### 📚 배운 점 & 개선점

- 전통적인 2D 웹툰 제작 파이프라인을 3D 엔진(Unity)로 옮기는 과정에서의 **데이터 구조화/직렬화 경험**
    
- **IK 적용** 시 성능 부담과 품질 간 균형을 맞추는 방법 학습
    
- 협업 환경에서 **Git + Docker 기반 개발 워크플로우** 적용 경험
    
- 개선할 점: 컷 편집 툴의 **UI/UX 직관성**, 서버 성능 최적화, 멀티 플랫폼 지원
    

---

### 🔗 참고 링크

- [GitHub 저장소](https://github.com/metaversewebtoon/joljak)
    
- [시연 영상 (YouTube)](https://youtu.be/lv2iRuSi9Mk)
    
