<?php echo $header; ?>
	<div id="content">
		<form>
			<div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">NAME</label>
      <div class="col-sm-3">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Name">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">SURNAME</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="inputPassword3" placeholder="Surname">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">EMAIL</label>
      <div class="col-sm-3">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">PHONENUMBER</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="inputPassword3" placeholder="Phonenumber">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">ADRESS</label>
      <div class="col-sm-3">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Adress">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">CITY</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="inputPassword3" placeholder="City">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">COUNTRY</label>
      <div class="col-sm-3">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Country">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label" style="padding-left: 60px; font-weight: bold; font-size: 15px;">POST CODE</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="inputPassword3" placeholder="Post code">
      </div>
    </div>			
			
	<div class="form-check">
		<p style="padding-left: 40px; font-weight: bold; font-size: 15px;">PAYMENT METHOD</p>
		<p style="padding-left: 60px;"><input type="radio" name="Payment Method" value="&&&&&&&&&&">&&&&&&&&&</p>
		<p style="padding-left: 60px;"><input type="radio" name="Payment Method" value="&&&&&&&&&&" checked="">&&&&&&&&&&</p>
		<p style="padding-left: 40px; font-weight: bold; font-size: 15px;">DELIVERY METHOD</p>
		<p style="padding-left: 60px;"><input type="radio" name="Delivery Method" value="&&&&&&&&&&">$$$$$$$</p>
		<p style="padding-left: 60px;"><input type="radio" name="Delivery Method" value="&&&&&&&&&&" checked="">$$$$$$$$$$</p>
	</div>

			<button type="button" class="btn btn-default center-block btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button><br>
			<button type="button" class="btn btn-default center-block" style="font-size: 20px; width: 150px; border-radius: 15px">Back</button>	
		</form>
	</div>
					
<?php echo $footer; ?>