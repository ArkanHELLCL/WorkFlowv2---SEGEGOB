<%
'--------------------------------------------------------------------
' Archivo de Conexion a Base de Datos  DSN.INC
'
'--------------------------------------------------------------------
'---- Servidor ?----
'---- Base de Datos WorkFlow----

'Const DSN_WorkFlowv2 = "Provider=SQLNCLI11;Trusted_Connection=yes;DATABASE=WorkFlowV2;Server=LCASTILLO-PC\MSSQLSERVER19_LC;"
Const DSN_WorkFlowv2 = "Provider=SQLNCLI11;Trusted_Connection=yes;DATABASE=WorkFlowV2;Server=WF-SERVER-SQL;"
session("DSN_WorkFlowv2") = DSN_WorkFlowv2
%>
