<?php echo $header; ?>
	<div id="content">
		<form class="form-horizontal">
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="firstname" placeholder="<?php echo $entry_firstname; ?>" value="<?php echo $firstname; ?>" id="input-payment-firstname" class="form-control" />
        	</div>	
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="lastname" placeholder="<?php echo $entry_lastname; ?>" value="<?php echo $lastname; ?>" id="input-payment-lastname" class="form-control" />
        	</div>
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="email" placeholder="<?php echo $entry_email; ?>" value="<?php echo $email; ?>" id="input-payment-email" class="form-control" />
        	</div>
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
        <div class="col-sm-4">
        	<input type="text" name="telephone" placeholder="<?php echo $entry_telephone; ?>" value="<?php echo $telephone; ?>" id="input-payment-telephone" class="form-control" />
        </div>	
      </div>
      <div class="form-group">
        <label class="col-sm-4 control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="company" placeholder="<?php echo $entry_company; ?>" value="<?php echo $company; ?>" id="input-payment-company" class="form-control" />
        	</div>	
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="address_1" placeholder="<?php echo $entry_address_1; ?>" value="<?php echo $address_1; ?>" id="input-payment-address-1" class="form-control" />
        	</div>
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="city" placeholder="<?php echo $entry_city; ?>" value="<?php echo $city; ?>" id="input-payment-city" class="form-control" />
        	</div>	
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
        	<div class="col-sm-4">
        		<input type="text" name="postcode" placeholder="<?php echo $entry_postcode; ?>" value="<?php echo $postcode; ?>" id="input-payment-postcode" class="form-control" />
        	</div>	
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
        <div class="col-sm-4">
	        <select name="country_id" id="input-payment-country" class="form-control">
	          <option value=""><?php echo $text_select; ?></option>
	          <?php foreach ($countries as $country) { ?>
	          <?php if ($country['country_id'] == $country_id) { ?>
	          <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
	          <?php } else { ?>
	          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
	          <?php } ?>
	          <?php } ?>
	        </select>
        </div>
      </div>
      <div class="form-group required">
        <label class="col-sm-4 control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
        	<div class="col-sm-4">
		        <select name="zone_id" id="input-payment-zone" class="form-control">
		        </select>
        	</div>
      </div>	
			
    	<div class="form-check">
    		<?php if ($payment_methods) { ?>
        <p><?php echo $text_payment_method; ?></p>
        <?php foreach ($payment_methods as $payment_method) { ?>
        <div class="radio">
          <label>
            <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" checked="checked" />
            <?php echo $payment_method['title']; ?>
            <?php if ($payment_method['terms']) { ?>
            (<?php echo $payment_method['terms']; ?>)
            <?php } ?>
          </label>
        </div>
        <?php } ?>
        <?php } ?>
    	</div>

			<button type="button" id="confirm_order" class="btn btn-default center-block btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button><br>
			<button type="button" class="btn btn-default center-block" style="font-size: 20px; width: 150px; border-radius: 15px">Back</button>	
		</form>
	</div>	
<?php echo $footer; ?>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
  $.ajax({
    url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
    dataType: 'json',
    beforeSend: function() {
      $('#collapse-payment-address select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
    },
    complete: function() {
      $('.fa-spin').remove();
    },
    success: function(json) {
      if (json['postcode_required'] == '1') {
        $('input[name=\'postcode\']').parent().parent().addClass('required');
      } else {
        $('input[name=\'postcode\']').parent().parent().removeClass('required');
      }

      html = '<option value=""><?php echo $text_select; ?></option>';

      if (json['zone'] && json['zone'] != '') {
        for (i = 0; i < json['zone'].length; i++) {
          html += '<option value="' + json['zone'][i]['zone_id'] + '"';

          if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
            html += ' selected="selected"';
          }

          html += '>' + json['zone'][i]['name'] + '</option>';
        }
      } else {
        html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
      }

      $('select[name=\'zone_id\']').html(html);
    },
    error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>

<script>
  $(document).delegate('#confirm_order', 'click', function() {
      $.ajax({
          url: 'index.php?route=custom/checkout/confirm',
          type: 'post',
          data: $('input[type=\'text\'], input[type=\'checkbox\']:checked, input[type=\'radio\']:checked, select'),
          dataType: 'json',
          beforeSend: function() {
            //$('#confirm_order').button('loading');
        },
          success: function(json) {
            if (json['redirect']) {
              location = json['redirect'];
            } 
            else if (json['error']) {
              //TODO
              //errors
              alert("Some errors");
            }
            else {
              alert("No errors");
            }
        },
          error: function(xhr, ajaxOptions, thrownError) {
              alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
      });
  });
</script>