<apex:page >
    
   
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <apex:stylesheet value="{!URLFOR($Resource.style_resources, 'custom.css')}"/>
    <title>Communities</title>
</head>

<body>
    
    <div class="jumbotron jumbotron-fluid  mb-0"> 
    </div>
   

    <!-- Nav -->
    <nav class="nav p-1" style="background-color:black">

        <!-- welcome -->
        <h1 class="display-4 p-0">Welcome</h1>
        

        <!-- linkdiv -->
        <div class="container d-flex justify-content-around p-2 flex-sm-col">
            <!-- Links -->
            <a class="text-warning" href="#">Home</a>
            <a class="text-warning" href="#">Quiz History</a>
            <a class="text-warning" href="#">Question History</a>


           
        </div>
        
    </nav>
   
            <div class="container shadow-lg mt-3">
                  <!--<chatter:feed entityId="{!$User.Id}"/>-->
                  <chatter:feedWithFollowers entityId="{!$User.Id}"/>
                  <!--<chatter:follow entityId="{!$User.Id}"/>-->
                  <!--<chatter:followers entityId="{!$User.Id}"/>-->
              </div>

    <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <!-- /scripts -->
</body>
</apex:page>