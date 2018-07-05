<%@page import="backend.dataFetch"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="org.json.JSONArray,org.json.JSONException"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="description" content="Miminium Admin Template v.1">
  <meta name="author" content="Isna Nur Azis">
  <meta name="keyword" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Weather-O</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
  <link href="asset/css/style.css" rel="stylesheet">
  <!-- end: Css -->

  <link rel="shortcut icon" href="asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body id="mimin" class="dashboard">

     <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-open">
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <a href="" class="navbar-brand"> 
                 <b>Weather-O</b>
                </a>

              <ul class="nav navbar-nav search-nav">
                <li>
                   <div class="search">
                    <span class="fa fa-search icon-search" style="font-size:23px;"></span>
                    <div class="form-group form-animate-text">
                      <input type="text" class="form-text" required>
                      <span class="bar"></span>
                      <label class="label-search">Type anywhere to <b>Search</b> </label>
                    </div>
                  </div>
                </li>
              </ul>

              
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll">
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    <li class="time">
                      <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">Sat,October 1st 2029</p>
                    </li>
                    <li class="active ripple">
                      <a class="tree-toggle nav-header"><span class="fa-home fa"></span> WELCOME
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                 	</li>
                 </ul>
                </div>
            </div>
            <div>
	<p>


</p>
</div> 
          <!-- end: Left Menu -->

		<!-- START JSP STUFF -->
     <%--  <%
        
      	String test = "Hello World";
      	Connection con = null;
		Statement st = null;
		int x;
		int count=-1;
		int id=0, temp, humidity;
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");  
			
			System.out.println("Connecting to database...");
			
        	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/weathero","root","");
			
        	System.out.println("\n\n\t\tCONNECTION  CREATED\n\n\t\t");
        	
        	st = con.createStatement();
        	
        	
        	String sql = "SELECT id, temperature, humidity FROM historic";
        	
        	ResultSet rs = st.executeQuery(sql);
        
        	rs.last();
        	int size = rs.getRow();
        	rs.beforeFirst();
        	System.out.println(" \n\n\n\n\t\tRs = "+size);
        	int arr[] = new int[size];
        	  while(rs.next()){
        		  	
        		  	count++;
        	         //Retrieve by column name
        	          id  = rs.getInt("id");
        	          temp = rs.getInt("temperature");
        	          humidity = rs.getInt("humidity");
        	        // String date = rs.getString("date");
        	         arr[count]=humidity;
        	         
        	         //Display values
        	       //  System.out.print("ID: " + id);
        	       //  System.out.print(", Temperature: " + temp);
        	       //  System.out.print(", Humidity: " + humidity);
        	       //  System.out.println("\n\nArray [ " + id+"] : "+arr[id]+"\n\n\t\t");
        	  }
        	  
        	 // ArrayList arrayList = new ArrayList(Arrays.asList(arr));
        	  JSONArray json = (new JSONArray(Arrays.asList(arr)));
				System.out.println(json+"\n\n\n\n");        	  
				System.out.println( "HUMIDITY = " +Arrays.toString(arr)+"\n\n\n\n");
		}
		catch(Exception e)
		{
			System.out.println("\n\n\t\tERROR IN CREATING CONNECTION \n\n\t\t");
			System.out.println(e);
		}
		finally
		{
			try
			{
				if(con != null)
				con.close();
			}
			catch(Exception e)
			{
				System.out.println("\n\n\t\tERROR IN CLOSING CONNECTION \n\n\t\t");
			}
		}
        	   
		
        
        	  %> --%>
        	  
        <!-- END JSP STUFF -->
          
          
          
          
          <!-- start:content -->
          
          
       <div id="content">
          <div class="col-md-12 padding-0" style="margin-top:20px;">
           <div class="col-md-12">
                        <div class="panel chart-title">
                          <h3><span class="fa fa-area-chart"></span>   Reports </h3>
                        </div>
                      </div>
          
            <div class="col-md-12">       				 
            
                <div class="panel">
                       <div class="panel-heading-white panel-heading">
                          <!-- <h4>Today's Weather</h4> -->
                          
                         <!--  <form action="Fetch" method="get"> -->
                          		<div class="col-md-6" style="margin-top:25px;margin-bottom:25px;">
                                   <button class="btn ripple btn-round btn-warning" onClick="refreshPage()" >
                                    <div>
                                      <span>REFRESH</span>
                                    </div>
                                  </button>
                              </div>
                  <!--     </form>   -->
                          
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                             <canvas class="bar-chart"></canvas>
                            </div>
                        </div>
                  </div>
            </div>

          </div>
    </div>
          <!-- end: content -->
          
      </div>

     


<!-- end: Content -->
<!-- start: Javascript -->
<script src="asset/js/jquery.min.js"></script>
<script src="asset/js/jquery.ui.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>


    
    <!-- plugins -->
    <script src="asset/js/plugins/moment.min.js"></script>
    <script src="asset/js/plugins/chart.min.js"></script>
    <script src="asset/js/plugins/jquery.nicescroll.js"></script>


    <!-- custom -->
     <script src="asset/js/main.js"></script>
<script>
function refreshPage(){
    window.location = window.location;
} 
</script>     
     
     <script type="text/javascript">
     
     
     
   
     
/* 
     $(document).ready(function(){    
    	 $.getJSON()
 	    var arr = JSON.parse(json);
 	   
 	     $.each( arr, function(i, l){ 
 	        alert( "Index #" + i + ": " + l );
 	    });
 	});  */
 
     
      (function(jQuery){
		
    	 	var dataset = <%= dataFetch.fetch() %>;
    	 	var labels = [];
    	 	for(i=0; i<dataset.length; i++)
    	 		labels[i] = i;
    	  
    	   var barData = {
            labels: labels,
            datasets: [
                {
                    label: "My First dataset",
                    fillColor: "rgba(21,186,103,0.5)",
                    strokeColor: "rgba(220,220,220,0.8)",
                    highlightFill: "rgba(220,220,220,0.75)",
                    highlightStroke: "rgba(220,220,220,1)",
                    data: dataset,
               		
                },
               /* {
                    label: "My Second dataset",
                    fillColor: "rgba(21,113,186,0.5)",
                    strokeColor: "rgba(151,187,205,0.8)",
                    highlightFill: "rgba(151,187,205,0.75)",
                    highlightStroke: "rgba(151,187,205,1)",
                    data: [28, 48, 40, 19, 86, 27, 90]
                }*/
            ]
        };


             window.onload = function(){
				 
				  var ctx4 = $(".bar-chart")[0].getContext("2d");
                window.myBar = new Chart(ctx4).Bar(barData, {
                    responsive : true,
                    showTooltips: true
                });
				
				
				
            };
        })(jQuery);
     </script>
  <!-- end: Javascript -->
  </body>
</html>