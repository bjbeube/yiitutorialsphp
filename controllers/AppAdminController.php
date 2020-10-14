<?php

namespace app\modules\admin\controllers;
use yii\web\Controller;

class AppAdminController extends Controller
{
	public function behaviours(){
		return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ]
                ]
            ]
        ];
	}
}