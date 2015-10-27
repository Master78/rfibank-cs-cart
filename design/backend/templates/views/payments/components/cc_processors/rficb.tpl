rficb.tpl{* rus_build_pack dbazhenov *}

{assign var="r_url" value="payment_notification.result?payment=rficb"|fn_url:'C':'http'}
{assign var="p_url" value="payment_notification.return?payment=rficb"|fn_url:'C':'http'}
{assign var="f_url" value="payment_notification.cancel?payment=rficb"|fn_url:'C':'http'}

<div>
    {__("text_rficb_notice", ["[r_url]" => $r_url, "[p_url]" => $p_url, "[f_url]" => $f_url])}
</div> 
<hr>

<div class="control-group">
    <label class="control-label" for="rficbkey">{__("rficb_key")}:</label>
    <div class="controls">
        <input type="text" name="payment_data[processor_params][rficbkey]" id="rficbkey" value="{$processor_params.rficbkey}"  size="60">
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="secretkey">{__("rficb_secret_key")}:</label>
    <div class="controls">
        <input type="text" name="payment_data[processor_params][secretkey]" id="secretkey" value="{$processor_params.secretkey}"  size="60">
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="descr">{__("description")}:</label>
    <div class="controls">
        <input type="text" name="payment_data[processor_params][details]" id="descr" value="{$processor_params.details}"  size="60">
    </div>
</div>
