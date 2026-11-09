웃음방위사령부 안전보장회의 인트라넷

1. questions.js에 사용자 제공 심의 안건 10개가 등록되어 있습니다. 질문을 수정하려면 해당 파일을 편집하세요.
2. supabase.com에서 프로젝트를 생성합니다.
3. SQL Editor에서 setup.sql을 실행합니다. (realtime publication 추가 줄은 이미 등록되어 있으면 생략)
4. Project Settings / API Keys에서 publishable (또는 anon) key와 Project URL을 확인하여 config.js에 입력합니다. secret/service_role 키는 사용하지 마세요.
5. index.html, questions.js, config.js 세 파일을 GitHub 저장소 루트에 업로드하고 Vercel로 배포합니다.
6. 친구들이 같은 URL로 접속하여 이름을 선택하고 표결하면 즉시 현재 결과를 볼 수 있습니다. 다른 사람의 표결은 실시간 또는 최대 7초 이내 새로고침됩니다.

주의: 이름 선택은 인증이 아닙니다. 누구든 다른 이름으로 들어갈 수 있으며 데이터베이스도 공개 읽기/쓰기(투표만) 권한입니다. 소규모 친구들 간 가벼운 게임 전용입니다.
현재 버전은 사용자 제공 안건 10개가 등록되어 있습니다. 접속 승인 후 전자문서 수신함에서 안건을 선택합니다. 표결 서버 설정 전에는 투표가 저장되지 않습니다.
질문 배열을 바꾸면 기존 agenda_id와 결과가 달라질 수 있으니 게임 중 질문 순서를 변경하지 마세요.
