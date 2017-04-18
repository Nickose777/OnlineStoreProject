<?php echo $header; ?>
<div class="container">
	<div class="row">
		<div class="col-md-3 text-center">
			<img class="img-rounded" src="image/img.jpg" alt="Image" style="max-height: 200px;">
	        <div class="input-group container" style="max-width: 50px; margin-top: 15px;">
	            <span class="input-group-btn">
	                <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">
	                	<span class="glyphicon glyphicon-minus"></span>
	                </button>
	            </span>
	            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	            <span class="input-group-btn">
	                <button type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
	                	<span class="glyphicon glyphicon-plus"></span>
	                </button>
	            </span>
	        </div>
		</div>
		<div class="col-md-9">
			<div>
				<h2 class="h2"><b>The product name</b></h2>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
				<h3 class="h3">Color: black</h3>
				<h3 class="h3"><b>Price: 150</b></h3>

				<button type="button" class="btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button>
			</div>
		</div>
	</div>

	<hr></hr>
	
	<div class="row">
		<div class="col-md-3 text-center">
			<img class="img-rounded" src="image/img.jpg" alt="Image" style="max-height: 200px;">
	        <div class="input-group container" style="max-width: 50px; margin-top: 15px;">
	            <span class="input-group-btn">
	                <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">
	                	<span class="glyphicon glyphicon-minus"></span>
	                </button>
	            </span>
	            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	            <span class="input-group-btn">
	                <button type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
	                	<span class="glyphicon glyphicon-plus"></span>
	                </button>
	            </span>
	        </div>
		</div>
		<div class="col-md-9">
			<div>
				<h2 class="h2"><b>The product name</b></h2>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
				<h3 class="h3">Color: white</h3>
				<h3 class="h3"><b>Price: 150</b></h3>

				<button type="button" class="btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>