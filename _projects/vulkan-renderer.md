---
title: BinRenderer (Vulkan/멀티-API RHI)
date: 2025-07-01
excerpt: 멀티-API RHI 설계·배리어 자동화·리소스 바인딩 모듈화
layout: single
categories: [Projects]
tags: [Vulkan, Graphics, Renderer, C++, GPU]

header:
  teaser: ../assets/images/projects/vulkanrenderer.png
  overlay_image: ../assets/images/projects/vulkanrenderer.png
  overlay_filter: 0.3

# links:
#   - label: GitHub
#     url: https://github.com/Joogba/BinRenderer
---


## 🎮 Vulkan 렌더링 엔진

![[스크린샷 2025-09-17 203828.png|500]]

- **기간** : 2025.07 – 2025.10
    
- **인원** : 개인 프로젝트
    
- **기술 스택** : C++, Vulkan, GLSL, SPIR-V, assimp, Tracy
    
- **역할** : 전체 렌더링 아키텍처 설계 및 구현
    

---

### 🎯 성과

- **Render Graph 시스템**을 JSON 기반으로 구현하여 복잡한 렌더링 파이프라인을 데이터 주도적으로 구성
    
- **SSAO(화면 공간 환경광 차폐)**, **지연 셰이딩(Deferred Shading)**, **PBR 머티리얼** 등 최신 그래픽스 기능 구현
    
- **셰이더 리플렉션**과 **Config 클래스 기반 파이프라인 관리**로 하드코딩 최소화 및 유지보수성 향상
    
- **Tracy 모니터링**과 GPU 타이머를 통한 성능 분석 및 최적화 경험 확보
    

---

### 🔑 주요 구현

1. **Render Graph**
    
    - JSON 파일을 기반으로 렌더 패스를 정의하고 그래프 의존성을 해석하여 자동 실행
        
    - 파이프라인 재구성 시 코드 변경 없이 데이터만 수정 가능
        
2. **셰이더 리플렉션 & Config 관리**
    
    - SPIR-V 리플렉션으로 바인딩 정보를 자동 추출
        
    - 파이프라인/머티리얼 설정을 Config 클래스로 관리하여 하드코딩 제거
        
3. **렌더링 기능**
    
    - **PBR**: GGX 기반 BRDF, IBL 적용
        
    - **SSAO**: 깊이/법선 버퍼 기반 환경광 차폐 효과 구현
        
    - **지연 셰이딩**: G-buffer 구조 설계, 라이트 패스 최적화
        
4. **파일 입출력**
    
    - glTF, FBX 모델 로더 구현으로 다양한 외부 에셋 처리
        
5. **최적화**
    
    - **머티리얼 일괄 업로드**: 모든 머티리얼 데이터를 GPU에 올리고 인덱스로 접근
        
    - **Half Precision** 사용으로 메모리 사용량 절감
        
    - **GPU 시간측정 & Tracy 연동**을 통한 성능 모니터링 및 병목 구간 분석
        

---

### 📚 배운 점

- **데이터 주도형 설계(Render Graph, Config 클래스)**가 대규모 렌더링 시스템의 유지보수성에 큰 도움이 됨을 체감
    
- GPU 성능 측정을 통한 최적화 과정에서 **머티리얼 관리 및 정밀도 선택(Half vs Float)**이 렌더링 효율성에 직접적으로 연결됨을 경험
    
- Vulkan의 **병렬화 모델**(멀티 큐 활용, Command Buffer 분리)이 CPU/GPU 활용도를 극대화하는 데 중요한 역할을 한다는 점을 학습
    
- **동기화(파이프라인 배리어, 이미지 레이아웃 전환, 세마포어/펜스)**의 올바른 사용이 성능과 안정성을 동시에 보장한다는 것을 체험
    
- **Descriptor Set 시스템**을 통해 리소스 바인딩을 유연하게 관리하는 방법과, 풀/셋 레이아웃의 설계가 엔진 구조에 미치는 영향 이해
    
- 복잡한 API 특성(Vulkan의 저수준 설계)을 다루면서 **DirectX11과 달리 모든 단계를 직접 제어해야 하는 부담**이 있지만, 그만큼 최적화 가능성이 크다는 점을 배움
    

---

### 🚀 추후 개선 사항

- **하드코딩 최소화**  
    상속 및 제네릭 프로그래밍을 활용하여 **Config/파이프라인 구조 리팩토링**
    
- **멀티 API 지원**  
    Vulkan 중심 구조에서 **DirectX12까지 지원하는 멀티 API 렌더링 아키텍처**로 확장
    
- **게임엔진 적용**  
    본 렌더링 라이브러리를 기반으로 **게임엔진 렌더링 모듈**에 통합하여 실사용 검증
    

---

### 🔗 참고 링크
        
- [GitHub 저장소](https://github.com/)

