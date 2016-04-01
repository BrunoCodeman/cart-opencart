<style>
    /*cartão*/
    .cartao{margin-bottom:10px;margin:20px auto;-moz-border-radius:5px;border-radius:5px;width:600px;background:#fff;-webkit-border-radius:5px;box-shadow:0 0 1px #666;padding:13px 20px 20px 20px;}

    .banner{margin-bottom:10px;margin:20px auto;-moz-border-radius:5px;border-radius:5px;width:600px;background:#fff;-webkit-border-radius:5px;}


</style> 

        <div id="mp_custom"></div>

        <script src="https://secure.mlstatic.com/sdk/javascript/v1/mercadopago.js"></script>

        <script src="catalog/view/javascript/jquery.mask.min.js"/>
        <script src="catalog/view/javascript/jquery.creditCardValidator.js"/>

        <input type="hidden" id="public_key" value="<?php echo $public_key;?>">
        <input type="hidden" id="country" value="<?php echo $action;?>">
        <input type="hidden" id="paymentType"/>
        <div class="form-group">
            <div class="banner">
                <img src="./image/banners/<?php echo $action;?>/credit_card.png" />
            </div>
        </div>
        <div id="spinner"> 
        <div id="formulario" class="cartao">
             <div class="panel-body" id="checkoutPayment">

                <div class="form-group" id="cardData">

                    <div class="row">
                        <div class="col-sm-2" style="display: none; " id="divPaymentType">
                            <label class="control-label" id="cardType_label" for="cardType"></label>
                            <select id="cardType" class="form-control">
                                <option value="deb">Debito</option>
                                <option value="cred">Credito</option>
                            </select>
                        </div>
                    </div>

        <div class="row">
            <div class="col-xs-10 col-md-6">
                <label id="ccnum_label" for="ccnum"></label>
                <input class="form-control" type="text" id="cc_num" data-checkout="cardNumber"/>
            </div>

            <div class="col-xs-10 col-md-3">
                <label id="expiration_month_label"></label>
                <input type="text" class="so_numeros form-control" placeholder="MM" maxlength="2" size="2"
                       id="expiration_month" data-checkout="cardExpirationMonth">
            </div>   
            <div class="col-xs-10 col-md-3">
                 <label id="expiration_year_label"></label>
                <input type="text" class="so_numeros form-control" maxlength="4" placeholder="AAAA" size="4"
                        id="expiration_year" data-checkout="cardExpirationYear" >
            </div>                     
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-7" style="display: none;" id="divIssuer">
                <label class="control-label" id="issuer_label" for="issuer">Issuer</label>
                <select id="issuer" class="form-control">
                </select>
            </div>
        </div>

        <div class="row" id="userInfo">
            <div class="col-xs-12 col-md-9">
                <label for="card_name" id="card_name_label">Nome impresso no cartão</label>
                <input type="text" id="card_name" data-checkout="cardholderName" value="" class="form-control"/>
            </div>
            <div class="col-xs-12 col-md-3">
                <label id="cvv_label" for="cvv">CVV</label>
                <input class="form-control" type="text" id="cvv" data-checkout="securityCode" placeholder="CVV" 
                    size="4" maxlength="4" class="so_numeros form-control"
                />
            </div>         
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-3">
                <label  id="doc_type_label" for="doc_type"></label>
                <select class="form-control" id="doc_type" data-checkout="docType">
                </select>
            </div>

            <div class="col-xs-12 col-md-4">
                <label  id="doc_number_label" for="doc_number"></label>
                <input type="text" id="doc_number" data-checkout="docNumber" placeholder="" value="" class="form-control"/>
            </div>
        </div>

        <div class="row">
            <div id="divInstallments">
                <div class="col-xs-12 col-md-7">
                    <label  id="installments_label" for="installments"></label>
                    <select name="installments" id="installments" class="form-control">

                    </select>
                </div>
            </div>
        </div>

          </div>
        </div>
        <div class="buttons" id="buttonPay">
            <div class="text-center">
                <input type="button" value="Confirmar Compra" id="button_pay" class="btn btn-primary"
                       data-loading-text="Processando..."/>
            </div>
        </div>
            <script defer type="text/javascript" src="//fgnass.github.io/spin.js/spin.min.js"></script>
            <script defer src="./catalog/view/javascript/mp_transparente/mask.js"></script>
            <script defer type="text/javascript" src="./admin/view/javascript/mp_transparente/spinner.min.js"></script>
            <script defer src="./catalog/view/javascript/mp_transparente/mp_transparente_view.js"></script>
        </div>

<script type="text/javascript">
    $(document).ready(function () {
        /* Máscaras dos inputs do cartão */
        $("#card_number").mask("0000000000000000999999", {clearIfNotMatch: true});

        $("#card_cvv").mask("0009", {clearIfNotMatch: true});

        //$("#expiration_month").mask("00", {clearIfNotMatch: true});

        //$("#expiration_year").mask("0000", {clearIfNotMatch: true});

    });  
</script>
      