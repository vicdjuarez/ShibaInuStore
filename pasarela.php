<form action="/charge" method="post" id="payment-form">
    <table class="table table-striped table-inverse" id="tablaPasarela">
        <thead class="thead-inverse">
            <tr>
                <th>Imagen</th>
                <th>Nombre</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    <div class="form-row">
        <h4 class="mt3">Datos de su tarjeta</h4>
        <div id="card-element" class="form-control">
            <!-- A Stripe Element will be inserted here. -->
        </div>
        <!-- Used to display form errors. -->
        <div id="card-errors" role="alert"></div>
    </div>
    <div class="mt-3">
        <h4>Terminos y condiciones</h4>
        Las Condiciones de servicio establecen la forma en que se puede utilizar tu producto, servicio o contenido
        de forma legalmente vinculante. Son cruciales para proteger tu contenido desde una perspectiva de derechos
        de autor, así como para protegerlo de posibles responsabilidades.
        <div class="form-check">
          <label class="form-check-label">
            <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" checked>
            Acepto los terminos y condiciones
          </label>
        </div>
    </div>
    <div class="mt-3">
        <a class="btn btn-warning" href="index.php?modulo=envio" role="button">Ir a envio</a>
        <button type="submit" class="btn btn-primary float-right">Pagar</button>
    </div>
</form>