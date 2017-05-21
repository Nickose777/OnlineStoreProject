<?php echo $header; ?>
<div class="container">
	<?php if ($category_info) { ?>
		<?php foreach ($products as $index => $product) { ?>
			<div class="row">
				<div class="col-md-3 text-center">
					<img class="img-rounded" src="<?php echo $product['thumb']; ?>" alt="Image" style=" max-height: 300px; ">
			        <div class="input-group container" style="max-width: 50px; margin-top: 15px; margin-bottom: 15px;">
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
						<h3 class="h3"><?php echo $text_color; ?>: <?php echo $product['model']; ?></h3>
						<h3 class="h3"><b><?php echo $text_price; ?>: <?php echo $product['price']; ?></b></h3>

						<button onclick="cart.add('<?php echo $product['product_id']; ?>', getQuantity(<?php echo $index; ?>));" type="button" class="btn-black"><?php echo $text_order; ?></button>
					</div>
				</div>
			</div>

			<br></br>
			<hr>
			<br></br>
	    <?php } ?>
	<?php } else { ?>
		<div class="centered">
	    	<h2 class="h2">No category created!</h2>
		</div>
	<?php } ?>
</div>
<?php echo $footer; ?>