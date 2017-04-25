<?php echo $header; ?>
<div class="container">
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<td class="text-center">Image</td>
						<td class="text-left">Product</td>
						<td class="text-left">Model</td>
						<td class="text-left">Quantity</td>
						<td class="text-right">Unit Price</td>
						<td class="text-right">Total Price</td>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($products as $product) { ?>
					<tr>
						<td class="text-center"><?php if ($product['thumb']) { ?>
							<a href="#"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
							<?php } ?>
						</td>
						<td class="text-left"><?php echo $product['name']; ?>
							<?php if (!$product['stock']) { ?>
							<span class="text-danger">***</span>
							<?php } ?>
						</td>
						<td class="text-left"><?php echo $product['model']; ?></td>
						<td class="text-left">
							<div class="input-group btn-block" style="max-width: 200px;">
								<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
								<span class="input-group-btn">
									<button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
									<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
								</span>
							</div>
						</td>
						<td class="text-right"><?php echo $product['price']; ?></td>
						<td class="text-right"><?php echo $product['total']; ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</form>
</div>
<!-- <div class="container">
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
		                <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">
		                	<span class="glyphicon glyphicon-minus"></span>
		                </button>
		            </span>
		            <input type="text" name="quantity" class="form-control input-number" value="1" min="1" max="100">
		            <span class="input-group-btn">
		                <button type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
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
</div> -->
<?php echo $footer; ?>