<!DOCTYPE html>
<html>
<head>
	    <title>multiple dropdown with ajax,laravel</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <style type="text/css">
        	select{
                        padding:8px 42px;
                }

        </style>
</head>
<body>
<center>
<div class="container">

        <h3>multiple dropdown with jQuery,Ajax</h3>
</br>
 	<form>
          <tr>
             <td>
                <select id="division">
                        <option value="">Select Division</option>
                        @foreach($divName as $value)
                            <option value="{{$value->division_name}}">{{$value->division_name}}</option>
                        @endforeach
                </select> 
             </td>

             <td>
                <select id="district">
                        <option value="">Select District</option>
                </select> 
             </td>

             <td>
                <select id="thana">
                        <option value="">Select Thana</option>
                </select> 
             </td>

          </tr>  
        </form>
 </div>

</center>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function(){
       
       $('#division').change(function(){
          var divName=$(this).val();
          if(divName){
            $.ajax({
                type:"GET",
                url:"{{url('/districtData')}}?divValue="+divName,
                success:function(data){
                    $('#district').html("data");
                      if(data){
                        $('#district').empty();
                        $('#district').append('<option value="">Select District</option>');
                         $.each(data,function(value){
                            $('#district').append('<option value="'+value+'">'+value+'</option>');
                         });
                      }else{
                        $('#district').empty();
                      }
                }
            });
          }
       });

     $('#district').change(function(){
          var thanaName=$(this).val();
          if(thanaName){
            $.ajax({
                type:"GET",
                url:"{{url('/thanaData')}}?thanaValue="+thanaName,
                success:function(data){
                    $('#thana').html("data");
                      if(data){
                        $('#thana').empty();
                        $('#thana').append('<option value="">Select Thana</option>');
                         $.each(data,function(value){
                            $('#thana').append('<option value="'+value+'">'+value+'</option>');
                         });
                      }else{
                        $('#thana').empty();
                      }
                }
            });
          }
       });



    });
</script>