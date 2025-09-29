---
title: DirectX11 Renderer
date: 2023-06-30
excerpt: PBR, PSO, SPH 등 렌더링 아키텍처 구현

# ✅ 썸네일(카드용)
header:
  teaser: /assets/images/projects/dx11renderer.png

# (선택) 상세 상단 히어로
  overlay_image: /assets/images/projects/dx11renderer.png
  overlay_filter: 0.3

tags: [Graphics, DirectX11, C++]
categories: [Projects]
---

## 🎮 DirectX11 렌더러

![[스크린샷 2025-05-27 213156.png|500]]

- **기간** : 2025.01 – 2025.06
    
- **인원** : 개인 프로젝트
    
- **기술 스택** : C++, DirectX11, HLSL, ImGui
    
- **역할** : 전체 렌더링 아키텍처 설계 및 구현
    

### 🎯 성과

- **PBR 렌더링** 구현으로 현실감 있는 머티리얼 표현 달성
    
- **Pipeline State Object(PSO)** 구조화를 통해 파이프라인 상태 전환 비용 감소
    
- **유체 시뮬레이션 (SPH / Stable Fluid)** 구현 및 시각화 성공
    
- 스켈레탈 애니메이션 지원으로 캐릭터 애니메이션 파이프라인 확보
    

### 🔑 주요 구현

1. **Pipeline State Object (PSO)**
    - 파이프라인 상태를 구조화하여 **런타임 동적 전환**이 가능하도록 설계
    - 언리얼 엔진의 PSO 구조를 참고하여 자체 클래스화
2. **언리얼 스타일 PBR**
    - GGX BRDF 기반 반사 모델 구현
    - IBL(Image-Based Lighting) 적용, HDR/큐브맵 샘플링 활용
3. **스켈레탈 애니메이션**    
    - 본 행렬(팔레트 스키닝) 기반 애니메이션 시스템 구축
    - 애니메이션 블렌딩 지원
4. **유체 시뮬레이션**
    - **SPH(Smoothed Particle Hydrodynamics)**로 밀도/압력 계산
    - **Stable Fluid** 방식으로 2D/3D 유체 거동 구현

### 📚 배운 점 & 개선점

- 렌더링 파이프라인의 각 단계(입력–셰이딩–출력)를 코드로 명확히 구조화하는 중요성 학습
- 엔진 단위 기능(PBR, 유체, 애니메이션)을 독립적으로 모듈화하면 유지보수성이 올라간다는 경험

### 🔗 참고 링크

- [시연 영상 (YouTube)](https://youtu.be/rK0AfXBWJ7o)
- [블로그 상세 설명](https://blog.naver.com/tjdwn0802/223865556039)
- [GitHub 저장소](https://github.com/)
