<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <title>Document</title>
        
</head>
<body>
          <jsp:include page="adminheader.jsp"></jsp:include>
        <form onsubmit="Updaterequest()">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h5 align="center">Fund request</h5>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                RequestId
                            </div>
                        </div>
                        <input type="number" min="1" name="requestId" id="requestId" class="form-control" placeholder="requestId" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                Fund Type
                            </div>
                        </div>
                         <input type="text" name="fundType" pattern="[A-Za-z]{1,40}$" id="FundType" class="form-control" placeholder="FundType" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                Amount(Rs)
                            </div>
                        </div>
                        <input type="number"min="1" name="amount" id="amount" class="form-control" placeholder="amount" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                Expire date
                            </div>
                        </div>
                        <input type="date" id="date" name="trip-start" value="2018-07-22" min="2018-01-01" max="2022-12-31" class="form-control" required>
                    </div>
                </div>
                 <div class="form-group text-center" >
                <button type="submit" class="btn btn-primary btn-lg center-block" >Send</button>
                </div>  
            </div>
        </div>
    </form>
    <script src="assets/js/jquery-3.4.1.min.js"></script>
  	<script src="assets/js/bootstrap.min.js"></script>
  	<script>
  	console.log();
  	function Updaterequest()
{
	event.preventDefault();
    let requestId = $('#requestId').val();
    let fundType = $('#fundType').val();
    let amount = $('#amount').val();
    let date = $('#date').val();
    var formData = "requestId="+requestId+"&fundType="+fundType+"&amount="+amount+"&date="+date;
    var url = "http://localhost:8080/charityapp/updateFundRequestServlet";
    console.log(url);
    $.post(url,formData).then (function(response){
       alert('Update success!'); 
       //window.location.replace('adminHome.jsp');
    });
} 
</script> 
</body>
</html>	
  	
  	
  	
  	
  	
  	
  	
  	
  	