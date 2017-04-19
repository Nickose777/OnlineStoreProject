<?php echo $header; ?>
<div class="container">
	<div class="row">
		<div class="col-md-3 text-center">
			<img class="img-rounded" src="image/img.jpg" alt="Image" style="max-height: 200px;">
		</div>
		<div class="col-md-7">
			<div>
				<h2 class="h2"><b>The product name</b></h2>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
				<h3 class="h3">Color: black</h3>
		        <div class="input-group" style="max-width: 50px; margin-top: 15px;">
		            <span class="input-group-btn">
		                <button onclick="decreaseBlack();" type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">
		                	<span class="glyphicon glyphicon-minus"></span>
		                </button>
		            </span>
		            <input onchange="onBlackUpdate();" type="text" id="quantity_black" name="quantity" class="form-control input-number" value="1" min="1" max="100">
		            <span class="input-group-btn">
		                <button onclick="increaseBlack();" type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
		                	<span class="glyphicon glyphicon-plus"></span>
		                </button>
		            </span>
		        </div>
				<h3 class="h3"><b>Price: 150</b></h3>

			</div>
		</div>
		<div class="col-md-2">
			<button type="button" class="btn btn-danger btn-md" style="vertical-align: middle;width: 150px; border-radius: 5px">Delete</button>
		</div>
	</div>

	<hr></hr>

	<div class="row">
		<div class="col-md-3 text-center">
			<img class="img-rounded" src="image/img.jpg" alt="Image" style="max-height: 200px;">
		</div>
		<div class="col-md-7">
			<div>
				<h2 class="h2"><b>The product name</b></h2>
				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
				<h3 class="h3">Color: white</h3>
		        <div class="input-group" style="max-width: 50px; margin-top: 15px;">
		            <span class="input-group-btn">
		                <button onclick="decreaseWhite();" type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">
		                	<span class="glyphicon glyphicon-minus"></span>
		                </button>
		            </span>
		            <input onchange="onWhiteUpdate();" type="text" id="quantity_white" name="quantity" class="form-control input-number" value="1" min="1" max="100">
		            <span class="input-group-btn">
		                <button onclick="increaseWhite();" type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
		                	<span class="glyphicon glyphicon-plus"></span>
		                </button>
		            </span>
		        </div>
				<h3 class="h3"><b>Price: 150</b></h3>
			</div>
		</div>
		<div class="col-md-2">
			<button type="button" class="btn btn-danger btn-md" style="vertical-align: middle;width: 150px; border-radius: 5px">Delete</button>
		</div>
	</div>
	<div class="row" style="margin-bottom: 20px">
		<h3 class="h3 pull-right">Total: 300</h3>
	</div>
	<div class="row" style="margin-bottom: 20px">
		<button type="button" class="btn btn-success btn-lg pull-right" style="font-size: 20px; width: 150px; border-radius: 10px">Checkout</button>
	</div>
	<div class="row" style="margin-bottom: 20px">
		<button type="button" class="btn btn-info-outline btn-lg pull-right" style="font-size: 15px; width: 100px; border-radius: 5px">Back</button>
	</div>
</div>
<?php echo $footer; ?>