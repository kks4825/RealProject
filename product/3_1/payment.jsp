<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        $(".payMethod").click(function(){
          if($(this).val()=='credit_card'){
            $('#payMethodWindow').attr("src","../3_5/creditCard.html");
          }else if($(this).val()=='account_depo'){
            $('#payMethodWindow').attr("src","../3_5/accountDeposit.html");
          }else if($(this).val()=='without_bank'){
            $('#payMethodWindow').attr("src","../3_5/disAccountDeposit.html");
          }
        });
      });
    </script>
    <style media="screen">
      div{
        margin: 10px;
        border: 1px solid red;
        padding:10px;
      }
      td{
        padding: 10px;
        width: 200px;
        height: 20px;
      }
      th{
        padding: 10px;
        width: 200px;
      }
      table, td, th {
        border-collapse: collapse;
        border: 1px solid #ddd;
        padding: 10px;
      }
      .payMethod{
        text-align: center;
      }
    </style>
  </head>
  <body>
  <div>
    <h1>결제하기</h1>
    <div class="perchase_info">
      <h2>구매정보</h2>
      <div>
        <table id="info_table">
          <tr>
            <th>여행지</th>
            <th>상세정보</th>
            <th>날짜</th>
            <th>인원</th>
            <th>할인</th>
            <th>금액</th>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </div>
    </div>
    <div class="perchase_method">
      <h2>결제방법</h2>
      <div >
        <table>
          <th><input type="radio" name="paymethod" value="credit_card" class="payMethod">신용카드</th>
          <th><input type="radio" name="paymethod" value="account_depo" class="payMethod">계좌입금</th>
          <th><input type="radio" name="paymethod" value="without_bank" class="payMethod">무통장입금</th>
        </table>

      </div>
      <div class="">
        <iframe src="about:blank" width="100%" height="300px" id="payMethodWindow" frameborder="0"></iframe>
      </div>
      <input type="button" value="결제" style="font-size:22px; float:right; width:120px;" >
    </div>
  </div>
  </body>
</html>
