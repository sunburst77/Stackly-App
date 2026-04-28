# Stackly App Landing Page

트렌디한 앱 랜딩페이지를 빠르게 구성한 정적 웹 프로젝트입니다.

## Overview

- 메인 랜딩페이지: `index.html`
- 앱 미리보기 임베드: `app.html`
- 블로그 데이터 연동(SQL): `supabase/`
- 디자인 기준 파일: `master.html`

## Features

- 브랜드 컬러 기반의 랜딩 UI 구성
- 스플래시 인트로 애니메이션
- 섹션별 순차 등장 애니메이션
- Supabase 기반 블로그 포스트 렌더링 및 모달 상세 보기
- OG/Twitter 메타 태그 구성

## Project Structure

```text
.
├─ index.html
├─ app.html
├─ master.html
├─ supabase/
│  ├─ setup_blog_posts.sql
│  └─ blog_post_body.sql
└─ README.md
```

## Run Locally

별도 빌드 없이 정적 파일로 동작합니다.

1. 프로젝트 폴더를 엽니다.
2. `index.html`을 브라우저로 실행합니다.
3. (권장) Live Server 등 로컬 서버에서 확인합니다.

## Deploy

GitHub Pages 기준 배포 URL:

- `https://sunburst77.github.io/Stackly-App/`

배포 후 OG 이미지/파비콘 경로가 정상 노출되는지 확인하세요.

