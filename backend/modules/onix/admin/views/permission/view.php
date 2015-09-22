<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use mdm\admin\AdminAsset;
use yii\helpers\Json;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model mdm\admin\models\AuthItem */

$this->title                   = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Permissions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="row">
        <div class="col-md-12">
            <div class="menu-index box box-primary">
                <div class="box-header with-border">
                    <?= Html::a(Yii::t('rbac-admin', 'Update'), ['update', 'id' => $model->name],
                        ['class' => 'btn btn-primary']) ?>
                    <?= Html::a(Yii::t('rbac-admin', 'Delete'), ['delete', 'id' => $model->name], [
                        'class'        => 'btn btn-danger',
                        'data-confirm' => Yii::t('rbac-admin', 'Are you sure to delete this item?'),
                        'data-method'  => 'post',
                    ]);
                    ?>
                </div>
                <div class="box-body">
                    <?php
                    echo DetailView::widget([
                        'model'      => $model,
                        'attributes' => [
                            'name',
                            'description:ntext',
                            'ruleName',
                            'data:ntext',
                        ],
                    ]);
                    ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="menu-index box box-primary">
                <div class="box-header with-border">
                    <h4><?= Yii::t('back', 'Assignments') ?></h4>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-5">
                            <?= Yii::t('rbac-admin', 'Avaliable') ?>:
                            <input id="search-avaliable" class="form-control"><br>
                            <select id="list-avaliable" class="form-control" multiple size="20" style="width: 100%">
                            </select>
                        </div>
                        <div class="col-lg-1 btn-group-vertical">
                            <a href="#" id="btn-add" class="btn btn-success">&gt;&gt;</a><br>
                            <a href="#" id="btn-remove" class="btn btn-danger">&lt;&lt;</a>
                        </div>
                        <div class="col-lg-5">
                            <?= Yii::t('rbac-admin', 'Assigned') ?>:
                            <input id="search-assigned" class="form-control"><br>
                            <select id="list-assigned" class="form-control" multiple size="20" style="width: 100%">
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php
AdminAsset::register($this);
$properties = Json::htmlEncode([
    'roleName'  => $model->name,
    'assignUrl' => Url::to(['assign']),
    'searchUrl' => Url::to(['search']),
]);
$js         = <<<JS
yii.admin.initProperties({$properties});

$('#search-avaliable').keydown(function () {
    yii.admin.searchRole('avaliable');
});
$('#search-assigned').keydown(function () {
    yii.admin.searchRole('assigned');
});
$('#btn-add').click(function () {
    yii.admin.addChild('assign');
    return false;
});
$('#btn-remove').click(function () {
    yii.admin.addChild('remove');
    return false;
});

yii.admin.searchRole('avaliable', true);
yii.admin.searchRole('assigned', true);
JS;
$this->registerJs($js);