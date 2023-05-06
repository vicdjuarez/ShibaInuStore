<?php
$id = mysqli_real_escape_string($con, $_REQUEST['id'] ?? '');
$queryProducto = "SELECT id,nombre,precio,existencia,descripcion FROM productos where id='$id';  ";
$resProducto = mysqli_query($con, $queryProducto);
$rowProducto = mysqli_fetch_assoc($resProducto);
?>
<!-- Default box -->
<div class="card card-solid">
    <div class="card-body">
        <div class="row">
            <div class="col-12 col-sm-6">
            <h3 class="d-inline-block d-sm-none"><?php echo $rowProducto['nombre'] ?></h3>
                <?php
                $queryImagenes = "SELECT 
                f.web_path
                FROM
                productos AS p
                INNER JOIN productos_files AS pf ON pf.producto_id=p.id
                INNER JOIN files AS f ON f.id=pf.file_id
                WHERE p.id='$id';
                ";
                $resPrimerImagen = mysqli_query($con, $queryImagenes);
                $rowPrimerImaen=mysqli_fetch_assoc($resPrimerImagen);
                ?>
                <div class="col-12">
                    <img src="<?php echo $rowPrimerImaen['web_path'] ?>" class="product-image">
                </div>
                <div class="col-12 product-image-thumbs">
                    <?php
                        $resImagenes = mysqli_query($con, $queryImagenes);
                        while ($rowImagenes = mysqli_fetch_assoc($resImagenes)) {
                        ?>

                            <div class="product-image-thumb"><img src="<?php echo $rowImagenes['web_path'] ?>"></div>
                        <?php
                        }
                        ?>
                </div>
            </div>
            <div class="col-12 col-sm-6">
                <h3 class="my-3"><?php echo $rowProducto['nombre'] ?></h3>
                    <p><?php echo $rowProducto['descripcion'] ?></p>
                <hr>
                    <h4>Existencias: <?php echo $rowProducto['existencia'] ?></h4>

                
                    
                <div class="bg-gray py-2 px-3 mt-4">
                    <h2 class="mb-0">
                        <?php
                        $fmt = new NumberFormatter( 'de_DE', NumberFormatter::CURRENCY );
                        echo $fmt->formatCurrency($rowProducto['precio'], "MXN")  ?>
                    </h2>
                </div>
                <div class="mt-4">
                    <button class="btn btn-primary btn-lg btn-flat" id="agregarCarrito" 
                        data-id="<?php echo $_REQUEST['id'] ?>"
                        data-nombre="<?php echo $rowProducto['nombre'] ?>"
                        data-web_path="<?php echo $rowPrimerImaen['web_path'] ?>"
                        data-precio="<?php echo $rowProducto['precio'] ?>"
                        >
                        <i class="fas fa-cart-plus fa-lg mr-2"></i>
                        Add to Cart
                    </button>
                </div>
                    <div class="mt-4">
                        Cantidad
                        <input type="number" class="form-control" id="cantidadProducto" value="1">
                    </div>

                    <div class="mt-4 product-share">
                        <a href="#" class="text-gray">
                            <i class="fab fa-facebook-square fa-2x"></i>
                        </a>
                        <a href="#" class="text-gray">
                            <i class="fab fa-twitter-square fa-2x"></i>
                        </a>
                        <a href="#" class="text-gray">
                            <i class="fas fa-envelope-square fa-2x"></i>
                        </a>
                        <a href="#" class="text-gray">
                            <i class="fas fa-rss-square fa-2x"></i>
                        </a>
                    </div>

            </div>
        </div>
        <div class="row mt-4">
            <nav class="w-100">
                <div class="nav nav-tabs" id="product-tab" role="tablist">
                    <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#product-desc" role="tab" aria-controls="product-desc" aria-selected="true">Descripcion</a>
                    <a class="nav-item nav-link" id="product-comments-tab" data-toggle="tab" href="#product-comments" role="tab" aria-controls="product-comments" aria-selected="false">Comentarios</a>
                    <a class="nav-item nav-link" id="product-rating-tab" data-toggle="tab" href="#product-rating" role="tab" aria-controls="product-rating" aria-selected="false">Puntaje</a>
                </div>
            </nav>
            <div class="tab-content p-3" id="nav-tabContent">
                <div class="tab-pane fade show active" id="product-desc" role="tabpanel" aria-labelledby="product-desc-tab"> <?php echo $rowProducto['descripcion'] ?></div>
                <div class="tab-pane fade" id="product-comments" role="tabpanel" aria-labelledby="product-comments-tab">Si tus favoritas son las comidas coreanas, entonces no te puedes perder estos productos, pues es importado de asia, el cual además es fácil de adquirir, económico y muy rapido de entregar.</div>
                <div class="tab-pane fade" id="product-rating" role="tabpanel" aria-labelledby="product-rating-tab"> Muy buen producto, se ajusta a la calidad esperada, ademas de que entrgaron a tiempo y forma. </div>
            </div>
        </div>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->