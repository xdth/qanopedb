<?php

  $page_title = "Status :: Alterland.net IRC";

  require_once('./core/init.php');
  require_once('./inc/header.inc.php');

?>
      <div class="row">
        <div class="col-sm-12">
          <ul class="nav nav-tabs">
            <li><a href="<?php echo CFG['instance-domain']; ?>/channels">Channels</a></li>
            <li><a href="<?php echo CFG['instance-domain']; ?>/users">Users</a></li>
            <li class="active"><a href="<?php echo CFG['instance-domain']; ?>/status">Status</a></li>
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
  <h2>Services Status</h2>
  <p>Here you find the status of some of our IRC related services.</p>
  <br/><br/>
  <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>Service</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IRC</td>
        <td><span class="glyphicon glyphicon-ok green"> </span> Online</td>
      </tr>
      <tr>
        <td>Chanserv</td>
        <td><span class="glyphicon glyphicon-ok green"> </span> Online</td>
      </tr>
      <tr>
        <td>Nickserv</td>
        <td><span class="glyphicon glyphicon-ok green"> </span> Online</td>
      </tr>
      <tr>
        <td>Charlotte</td>
        <td><span class="glyphicon glyphicon-remove red"> </span> Offline</td>
      </tr>
    </tbody>
  </table>
  </div>

        </div>
      </div>



<?php

  require_once('./inc/footer.inc.php');

?>

