<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$('#yes').click(function(){
		if($('#info').prop("checked") && $('#info2').prop("checked"))
			$(location).attr('href',"/TravelAgency/memberJoin.do");
		else if($('#info').prop("checked"))
			alert("투어회원 약관에 동의하셔야 가입이 진행됩니다");
		else if($('#info2').prop("checked"))
			alert("개인정보 수집 및 이용에 동의하셔야 가입이 진행됩니다");
		else
			alert("필수 동의사항에 동의하셔야 가입이 진행됩니다");
	});
});
</script>


<div style="margin:0 auto; width:60%;">
	<p class="member_info">
	<h2>&nbsp;회원약관</h2>

	<div class="member_title_step"
		style="font-weight: bold; font-size: 20px;">
		<span class="step_on" style="background-color: #FFB2D9;">&nbsp;1.&nbsp;약관동의</span>
		<span class="step_off" style="font-size: 20px;">2.&nbsp;정보입력</span>&nbsp;
		<span class="step_off" style="font-size: 20px;">3.&nbsp;가입완료</span>
	</div>
	<br>

	<div class="member_step" style="border: 1px solid blue;">
		<h3 style="background-color: #B2EBF4;">&nbsp;*필수(선택) 동의사항</h3>
		<table>
			<tr>
				<td>
					<p class="in_check" style="font-weight: bold">
						&nbsp; <input type="checkbox" id="info" value="Y">&nbsp;
						개인정보 수집 및 이용에 대한 안내 &nbsp;&nbsp; <a href="#share1"
							class="member_step1" style="font-weight: bold">내용보기</a>
					</p>
				</td>
			<tr>
				<td>
					<p class="in_check" style="font-weight: bold">
						&nbsp; <input type="checkbox" id="info2" value="Y">&nbsp;
						투어회원 약관 안내 &nbsp; <a href="#share2" class="member_step2"
							style="font-weight: bold">내용보기</a>
					</p>
				</td>
			</tr>
		</table>
	</div>
	<br>

	<div class="member_step1" id="share1"
		style="margin: 0; padding: 0; height: 400px; overflow: scroll; border: 1px solid blue;">
		<h3 style="background-color: #B2EBF4;">&nbsp;*개인정보 수집 및 이용안내(필수)</h3>
		<dl>
			<dt></dt>
			<dd>1.회사는 수집한 개인정보를 다음의 목적을 위하여 사용합니다.<br></dd>
			<dd>
				&nbsp;가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 여행상품 예약, 여행자보험 가입, 항공권/호텔 등의 예약 및 출입국 정보확인, 예약내역의 확인 및
				상담, 컨텐츠 제공, 여행서비스 이용 시 회원의 우대, 마일리지 적립 /조회 / 사용 및 이에 관한 안내, 회원카드 발급,
				구매 및 요금결제, 물품배송 또는 청구서 등 발송, 본인인증 및 금융서비스 등<br>
			</dd>
			<dd>
				&nbsp;나. 회원관리 회원제 서비스
				이용을 위한 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 이용 및 이용횟수 제한,
				연령확인, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 분쟁조정을 위한 기록보존, 불만처리 등
				민원처리, 고지사항 전달 등<br>
			</dd>
			<dd>
				&nbsp;다. 이용자 편의 증진 및 신규상품, 서비스 개발을 위한 통계 / 분석 서비스
				이용 통계기록과 접속/빈도/구매패턴 등의 분석을 통해 신규서비스 및 맞춤형 특화상품 개발, 고객마케팅 기획등 이용자
				혜택/편의증진 서비스 개선/고도화에 활용<br><br>
			</dd>
			<dd>2. 개인정보 수집 항목 및 보유 및 이용기간<br></dd>
			<dd>
				&nbsp;가. 회사는 적법한 절차와 법적 기준에 의거하여 고객의 개인정보를 수집하고 있으며, 고객의 서비스이용에 필요한 최소한의
				정보만을 수집하고 있습니다. 정보통신망법과 개인정보보호법에 의거하여 수집, 이용을 제한하고 있습니다.<br>
				&nbsp;나. 회사는 고객의 인권을 침해할 우려가 있는 민감한 개인정보항목(인종, 종교, 사상, 정치적 성향, 건강상태, 성생활정보 등)은
				수집하지 않습니다.<br><br>
			</dd> 
			<dd>구분<br>개인정보 내역<br>용도<br>보유 및 이용기간<br><br></dd>
			<dd>
				&nbsp;필수정보 아이디(E-Mail), 비밀번호, 이름(실명), 암호화된 동일인
				식별정보(CI), 생년월일, 성별, 주소(집/직장 선택), 휴대전화번호, 통신사명 회원 서비스 제공 및 본인 인증 서비스
				해지 시 까지 단, 해지 시 상법 등 법령의 규정에 의하여 거래 관련 권리의무관계의 확인 등을 이유로 일정기간 보유해야 할
				필요가 있을 경우에는 관련법령이 정한 기간 법정대리인의 성명, 관계, 연락처, 가족관계 증빙서류 만14세 미만 회원 서비스
				가입 시 확인정보 성명, 연락처, 하나투어 마일리지클럽® 회원번호, 마일리지 비밀번호 마일리지 서비스 제공 선택정보
				결혼여부, 결혼기념일, 배우자생일, 추천인 아이디 부가서비스, 맞춤서비스 제공 <br><br>
			</dd>
			<dd> 
				3.동의를 거부할 권리 및 동의를 거부할 경우의 불이익 개인정보 주체자는 개인정보 수집, 이용에 대한 동의를 거부할 권리가
				있습니다. 동의를 거부할 경우 회원가입이 불가함을 알려드립니다.
			</dd>
			<dd>
				제1조(개인정보보호)<br> 
				① "회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를
				보호하기 위해 노력합니다.<br> 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이
				적용됩니다. <br> 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보취급방침이 적용되지
				않습니다 <br> ② “회사”는 정보통신망법에서 규정하는 개인정보 유효기간제도를 준행하며 1년 동안 당사의 정보통신 서비스를 이용하지
				않은<br> 않은 고객의 개인정보는 절차에 의하여 파기하거나 별도로 분리하여 저장, 관리하여 개인정보 보호 정책을
				추진하고 있습니다.<br> ③ “회사”는 이용자가 제공한 개인정보를 당해 동의 없이 이 약관에 정한 목적 이외의
				용도로 이용하거나,회원서비스 <br> 수행목적 범위를 넘어서서 임의의 목적으로 제3자 에게 제공하지 않습니다<br><br>
				제2조(정보전송 및 제공)<br> 
				① "회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를
				공지사항이나 전자우편 등의 방법으로 <br> "회원"에게 제공할 수 있습니다. <br> 다만,"회원"은
				관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신거절을 할 수
				있습니다.<br> ② 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 "회원"의 사전 동의를
				받아서 전송합니다. <br> 다만, "회원"의 거래관련 정보 및 고객문의 등에 대한 회신에 있어서는 예외됩니다.<br><br>
				제3조("회사"의 의무)<br> ① "회사"는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이
				약관이 정하는 바에 따라 지속적이고,<br> 안정적으로 재화,용역을 제공하는데 최선을 다하여야 합니다.<br>
				② "회사"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을
				갖추어야 합니다.<br> ③ "회사"는 상품이나 용역에 대하여 「표시,광고의공정화에관한법률」 제3조 소정의 부당한
				표시 광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br> ④ "회사"는 이용자가
				원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br><br> 제4조(회원의 ID 및 비밀번호에 대한 의무)<br>
				① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br> ② 회원은 자신의 ID 및
				비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가
				사용하고 있음을 인지한 경우에는 바로 "회사"에 통보하고 "회사"의 안내가 있는 경우에는 그에 따라야 합니다.<br><br>
				제5조(이용자의 의무)<br>이용자는 다음 행위를 하여서는 안됩니다<br> 1. 신청 또는 변경 시 허위
				내용의 등록 <br> 2. 타인의 정보 도용<br> 3. "회사"에 게시된 정보의 변경<br>
				4. "회사"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br> 5. "회사" 기타
				제3자의 저작권 등 지적재산권에 대한 침해<br> 6. "회사" 기타 제3자의 명예를 손상시키거나 업무를 방해하는
				행위<br> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 인터넷쇼핑몰에 공개 또는
				게시하는 행위<br><br> 제6조(연결"회사"와 피연결"회사" 간의 관계)<br> ① 상위 "회사"와 하위
				"회사"가 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식<br> 등으로 연결된
				경우, 전자를 연결 "회사"(웹 사이트)이라고 하고 후자를 피연결 "회사"(웹사이트)이라고 합니다.<br> ②
				연결"회사"는 피연결"회사"가 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증책임을<br>
				지지 않는다는 뜻을 연결"회사"의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지
				않습니다.
			</dd>
		</dl>
	</div>
	<br>

	<div class="member_step2" id="share2"
		style="height: 400px; overflow: scroll; border: 1px solid blue;">
		<h3 style="background-color: #B2EBF4;">&nbsp;*투어 회원약관안내</h3>
		<dl>
			<dt></dt>
			<dd>제1조 (목적)<br> 본 약관은 투어 마일리지클럽 회원이 ㈜하나투어(이하 “당사”)가 제공하는 하나투어
			마일리지클럽 서비스를 이용함에 있어 하나투어 마일리지클럽 회원과 당사간 제반 권리/의무와 관련 절차 등을 규정하는데 그
			목적이 있습니다.<br><br>
			 제2조 (정의)<br> ①“하나투어 마일리지클럽”(이하 “하나투어클럽”)은
			“하나투어 마일리지클럽 회원”을 위해 당사가 제공하는 서비스로, 서비스의 개요는 본 약관 제3조와 같습니다.<br>
			②"하나투어 마일리지클럽 회원"(이하 "회원")이라 함은 본 약관과 개인정보 수집/제공/활용에 동의하고 가입한 개인 및
			법인을 말합니다.<br> ③"하나투어 마일리지클럽 제휴사 및 가맹점"(이하 "제휴가맹점")은 당사와 제휴 계약을
			체결하여 하나투어클럽 서비스를 운영하기로 합의한 회사 등을 말 합니다.<br> ④”하나투어마일리지” (이하
			“마일리지”)라 함은 회원이 본 약관에 따라 하나투어클럽 서비스를 이용하기 위하여 취득하는 세부사항은 본 약관 제8조와
			같습니다.<br> ⑤“접근매체”라 함은 전자금융거래에 있어서 거래 지시를 하거나 회원 및 거래 내용의 진실성과
			정확성을 확보하기 위하여 사용되는‘회원번호’, ‘ID’, ‘비밀번호’, ‘전자식카드’, ‘인증서’ 등을 말합니다.<br>
			⑥“하나투어클럽 제휴카드”(이하 “제휴카드”)는 하나투어클럽의 기본적인 멤버십, 마일리지 서비스와 카드사 혹은 제휴사의 추가
			서비스가 탑재된 신용카드, 체크카드, 선불카드 및 멤버십카드 등을 말합니다.<br> ⑦“실제 구매자”란 자신의
			계산(최종 부담)으로 상품을 구매하는 자를 말하며, 단순한 대납자(ex: 따로 비용을 받고 제휴카드 사용만을 하는 자)및
			표시만의 구매자는 이에 포함하지 않습니다.<br><br>
			제3조 (하나투어클럽 서비스)<br> 당사가 회원에게
			제공하는 서비스는 아래와 같습니다.<br> 
			① 마일리지 적립/사용: 회원은 당사와 제휴가맹점 이용을 통해 제공받은
			마일리지를 당사와 제휴가맹점에서 정한 기준에 따라 사용할 수 있습니다.<br> ② 기타 서비스: 당사와 제휴가맹점은
			상기 외 추가적인 서비스를 회원에게 제공할 수 있습니다.<br><br>
			제4조 (약관개정)<br> 
			① 본 약관은 수시로 개정될 수 있으며 약관을 개정 할 경우 당사는 개정된 약관을 적용하는 날(이하 "효력 발생일")로부터 30일 이전에
			약관이 개정된다는 사실과 개정된 내용 등을 다음의 방법 중 1가지 이상의 방법으로 회원에게 고지하여 드립니다.<br>&nbsp;&nbsp;&nbsp;1.전자우편
			또는 휴대폰 통보<br>&nbsp;&nbsp;&nbsp;2.당사의 홈페이지 게시 등의 방법<br> ②
			당사에서 통제할 수 없는 상황, 즉 노동문제, 사회혼란, 정부명령, 천재지변, 날씨, 전쟁 또는 본 하나투어클럽 서비스를
			유지함에 현저한 저해요인이 발생할 경우 당사의 자체 판단에 의해 서비스를 연기 또는 중단할 수 있습니다.<br> ③
			개정된 약관은 그 효력발생일로부터 유효합니다.<br> ④ 본 약관의 개정과 관련하여 이의가 있는 회원은 회원탈퇴를
			할 수 있습니다. 단, 이의가 있음에도 불구하고 본조 제1항에 따른 고지가 있은 후, 약관 <br>&nbsp;&nbsp;&nbsp;&nbsp;
			변경 적용일까지 이의를 제기하지 않거나, 회원탈퇴를 하지 않은 회원은 개정된 약관에 동의한 것으로 간주합니다.<br><br>
			제5조 (회원가입)<br> 
			① 당사가 정한 가입신청서에 정해진 사항을 기입한 후 본 약관과 개인정보 수집/제공/활용
			동의서에 동의함으로써 회원가입을 신청합니다.<br> ② 고객으로부터 회원가입신청이 있는 경우 당사의 기준에 따른
			심사를 거친 뒤 해당 기준을 만족하는 신청고객께 회원가입을 승낙하여 드립니다.<br><br> 
			제 6조(회원탈퇴 및 자격상실)<br> 
			① 회원은 서면, e-mail, 전화, 기타 당사가 정하는 방법으로 회원탈퇴를 요청할 수 있으며,
			당사는 회원탈퇴에 필요한 절차를 수행합니다.<br> ② 회원이 다음 각 호의 사유에 해당하는 경우, 당사는 당해
			회원에 대한 통보로서 회원의 자격을 상실시킬 수 있습니다. <br>&nbsp;&nbsp;&nbsp;&nbsp;단,
			3호의 경우에는 별도의 통보 없이 자격이 상실됩니다.<br>&nbsp;&nbsp;&nbsp;1.회원가입 신청 시
			허위 내용을 등록하거나, 타인의 명의나 개인 정보를 도용한 경우<br>&nbsp;&nbsp;&nbsp;2.마일리지의
			부정적립/사용 등 서비스를 부정한 방법/목적으로 이용한 경우<br>&nbsp;&nbsp;&nbsp;3.회원이 사망한
			경우<br>&nbsp;&nbsp;&nbsp;4.타 회원의 서비스 홈페이지 이용을 방해하거나 정보를 도용하는 등
			전자거래질서를 위협한 경우<br>&nbsp;&nbsp;&nbsp;5.회원의 접근매체를 매매하거나 대여, 양도, 담보
			제공하는 경우<br>&nbsp;&nbsp;&nbsp;6.법령과 본 약관이 금지하거나 공서양속(公序良俗)에 반하는
			행위를 한 경우<br>&nbsp;&nbsp;&nbsp;7.기타 본 약관에 규정된 사항을 위반한 경우<br>
			③ 본 조 제②항의 사유로 자격이 상실된 회원은 제 2호의 사유가 자신의 고의 또는 과실에 기한 것이 아님을 소명할 수
			있습니다. 이 경우 당사는 회원의 소명 내용을 심사하여 타당하다고 판단하는 경우 정상적인 서비스를 이용할 수 있도록 합니다.<br>
			④ 본 조 제①항에 의한 회원탈퇴 또는 제②항에 의한 회원자격상실이 확정되는 시점은 아래와 같습니다.<br>&nbsp;&nbsp;&nbsp;1.회원탈퇴
			요청일 또는 회원자격상실 통보일<br>&nbsp;&nbsp;&nbsp;2.사망으로 인한 자격상실의 경우에는 회원
			사망일<br><br> 
			제 7조(회원정보 변경/관리)<br> 
			① 회원의 주소, e-mail 및 전화번호 등 개인정보가 변경된 경우, 당사에 이를 알려주셔야 하며, 부정확한 정보로 인해 손해가 발생한 경우, 당사는 이에 대해 책임을
			지지 않습니다.<br> ② 회원 개인 신상에 변동(사망, 이혼 등의 경우)이 생겨도 적립된 마일리지 및 회원 혜택은
			타인에게 양도되지 않습니다.<br><br> 
			제 8조 (마일리지 적립 및 사용)<br> 
			① 당사 및 제휴 가맹점에서 상품을 구입하거나 서비스를 이용하고 그에 따른 대금을 결제한 회원은 당사와 제휴 가맹점이 고지한 바에 따라 마일리지를
			부여받게 됩니다. (세부내용은 당사 홈페이지 안내에 따릅니다.)<br> ② 당사 서비스 이용에 따라 당사가 직접
			제공하는 마일리지 적립에 관한 이의는 서비스 이용일로부터 1년 이내에 제기되어야 하며, 제휴 가맹점 이용에 따라 제휴가맹점이
			제공하는 마일리지 적립에 관한 사항은 제휴 가맹점별 이용 규정에 따릅니다. ③ 당사와 제휴 가맹점에서 적립된 마일리지는
			당사와 제휴 가맹점에서 정한 기준에 따라 합산하여 적립/사용할 수 있습니다. 또한 적립된 마일리지는 금전적으로 환산하거나
			타인에게 판매될 수 없습니다.<br> ④ 회원이 구매를 취소한 경우, 당사는 해당 구매로 인해 적립 받은 마일리지를
			환수할 수 있습니다, 환수할 마일리지가 잔여 마일리지보다 적은 경우 마이너스(-) 처리할 수 있으며, 회원이 이후 적립 시
			마이너스(-) 된 마일리지만큼 공제합니다. 또한, 마이너스(-) 회원의 경우 회원의 탈회와 재가입이 제한될 수 있습니다.<br>
			⑤ 당사는 거래에 오류가 발생하거나 마일리지가 잘못 적립된 경우 이를 임의로 정정할 수 있으며, 서비스를 부당하게 이용한
			경우 당사는 회원 서비스 정지, 마일리지의 환수, 유상 서비스 이용요금에 상응하는 현금 배상 청구 및 필요한 법적 조치를
			취할 수 있습니다.<br> ⑥ 마일리지의 세부 운영 방침은 당사가 홈페이지에 고지하는 하나투어클럽 운영기준에
			따릅니다.<br><br> 
			제 9조(서비스의 부당한 이용)<br> 서비스의 부당한 이용이란 아래를 의미합니다.<br>
			① 회원 본인인 실제 구매자나 여행자가 아님에도, 제휴카드를 통한 요금의 대납, 기타 다른 방법을 통해 마일리지를 적립하거나
			할인 등 혜택을 이용하는 경우를 말합니다. 단, 회원과 실제 구매자나 여행자의 관계가 직계존비속 및 배우자임을 소명한 경우는
			제외합니다.<br> ② 위 1항에도 불구하고, 제휴가맹점 혹은 여행알선 종사자의 경우는 본인이 해당 상품의 여행자가
			아님에도 제휴카드로 결제하여 마일리지적립 등 고객 혜택을 이용하는 경우 부당한 이용으로 간주합니다.<br> ③
			회원이 본조 1항 내지 2항으로 적립한 마일리지를 사용하거나, 타 회원의 마일리지를 임의로 사용한 경우를 말합니다.<br><br>
			제 10조(마일리지의 소멸)<br> 
			① 마일리지는 적립일로부터 5년간 유효합니다. 단, 특정 제휴가맹점의 이용으로 적립한 마일리지나 당사가 한시적 프로모션 행사로 제공한 마일리지의 경우, 별도의 유효기간이 적용될 수 있습니다.<br>
			② 본 약관 제 6조 제①항에 정해진 방법으로 회원 탈퇴 시 회원탈퇴 요청일까지 적립된 마일리지는 사용이 불가하며, 회원탈퇴
			요청일로부터 90일 이내에 재가입하지 않을 경우 자동으로 소멸됩니다.<br> ③ 본 약관 제 6조에 따라 회원자격이
			상실된 경우, 자격 상실일 현재까지 적립된 마일리지는 자동으로 소멸됩니다.<br> 당사는 마일리지 적립이 잘못된
			경우에는 이를 임의로 정정할 수 있으며, 부당한 방법에 의해 적립된 마일리지를 인정하지 않습니다.<br><br> 
			제11조(마일리지의 환급)<br> 
			마일리지의 잔액은 환급되지 않습니다. 단, 회원이 직접 구매한 마일리지는 회원이 요구할
			경우, 환불 수수료 등을 공제 한 잔액을 환급 받을 수 있습니다.<br><br> 
			제12조 (접근매체의 관리)<br>
			① 접근매체의 분실 혹은 노출시, 회원은 즉각적으로 이를 당사에 통지하여야 하며, 통지 이전 발생한 사고에 대해서는 당사는
			책임지지 않습니다.<br> ② 회원은 접근매체를 사용함에 있어 이를 매매, 대여, 양도, 담보 제공 하여서는
			안됩니다.<br> ③ 회원은 접근매체의 누설 또는 노출하거나, 이를 방치하는 행위를 하여서는 안되며, 도용, 위조나
			변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
			</dd>
		</dl>
	</div>
	<br>

	<div class="join_btn" style="text-align: center;">
		<input type="button" id="yes"
			style="border: none; width: 80pt; height: 25pt; background-color: #36589C; color: #FFFFFF;"
			value="네, 동의합니다">&nbsp;&nbsp; <input type="reset"
			style="border: none; width: 135pt; height: 25pt; background-color: #36589C; color: #FFFFFF;"
			value="아니오, 동의하지 않습니다" onclick="location.href='/TravelAgency/index.do'">
	</div>
</div>