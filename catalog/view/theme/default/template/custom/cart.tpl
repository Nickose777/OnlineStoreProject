<?php echo $header; ?>
<div class="container">
	<?php if ($products) {?>
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<td class="text-center"><?php echo $product_image_column; ?></td>
						<td class="text-left"><?php echo $product_product_column; ?></td>
						<td class="text-left"><?php echo $product_model_column; ?></td>
						<td class="text-left"><?php echo $product_quantity_column; ?></td>
						<td class="text-right"><?php echo $product_unit_column; ?></td>
						<td class="text-right"><?php echo $product_total_column; ?></td>
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
									<button type="submit" data-toggle="tooltip" title="<?php echo $product_update_text; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
									<button type="button" data-toggle="tooltip" title="<?php echo $product_remove_text; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
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

	<div class="row">
		<div class="col-sm-4 col-sm-offset-8">
			<table class="table table-bordered">
				<tr>
					<td class="text-right"><strong><?php echo $total_sum_text; ?>:</strong></td>
					<td class="text-right"><?php echo $total_sum; ?></td>
				</tr>
			</table>
		</div>
	</div>

	<div class="buttons clearfix">
		<div class="pull-left">
			<a href="<?php echo $continue; ?>" class="btn-black"><?php echo $button_shopping_text; ?></a>
		</div>
		<div class="pull-right">
			<a href="<?php echo $checkout; ?>" class="btn-black"><?php echo $button_checkout_text; ?></a>
		</div>
	</div>
	<?php } else {?>
	<div class="centered">
    	<h2 class="h2"><?php echo $text_no_products; ?>!</h2>
	</div>
	<?php }?>
</div>
<?php echo $footer; ?>