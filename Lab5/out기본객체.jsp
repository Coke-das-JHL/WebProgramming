<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head><title>out 기본 객체 사용</title></head>
<body>
1. out.print를 통한 출력 : <% out.print("print"); %> <br/>
2. 설정된 버퍼크기 : <%= out.getBufferSize() %> <br/>
3. 남아있는 버퍼크기 : <%= out.getRemaining() %> <br/>
<% out.flush(); %>
4. flush 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <br/>
5. out.print를 통한 출력 : <% out.print("print"); %> <br/>
<% out.clearBuffer(); %>
6. clear 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <br/>
<% out.close(); %>
7. close 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <br/>
</body>
</html>

<!-- out 기본객체
clear() 버퍼를 모두 비우지만 이미 비워진 적이 있다면 Exception
clearBuffer() 버퍼를 비운다. 버퍼가 가득차서 비워진 적이 있더라도 Exception 발생하지 않음
flush() 버퍼의 내용 출력
isAutoFlush(): 자동 버퍼 출력?  

buffer는 page 지시문과 관련 있음 
%@ page buffer="4kb" % 
%@ page buffer="none" %
%@ page autoFlush="true"%
-->
