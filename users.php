<?php

  $page_title = "Users :: Alterland.net IRC";

  require_once('./core/init.php');
  require_once('./inc/header.inc.php');

?>
      <div class="row">
        <div class="col-sm-12">
          <ul class="nav nav-tabs">
            <li><a href="<?php echo CFG['instance-domain']; ?>/channels">Channels</a></li>
            <li class="active"><a href="<?php echo CFG['instance-domain']; ?>/users">Users</a></li>
            <li><a href="<?php echo CFG['instance-domain']; ?>/status">Status</a></li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4"></div>
      </div>
      <div class="row">
        <div class="col-sm-12"></div>
      </div>
      <div class="row">
        <div class="col-sm-12">
  <br/>
  <h2>All Users</h2>
  <p>Here you find all users registered in Alterland.net IRC network. Users are added automatically within 24h from registration.</p>
  <br/><br/>
  <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nick</th>
        <th>Registered on</th>
      </tr>
    </thead>
    <tbody>
      <?php $user->read_all(); ?>
    </tbody>
  </table>
  </div>

        </div>
      </div>



<?php

  require_once('./inc/footer.inc.php');

?>

