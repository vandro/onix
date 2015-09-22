<?php

use yii\helpers\Html;
use mdm\admin\AdminAsset;
use yii\helpers\Json;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model yii\web\IdentityInterface */

$this->title                   = Yii::t('rbac-admin', 'Assignments');
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="row">
        <div class="col-md-12">
            <div class="menu-index box box-primary">
                <div class="box-header with-border">
                    <h4><?= Yii::t('back', 'Assignments to ') . Html::encode($model->{$usernameField}) ?></h4>
                    <?= Html::a(Yii::t('rbac-admin', 'Users'), ['index'], ['class' => 'btn btn-success']) ?>
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
                            <a href="#" id="btn-assign" class="btn btn-success">&gt;&gt;</a><br>
                            <a href="#" id="btn-revoke" class="btn btn-danger">&lt;&lt;</a>
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
    'userId'    => $model->{$idField},
    'assignUrl' => Url::to(['assign']),
    'searchUrl' => Url::to(['search']),
]);
$js         = <<<JS
yii.admin.initProperties({$properties});

$('#search-avaliable').keydown(function () {
    yii.admin.searchAssignmet('avaliable');
});
$('#search-assigned').keydown(function () {
    yii.admin.searchAssignmet('assigned');
});
$('#btn-assign').click(function () {
    yii.admin.assign('assign');
    return false;
});
$('#btn-revoke').click(function () {
    yii.admin.assign('revoke');
    return false;
});

yii.admin.searchAssignmet('avaliable', true);
yii.admin.searchAssignmet('assigned', true);
JS;
$this->registerJs($js);