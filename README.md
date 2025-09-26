# Data Science (Jupyter + Docker)

이 저장소는 Python 데이터분석/머신러닝용 **도커 기반 Jupyter Notebook 환경**입니다.  
윈도우(NVIDIA GPU)와 맥북(ARM CPU)에서 동일한 코드를 실행할 수 있습니다.
데이터 분석 기본기 연습: Python, Numpy/Pandas, 데이터 시각화, 간단한 머신러닝 모델 실습을 목표로 합니다.

---

## 🚀 실행 방법

### 1. 사전 준비

- Docker Desktop 설치
- (옵션) NVIDIA GPU 드라이버 + WSL2 (윈도우 GPU 사용시)

### 2. 실행

Mac

```bash
docker compose build --no-cache
docker compose up -d
```

~~Window (NVIDIA GPU)~~

```bash
docker compose -f docker-compose.yml -f docker-compose.gpu.yml build --no-cache
docker compose -f docker-compose.yml -f docker-compose.gpu.yml up -d
watch -n 1 nvidia-smi
```
