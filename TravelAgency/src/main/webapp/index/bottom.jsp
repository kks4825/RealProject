<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �ϴ� ���� footer �������� -->

<script>
var sidebarurl = "http://skin14.dartplus.kr/"; // Change as required 
var sidebartitle = "�����"; // Change as required 
var url = this.location; 
var title = document.title; 

function bookmarksite() { 
if (window.sidebar && window.sidebar.addPanel){ // Firefox 
window.sidebar.addPanel(sidebartitle, sidebarurl,""); 
} 
else if ( document.all ) { // IE Favorite 
window.external.AddFavorite(url, title); 
} 
else if (window.opera && window.print) { 
// do nothing 
 } 
else if (navigator.appName=="Netscape") { 
alert("Ȯ���� Ŭ���Ͻ� �� �ּ�â���� <Ctrl-D>�� �����ø� ���ã�⿡ ��ϵ˴ϴ�."); 
} 
 } 

 if (window.sidebar && window.sidebar.addPanel) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
  } 
 else if (document.all) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
 } 
 else if (window.opera && window.print) { 
document.write('<a href = "'+sidebarurl+'" title="'+sidebartitle+'" rel="sidebar"></a>'); 
 } 
 else if (navigator.appName=="Netscape") { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
} 
</script>
	
	<div id="footer">
<div class="footer_cont blind">
			<h2 class="blind">�ϴ� �׺�Ժ���̼�</h2>
			<ul class="footer_nav">
				<li class="first"><a href="/about/about">ȸ��Ұ�</a></li>
				<li><a href="/member/agreement">�̿���</a></li>
				<li><a href="/member/policy">����������޹�ħ</a></li>
				<li><a href="/about/location">���ô±�</a></li>
			</ul><!--footer_nav-->
			<address>��Ȳ������ &#124; ��ǥ�̻�: �赿�� &#124; ������: ��⵵ ������ �д籸 ����Ǳ��� 660(����) �������̽�1 B�� 4��<br/>����ڵ�Ϲ�ȣ: 214-86-39239 &#124; ����Ǹž� �Ű��ȣ: ��2012-��⼺��-1188ȣ </address>
			<h2 class="blind">�ϴ� SNS ��ư</h2>
			<ul class="footer_sns">

			</ul><!--footer_sns-->
		</div><!--footer_cont-->
		

		<address>
			<p>(��)Ȳ������&nbsp;&nbsp;|&nbsp;&nbsp;��ǥ�̻�:�赿�� &nbsp;������:��⵵ ������ �д籸 ����Ǳ��� 660(����) �������̽�1 B�� 4��&nbsp;&nbsp;|&nbsp;&nbsp;������: ��⵵ ������ �д籸 ����Ǳ��� 660(����) �������̽�1 B�� 4��</p>
			<p>����ڵ�Ϲ�ȣ: 214-86-39239&nbsp;&nbsp;|&nbsp;&nbsp;����Ǹž� �Ű��ȣ: ��2012-��⼺��-1188ȣ </p>
		</address>
	</div><!--footer-->