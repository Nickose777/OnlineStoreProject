<?php echo $header; ?>
	<div id="content">

		<p><input type="text" class="checkout-input checkout-name" style="max-width: 600px;" placeholder="Name" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" style="max-height: 100px;" placeholder="Surname" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="Email" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="Phonenumber" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="Adress" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="City" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="Country" autofocus></p>
		<p><input type="text" class="checkout-input checkout-name" placeholder="Postal Code" autofocus></p>

		<div class="radio-btn">
			<p>Payment Method</p>
			<p><input type="radio" name="Payment Method" value="&&&&&&&&&&">&&&&&&&&&</p>
			<p><input type="radio" name="Payment Method" value="&&&&&&&&&&" checked="">&&&&&&&&&&</p>
			<p>Delivery Method</p>
			<p><input type="radio" name="Delivery Method" value="&&&&&&&&&&">$$$$$$$</p>
			<p><input type="radio" name="Delivery Method" value="&&&&&&&&&&" checked="">$$$$$$$$$$</p>
		</div>

		<button type="button" class="btn btn-default center-block btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button><br>
		<button type="button" class="btn btn-default center-block" style="font-size: 20px; width: 150px; border-radius: 15px">Back</button>
	</div>			
<?php echo $footer; ?>