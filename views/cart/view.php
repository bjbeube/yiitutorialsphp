<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
?>
<div class="container">
<?php if(Yii::$app->session->hasFlash('success')) : ?>
	<div class="alert alert-success alert-dismissible" role="alert">
	<span aria-hidden="true">&time;</span>
	<?php echo Yii::$app->session->getFlash('success'); ?>
	</div>
	<?php endif; ?>
	<?php if(Yii::$app->session->getFlash('error')): ?>
	<div class="alert alert-danger alert-dismissible" role="alert">
	<span aria-hidden="true">&times;</span>
	<?php echo Yii::$app->session->getFlash('error'); ?>
	</div>
	<?php endif; ?>

<?php if(!empty($session['cart'])): ?>
    <div class="table-responsive">
      <table class="table table-hover table-striped">
          <thead>
              <tr>
                  <td>Фото</td>
                  <td>Наименование</td>
                  <td>Количество</td>
                  <td>Цена</td>
				  <th>Сумма</th>
                  <td><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></td>       
              </tr>
          </thead>
          <tbody>
              <?php foreach($session['cart'] as $id => $item): ?>
              <tr>
                  <td><?= yii\helpers\Html::img($item['img'], ['alt' => $item['name'], 'height' => 50]) ?></td>
                  <td><a href="<?= Url::to(['product/view', 'id' => $id]) ?>"><?= $item['name'] ?></a></td>
                  <td><?= $item['qty'] ?></td>
                  <td><?= $item['price'] ?></td>
				  <td><?= $item['qty'] * $item['price'] ?></td>
                  <td><span data-id="<?= $id ?>" class="glyphicon glyphicon-remove text-danger del-item" aria-hidden="true"></span></td>
              </tr>
              <?php endforeach; ?>
              <tr>
                  <td colspan="5">Итого: </td>
                  <td><?= $session['cart.qty'] ?></td>
              </tr>
              <tr>
                  <td colspan="5">На сумму: </td>
                  <td><?= $session['cart.sum'] ?></td>
              </tr>
          </tbody>
      </table>
    </div>
	<tr/>
	<?php $form = ActiveForm::begin() ?>
	<?= $form->field($order, 'name')?>
	<?= $form->field($order, 'email')?>
	<?= $form->field($order, 'phone')?>
	<?= $form->field($order, 'address')?>
	<?= Html::submitButton('Заказ', ['class' => 'btn btn-success']) ?>
	<?php ActiveForm::end() ?>
<?php else: ?>
    <h2>Корзина пустая</h2>
<?php endif; ?>

</div>