<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>profile</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/manage_facilities.css" />
  </head>
  <form>
    
        <div class="form-group">
            <div class="form-label">
                <label>Facilitiy Type</label>
            </div>
            <select class="dropdown">
                <option>Swimming Pool</option>
                <option>Football Field</option>
            </select>
        </div>

        <div class="form-group">
            <div class="form-label">
                <label>Facilitiy Status</label>
            </div>
            <select class="dropdown">
                <option>Under Maintenance</option>
                <option>Ready</option>
                <option>Not Ready</option>
            </select>
        </div>

        <div class="row">
            <div class="col">

                <div class="form-label">
                    <label>Person in Charge</label>
                </div>
                <select class="dropdown">
                    <option>Ali Salh</option>
                    <option>Ahmad Ali</option>
                </select>
            </div>
                
            
            <div class="col">
                <div class="form-label">
                    <label>Avaliable Hours</label>
                </div>
                <select class="dropdown">
                    <option>08:00 AM - 10:00 AM</option>
                    <option>10:00 AM - 12:00 AM</option>
                </select>
            </div>
                
            </div>
        <div class="row">
            <div class="col">

                <div class="form-label">
                    <label>Avaliable Days</label>
                </div>
                <div class="date">
                    
                    <input type="date">
                </div>
            </div>
            <div class="col"></div>
            
        </div>
        <div class="save-button">
            <button type="submit">Save</button>
        </div>

  </form>
</html> 