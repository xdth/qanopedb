<?php

class Channel extends Main {

  /*
  * Construct
  */
	public function __construct() {
		Main::__construct();
	}



  /*
  * Method read_all
  */

  public function read_all() {

    $this->query('
      SELECT id,name,description,last_topic, from_unixtime(time_registered) as xDate FROM irc_db_ChannelInfo;
      ');

    try {
      $result = $this->resultset();
      //return $result;
      // echo var_dump($result);

      foreach ($result as $key => $value) {
        echo '<tr>';
        echo '<td>'.$value['id'].'</td>';
        echo '<td>'.$value['name'].'</td>';
        echo '<td>'.$value['description'].'</td>';
        echo '<td>'.$value['last_topic'].'</td>';
        echo '<td>'.$value['xDate'].'</td>';
        echo '<td><a href="#" class="btn btn-default" role="button">Join</a></td>';
        echo '</tr>';
      }

    } catch (Exception $e) {
      die($this->msgbuild('danger','<strong>Error: </strong>Something went wrong'));
    }

  }



  /*
  * Method read
  */

  public function read($arg) {

    $this->query('
      SELECT * FROM irc_db_ChannelInfo WHERE nick == :arg;
      ');
      $this->bind(':arg', $arg);

    try {
      $result = $this->resultset();
      return $result;
    } catch (Exception $e) {
      die($this->msgbuild('danger','<strong>Error: </strong>Something went wrong'));
    }

  }


// end
}
