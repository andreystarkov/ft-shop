<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <!--<![endif]-->
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/assets/scripts/scripts.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="/assets/fonts/robotodraft/robotodraft.css" rel="stylesheet">
    <link href="/assets/styles/queries.css" rel="stylesheet">
    <link href="/assets/fonts/rouble.css" rel="stylesheet">
   <link href="/dist/styles/styles.css" rel="stylesheet">
   <!--  <link rel="stylesheet/less" type="text/css" href="/assets/styles/styles.less" />
    <script src="/assets/libs/less/dist/less.min.js" type="text/javascript"></script> -->

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>

    <style>
      /* 3rd level menu fixes */

      .dropdown-menu .third-level {
        padding-left: 0;
      }
      #menu .dropdown-inner .third-level li:nth-child(even){
        background: rgba(250,246,240,.05);
      }
      #menu .dropdown-inner a {
        font-size:11px;
        color: rgba(250,246,240,0.9);
      }
      #menu .nav>li>a {
        font-size:13px;
      }
      #menu .dropdown-inner .third-level {
        background: rgba(255,255,255,0.1);
      }
      #menu .dropdown-inner .third-level li:nth-child(odd){
        background: rgba(250,246,240,.02);
      }
      #menu .dropdown.open .dropdown-menu {
        max-height:600px;
      }
      .category-third {
        list-style:none;
        margin:0;
        padding:0;
      }
      .category-third li {
      }
      body .list-group a {
        border: 1px solid #ddd;
        color: #000;
        opacity: 1;
        font-size: 11px;
        padding: 6px 15px 6px 15px;
        transition: all .4s cubic-bezier(0,.47,.46,.76);
      }
      body .category-third li a {
        border: 1px solid #ddd;
        color: #000;
        opacity: .85;
        background: rgba(236, 233, 227, 1);
        display:block;
        padding: 6px 15px 6px 25px;
        transition: all .4s cubic-bezier(0,.47,.46,.76);
      }
    </style>
    <script>
    /* yep, it's extremely ugly */
      $(document).ready(function() {
        $('.the-recommend .product-layout').each(function(){
          $(this).parent().attr('class', 'product-layout product-grid col-lg-2 col-md-4 col-sm-6 col-xs-12');
        });

        $('.category-item').each(function(){
            var wtf = $(this).attr('data-id');
            if($('.'+wtf).length > 0) {
              var omg = $('.'+wtf).html();
              console.log('wtf = '+wtf);
              console.log('omg = '+omg);
              $(this).after('<ul class="category-third">'+omg+'</ul>');
            }
        });
      });
    </script>
  </head>
  <body class="<?php echo $class; ?>">
    <nav id="top">
      <div class="container">
        <?php echo $currency; ?>
        <?php echo $language; ?>
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
            <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
            <ul class="dropdown-menu dropdown-menu-right">
              <?php if ($logged) { ?>
              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
              <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
              <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
              <?php } else { ?>
              <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
              <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
              <?php } ?>
            </ul>
          </li>
          <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
          <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
          <li><a href="http://ft-shop.ru/index.php?route=information/information&information_id=6"><i class="fa fa-info"></i> <span class="hidden-xs hidden-sm hidden-md">Оплата и доставка</span></a></li>
          <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
        </ul>
      </div>
    </div>
  </nav>
  <header>
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div id="logo">
            <a href="<?php echo $home; ?>"><img src="/assets/images/logo.jpg" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php /* if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } */?>
          </div>
        </div>
        <div class="col-sm-5"><?php echo $search; ?>
        </div>
        <div class="col-sm-3"><?php echo $cart; ?></div>
      </div>
    </div>
  </header>
  <?php if ($categories) { ?>
  <div class="container">
    <nav id="menu" class="navbar">
      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
        <div class="dropdown-menu">
          <div class="dropdown-inner">
            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
            <ul class="list-unstyled">
              <?php foreach ($children as $child) { ?>
              <?php $theClass = "class=\"is-single\""; if(isset($child['children_lv3']) && count($child['children_lv3'])>0) $theClass = " class=\"has-child\""; ?>
              <li <?=$theClass?>><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
              <?php if(isset($child['children_lv3']) && count($child['children_lv3'])>0){ ?>
                      <ul class="third-level <?=md5($child['href'])?>">
                         <?php
                         $parent_id = $child['the_id'];
                         foreach ($child['children_lv3'] as $child_lv3) { ?>
                         <? if( $parent_id == $child_lv3['parent_id']) { ?>
                         <li><a href="<?php echo $child_lv3['href']; ?>"><?php echo $child_lv3['name']; ?></a></li>
                          <?php
                            }
                          } ?>
                      </ul>
                    <?php } ?>
                  <?php } ?>
            </ul>
            <?php } ?>
          </div>
          <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>