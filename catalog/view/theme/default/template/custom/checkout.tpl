<?php echo $header; ?>
<div id="content" class="grid container">
  <form>
    <h2>Adresse</h2><hr>
    <div class="row">
     <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
      <label class="control-label" for="input-payment-salutation">Anrede</label>
      <select name="salutation" id="input-payment-salutation" class="form-control">
       <option value="Herr" selected="selected">Herr</option>
       <option value="Frau">Frau</option>
     </select>
   </div>
 </div>
 <div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label " for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
    <input type="text" name="firstname" placeholder="<?php echo $entry_firstname; ?>" value="<?php echo $firstname; ?>" id="input-payment-firstname" class="form-control" /> 
  </div>
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
    <input type="text" name="lastname" placeholder="<?php echo $entry_lastname; ?>" value="<?php echo $lastname; ?>" id="input-payment-lastname" class="form-control" />
  </div>
</div>
<div class="row">
  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
    <input type="text" name="company" placeholder="<?php echo $entry_company; ?>" value="<?php echo $company; ?>" id="input-payment-company" class="form-control" />
  </div>
</div>
<div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-street"><?php echo $entry_street; ?></label>
    <input type="text" name="street" placeholder="<?php echo $entry_street; ?>" value="<?php echo $street; ?>" id="input-payment-street" class="form-control" />
  </div>
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-house"><?php echo $entry_house; ?></label>
    <input type="text" name="house" placeholder="<?php echo $entry_house; ?>" value="<?php echo $house; ?>" id="input-payment-house" class="form-control" />
  </div>
</div>
<div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
    <input type="text" name="city" placeholder="<?php echo $entry_city; ?>" value="<?php echo $city; ?>" id="input-payment-city" class="form-control" />
  </div>
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
    <input type="text" name="postcode" placeholder="<?php echo $entry_postcode; ?>" value="<?php echo $postcode; ?>" id="input-payment-postcode" class="form-control" />
  </div>
</div>
<div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
    <select name="country_id" id="input-payment-country" class="form-control">
      <?php foreach ($countries as $country) { ?>
      <?php if ($country['country_id'] == $country_id) { ?>
      <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
      <?php } ?>
      <?php } ?>
    </select>
  </div>
</div>
<div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
    <select name="zone_id" id="input-payment-zone" class="form-control">
    </select>
  </div>
</div>  
<h2>Kontaktdaten</h2><hr>
<div class="row">
  <div class="form-group required col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
    <input type="text" name="email" placeholder="<?php echo $entry_email; ?>" value="<?php echo $email; ?>" id="input-payment-email" class="form-control" />
  </div>
</div>
<div class="row">
  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
    <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
    <input type="text" name="telephone" placeholder="<?php echo $entry_telephone; ?>" value="<?php echo $telephone; ?>" id="input-payment-telephone" class="form-control" />
  </div>
</div>


<div class="form-check ">
  <?php if ($payment_methods) { ?>
  <h2><?php echo $text_payment_method; ?></h2><hr>
  <?php foreach ($payment_methods as $payment_method) { ?>
  <div class="radio ">
    <label>
      <?php if ($payment_method['code'] == $selected_payment_code) { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else {?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" />
      <?php } ?>
      <?php echo $payment_method['title']; ?>
      <?php if ($payment_method['terms']) { ?>
      (<?php echo $payment_method['terms']; ?>)
      <?php } ?>
    </label>
  </div>
  <?php } ?>
  <?php } ?>
  <hr>
</div>

<div>
  <span class="h4">Ich habe <a href="<?php echo $url_agb; ?>">AGB</a> gelesen und bin damit einverstanden</span>
  <input type="checkbox" onchange="changeButton(this.checked);">
</div>
<button type="button" id="confirm_order" class="center-block btn-black"><?php echo $text_order; ?></button>
<br>  

<a href="<?php echo $url_back; ?>" class="btn-grey center-block"><?php echo $text_back; ?></a>	
</form>

<div id="confirm_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Bestellbest&auml;tigung</h4>
      </div>
      <div class="modal-body">
        <p>Name: <span id="fullname"></span></p>
        <p><?php echo $entry_email; ?>: <span id="email"></span></p>
        <p><?php echo $entry_telephone; ?>: <span id="phonenumber"></span></p>
        <p><?php echo $entry_country; ?>: <span id="country"></span></p>
        <p><?php echo $entry_zone; ?>: <span id="region"></span></p>
        <p><?php echo $entry_street; ?>: <span id="street"></span></p>
        <p><?php echo $entry_house; ?>: <span id="house"></span></p>
        <p><?php echo $entry_postcode; ?>: <span id="postcode"></span></p>
        <p><?php echo $entry_company; ?>: <span id="company"></span></p>
        <p><?php echo $text_total; ?>: <span id="total"></span></p>
        <hr>
        <p>Dr&uuml;cken Sie die Taste, um Ihre Bestellung zu best&auml;tigen</p>
      </div>
      <div class="modal-footer">
        <div id="payment-content" class="pull-left"></div>
        <div class="buttons">
          <button type="button" class="btn-grey" data-dismiss="modal">Zur&uuml;ck</button>
        </div>
      </div>
    </div>

  </div>
</div>
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
          $('input[name=\'postcode\']').parent().addClass('required');
        } else {
          $('input[name=\'postcode\']').parent().removeClass('required');
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
     $(".text-danger").remove();
     $.ajax({
      url: 'index.php?route=custom/checkout/validate',
      type: 'post',
      data: $('input[type=\'text\'], input[type=\'checkbox\']:checked, input[type=\'radio\']:checked, select'),
      dataType: 'json',
      beforeSend: function() {
        $('#confirm_order').button('loading');
      },
      complete: function() {
        $('#confirm_order').button('reset');
      },
      success: function(json) {
        $(".has-error").removeClass("has-error");

        if (json['redirect']) {
          location = json['redirect'];
        } 
        else if (json['error']) {
          for (i in json['error']) {
            var element = $('#input-payment-' + i.replace('_', '-'));

            if ($(element).parent().hasClass('input-group')) {
              $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
            } else {
              $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
            }
          }

              // Highlight any found errors
          $('.text-danger').parent().addClass('has-error');
        }
        else {
          $('#confirm_modal .modal-body #fullname').html(json['fullname']);
          $('#confirm_modal .modal-body #email').html(json['email']);
          $('#confirm_modal .modal-body #country').html(json['country']);
          $('#confirm_modal .modal-body #region').html(json['region']);
          $('#confirm_modal .modal-body #street').html(json['street']);
          $('#confirm_modal .modal-body #house').html(json['house']);
          $('#confirm_modal .modal-body #postcode').html(json['postcode']);
          $('#confirm_modal .modal-body #total').html(json['total']);

          var text_not_entered = <?php echo json_encode($text_not_entered); ?>;
          var company = json['company'] !== undefined ? json['company'] : text_not_entered;
          $('#confirm_modal .modal-body #company').html(company);
          var phonenumber = json['phonenumber'] !== undefined ? json['phonenumber'] : text_not_entered;
          $('#confirm_modal .modal-body #phonenumber').html(phonenumber);

          $('#confirm_modal #payment-content').html(json['payment_html']);
          $('#confirm_modal').modal('show');
        }
      },
      error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    });
});

    function changeButton(isChecked) {
      var button = $("#confirm_order");

      button.prop('disabled', !isChecked);
      var opacity = isChecked ? "1" : "0.3";
      button.css("opacity", opacity);
    }

    changeButton(false);
  </script>