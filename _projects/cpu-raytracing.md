---
title: CPU RayTracing
date: 2023-12-01
excerpt: glm, open mp 활용한 cpu 기반 레이트레이싱 

# ✅ 썸네일(카드용)
header:
  teaser: ../assets/images/projects/cpuray.png

# (선택) 상세 상단 히어로
  overlay_image: ../assets/images/projects/cpuray.png
  overlay_filter: 0.3
layout: single       # (권장) 상세 페이지 레이아웃
tags: [Graphics, OpenMp, C++]
categories: [Projects]
---

## 🎮 CPU RayTracing 구현

![[스크린샷 2025-01-09 192301.png]]

- **기간** : 2025.01 – 2025.01
    
- **인원** : 개인 프로젝트
    
- **기술 스택** : C++, OpenMp
    
- **역할** : CPU 기반 레이 트레이싱 개념 학습 및 그래픽스 기초 학습
    

### 🎯 주요 성과
1. 렌더링 성능 최적화
	•	OpenMP 병렬 처리로 멀티코어 CPU 활용하여 렌더링 속도 향상
	•	2x2 적응형 안티앨리어싱 구현으로 화질과 성능의 균형 달성
	•	재귀적 레이 추적 (최대 5단계)으로 현실적인 반사/굴절 효과 구현
2. 물리 기반 렌더링 구현
	•	Snell의 법칙을 이용한 정확한 굴절 계산
	•	Phong 셰이딩 모델 적용 (Ambient + Diffuse + Specular)
	•	다중 재질 지원: 반사율(reflection), 투명도(transparency), 굴절률(IOR) 조절 가능
3. 고급 기하학적 계산
	•	Barycentric 좌표계를 이용한 삼각형 내부 점 판정 및 텍스처 매핑
	•	Cross Product를 활용한 효율적인 광선-삼각형 충돌 검출
	•	Back-face Culling 최적화로 불필요한 연산 제거
	
---

### 🔑 주요 구현

1. 광선 충돌
	•	광선-구체 충돌: 이차방정식 해법으로 정확한 교점 계산
	•	광선-삼각형 충돌: 평면 방정식 + 무게중심 좌표계 활용
	•	최근접 충돌 검출: 모든 오브젝트와의 거리 비교로 정확한 렌더링
2. 텍스쳐 시스템
	•	Bilinear Filtering: 텍스처 확대/축소 시 자연스러운 보간
	•	UV 좌표 매핑: Barycentric 좌표를 이용한 삼각형 텍스처 매핑
	•	Skybox 환경 매핑: 6면 큐브맵을 이용한 배경 렌더링

### 📚 배운 점

1. 수학적 알고리즘 이해
	•	선형대수학 활용: 벡터의 내적, 외적을 이용한 3D 공간 계산
	•	광학 물리학 구현: 스넬의 법칙, 프레넬 방정식 등 실제 물리 현상 시뮬레이션
	•	수치 안정성: 부동소수점 오차 방지를 위한 epsilon 값 적용 (1e-4f, 1e-2f)
2. 성능 최적화 
	•	병렬 프로그래밍: CPU 멀티코어 활용으로 4-8배 성능 향상
	•	메모리 액세스 패턴: 캐시 친화적인 데이터 구조 설계
	•	조기 종료 최적화: Back-face culling, 범위 검사 등
3. 렌더링 이론 학습
	•	렌더링 방정식: Phong 모델부터 물리 기반 렌더링까지의 이론 학습
	•	좌표계 변환: 스크린 좌표 ↔ 월드 좌표 변환 구현
	•	텍스처 매핑: UV 좌표계와 픽셀 샘플링 기법 습득
