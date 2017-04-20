<?php echo $header; ?>
<div class="container">
	<?php foreach ($products as $index => $product) { ?>
		<div class="row">
			<div class="col-md-3 text-center">
				<img class="img-rounded" src="<?php echo $product['thumb']; ?>" alt="Image" style="max-height: 200px;">
		        <div class="input-group container" style="max-width: 50px; margin-top: 15px;">
		            <span class="input-group-btn">
		                <button onclick="decrease(<?php echo $index; ?>);" type="button" class="quantity-left-minus btn btn-number" data-type="minus" data-field="">
		                	<span class="glyphicon glyphicon-minus"></span>
		                </button>
		            </span>
		            <input id="quantity<?php echo $index; ?>" onchange="onQuantityUpdate(<?php echo $index; ?>);" type="text" name="quantity" class="form-control input-number" value="1" min="1" max="100" style="text-align:center;">
		            <span class="input-group-btn">
		                <button onclick="increase(<?php echo $index; ?>);" type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
		                	<span class="glyphicon glyphicon-plus"></span>
		                </button>
		            </span>
		        </div>
			</div>
			<div class="col-md-9">
				<div>
					<h2 class="h2" style="margin-top: 0px;"><b><?php echo $product['name']; ?></b></h2>
					<?php echo $product['description']; ?>
					<h3 class="h3">Color: <?php echo $product['model']; ?></h3>
					<h3 class="h3"><b>Price: <?php echo $product['price']; ?></b></h3>

					<button type="button" class="btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button>
				</div>
			</div>
		</div>

		<br></br>
		<br></br>
    <?php } ?>
</div>
<?php echo $footer; ?>