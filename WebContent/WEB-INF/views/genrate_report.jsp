<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/generaterepo.css">
    <title>Generate Report Page </title>
</head>

<body>
  
   

    <h2 class="heading">Recent Reports</h2>

    <form class="form">
        <div class="elemnt">
            
            <label for="lifting" class="r1">Lifting Machines needs Service</label>
            <select name="progress" class="but1">
                <option value="progress">Progress</option>
                <option value="done">Done</option>
                <option value="not yet">Not Yet</option>
            </select><br><br>
        </div>
        <div class="elemnt">

            <label for="Cleaning" class="r2">Cleaning Football field</label>
            <select id="progress" name="progress" class="but2">
                <option value="progress">Progress</option>
                <option value="done">Done</option>
                <option value="not yet">Not Yet</option>
            </select><br><br>
        </div>


        <div class="elemnt">

            <label for="adding" class="r3"> Adding more Treadmalls </label>
            <select id="progress" name="progress" class="but3">
                <option value="progress">Progress</option>
                <option value="done">Done</option>
                <option value="not yet">Not Yet</option>
            </select><br><br>
        </div>

        <div class="elemnt">

            <label for="fixing" class="r4">fixing air-conditioner in Lifting Area</label>
            <select id="progress" name="progress" class="but4">
                <option value="progress">Progress</option>
                <option value="done">Done</option>
                <option value="not yet">Not Yet</option>
            </select><br><br>
        </div>
            


    </form>

    <button type="submit">New Report</button>



    
</body>
</html>
