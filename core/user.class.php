<?php

class User extends Main {

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
      SELECT id,display, DATE_FORMAT(timestamp,"%d-%b-%Y") as xDate FROM irc_db_NickCore;
      ');

    try {
      $result = $this->resultset();
      //return $result;
      // echo var_dump($result);

      foreach ($result as $key => $value) {
        echo '<tr>';
        echo '<td>'.$value['id'].'</td>';
        echo '<td>'.$value['display'].'</td>';
        echo '<td>'.$value['xDate'].'</td>';
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
      SELECT * FROM irc_db_NickCore WHERE nick == :arg;
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
