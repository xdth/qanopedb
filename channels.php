<?php

  $page_title = "Channels :: Alterland.net IRC";

  require_once('./core/init.php');
  require_once('./inc/header.inc.php');

?>
      <div class="row">
        <div class="col-sm-12">
          <ul class="nav nav-tabs">
            <li class="active"><a href="<?php echo CFG['instance-domain']; ?>/channels">Channels</a></li>
            <li><a href="<?php echo CFG['instance-domain']; ?>/users">Users</a></li>
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
  <h2>All Channels</h2>
  <p>Here you find all channels registered in Alterland.net IRC network. Channels are added automatically within 24h from registration.</p>
  <br/><br/>
  <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Description</th>
        <th>Topic</th>
        <th>Registered on</th>
        <th>Join</th>
      </tr>
    </thead>
    <tbody>
      <?php $channel->read_all(); ?>
    </tbody>
  </table>
  </div>

        </div>
      </div>



<?php

  require_once('./inc/footer.inc.php');

?>

