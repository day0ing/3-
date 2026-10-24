# 실행 방법

## 가장 쉬운 방법: GitHub
1. GitHub 새 저장소를 만든다.
2. 이 폴더의 구조를 그대로 업로드한다.
3. Settings → Pages → Source에서 GitHub Actions를 선택한다.
4. Actions → Crawl and Deploy Pages → Run workflow를 누른다.
5. 완료되면 Deploy Pages 작업의 Pages 주소로 접속한다.

## 로컬 실행
Windows PowerShell에서 프로젝트 폴더로 이동한 뒤:

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python -m playwright install chromium
python crawler.py
python -m http.server 8000
```

그 다음 브라우저에서 `http://localhost:8000` 접속.

## 주의
GitHub Pages 자체는 Python을 실행하지 않는다. Python/Playwright는 GitHub Actions runner에서 실행되고 결과인 정적 파일이 Pages에 배포된다. 피터팬 페이지 구조가 변경되거나 접근이 제한되면 크롤러가 동작하지 않을 수 있다. 로그인·캡차·안티봇 우회는 하지 않는다.
