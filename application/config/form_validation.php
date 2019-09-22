<?php

$config = array(
        'update-member' => array(
                array(
                        'field' => 'username',
                        'label' => 'Username',
                        'rules' => 'required|callback_check_if_unique[username]'
                ),
                array(
                        'field' => 'slave-name',
                        'label' => 'Baptismal Name',
                        'rules' =>'callback_check_if_unique[SlaveName]'
                )
        )
);