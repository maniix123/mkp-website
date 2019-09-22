<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Default routes
$route['default_controller'] = 'pagecontroller/view';


//Admin routes
$route['member'] = 'admincontroller/index';

//testing route bitch
// $route['test'] = 'testcontroller/changePasswords';

//log route
$route['member/view/logs'] = 'logcontroller/index';
$route['member/add/(:any)'] = 'admincontroller/displayAddPage/$1';
$route['admin/batches/(:any)'] = 'admincontroller/fetchBatches/$1'; // ayaw i change
$route['member/addmembers']['post'] = 'admincontroller/store';
$route['member/view/blogs'] = 'admincontroller/displayBlogs';
$route['member/view/blogs/(:num)'] = 'admincontroller/displayBlogs/$1';
$route['member/view/(:any)'] = 'admincontroller/view/$1';
$route['member/addbatches']['post'] = 'admincontroller/storeBatch';
$route['member/edit/member/(:num)'] = 'admincontroller/editMember/$1';
$route['member/edit/batch/(:num)'] = 'admincontroller/editBatch/$1';
$route['member/show/id/(:num)/who/(:any)'] = 'admincontroller/displayDeletePage/$1/$2';
$route['member/delete/id/(:num)/who/(:any)'] = 'admincontroller/delete/$1/$2';
$route['member/update/(:any)'] = 'admincontroller/update/$1';
$route['member/profile'] = 'admincontroller/viewProfile';
$route['member/edit/profile'] = 'admincontroller/displayEditProfilePage';
$route['member/view/batch/(:num)'] ='admincontroller/viewBatch/$1';
$route['member/batch/(:num)'] = 'admincontroller/viewBatch/$1';
$route['logout'] = 'admincontroller/logout';
$route['member/delete/cache'] = 'admincontroller/deleteCache';
$route['(:any)/(:any)'] = 'admincontroller/checkIfExists/$1/$2';

//Blog Routes
$route['blog/(:any)'] = 'blogcontroller/view/$1';
$route['blog'] = 'blogcontroller/index';

//Login Routes
$route['login'] = 'logincontroller/index';
$route['logins']['post'] = 'logincontroller/login';

//The rest are stupid shit
$route['(:any)'] = 'pagecontroller/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;
