<?php
/**
 * @var yii\web\View $this
 * @var mdm\admin\models\AuthItem $model
 */

$this->title                   = Yii::t('rbac-admin', 'Create Role');
$this->params['breadcrumbs'][] = ['label' => Yii::t('rbac-admin', 'Roles'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
            </div>
            <?php echo $this->render('_form', [
                'model' => $model,
            ]); ?>
        </div>
    </div>
</div>

