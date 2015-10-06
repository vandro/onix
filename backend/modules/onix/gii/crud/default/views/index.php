<?php

use yii\helpers\Inflector;
use yii\helpers\StringHelper;

/* @var $this yii\web\View */
/* @var $generator yii\gii\generators\crud\Generator */

$urlParams = $generator->generateUrlParams();
$nameAttribute = $generator->getNameAttribute();

echo "<?php\n";
?>

use yii\helpers\Html;
use <?= $generator->indexWidgetType === 'grid' ? "yii\\grid\\GridView" : "yii\\widgets\\ListView" ?>;

/* @var $this yii\web\View */
<?= !empty($generator->searchModelClass) ? "/* @var \$searchModel " . ltrim($generator->searchModelClass,
        '\\') . " */\n" : '' ?>
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title =<?= $generator->generateString(Inflector::pluralize(Inflector::camel2words(StringHelper::basename($generator->modelClass)))) ?>;
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= "<?=  " ?> Html::a(Yii::t('back', 'Create') . ' ' . Yii::t('back', '<?= Inflector::camel2words(StringHelper::basename($generator->modelClass)) ?>'), ['create'],
                ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                <?php if ($generator->indexWidgetType === 'grid'): ?>
                    <?= "<?php  " ?>

                    \yii\widgets\Pjax::begin();
                    echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    <?= !empty($generator->searchModelClass) ? "'filterModel' => \$searchModel,\n        'columns' => [\n" : "'columns' => [\n"; ?>
                    <?php
                    $count = 0;
                    if (($tableSchema = $generator->getTableSchema()) === false) {
                        foreach ($generator->getColumnNames() as $name) {
                            if (++$count < 6) {
                                echo "            '" . $name . "',\n";
                            } else {
                                echo "            // '" . $name . "',\n";
                            }
                        }
                    } else {
                        foreach ($tableSchema->columns as $column) {
                            $format = $generator->generateColumnFormat($column);
                            if (++$count < 6) {
                                echo "            '" . $column->name . ($format === 'text' ? "" : ":" . $format) . "',\n";
                            } else {
                                echo "            // '" . $column->name . ($format === 'text' ? "" : ":" . $format) . "',\n";
                            }
                        }
                    }
                    ?>

                    ['class' => 'yii\grid\ActionColumn'],
                    ],
                    ]);
                    \yii\widgets\Pjax::end();
                    ?>
                <?php else: ?>
                    <?= "<?= " ?>ListView::widget([
                    'dataProvider' => $dataProvider,
                    'itemOptions' => ['class' => 'item'],
                    'itemView' => function ($model, $key, $index, $widget) {
                    return Html::a(Html::encode($model-><?= $nameAttribute ?>), ['view', <?= $urlParams ?>]);
                    },
                    ]) ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>