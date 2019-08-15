<?php 

  $siapa=$_SESSION['username'];
if ($siapa=='penduduk') {
    # code...
}else{ ?>
    <ul class="sidebar-menu">
                                <li class="#">
                                    <a href="index.php">
                                        <i class="fa fa-desktop"></i> <span>Dashboard</span>
                                    </a>
                                </li>

                           

                                 <li class="#">
                                    <a href="datapenduduk.php">
                                        <i class="fa fa-user"></i> <span>Data Penduduk</span>
                                    </a>
                                </li>
                                     <li class="#">
                                    <a href="datakk.php">
                                        <i class="fa fa-file"></i> <span>Data KK</span>
                                    </a>
                                </li>

                                    <li class="#">
                                    <a href="datakelahiran.php">
                                        <i class="fa fa-file-archive-o"></i> <span>Data Kelahiran</span>
                                    </a>
                                </li>

                                   <li class="#">
                                    <a href="datakematian.php">
                                        <i class="fa fa-file-excel-o"></i> <span>Data kematian</span>
                                    </a>
                                </li>

                                    <li class="#">
                                    <a href="datamigrasi.php">
                                        <i class="fa fa-plus-square"></i> <span>Data Migrasi</span>
                                    </a>
                                </li>
                                     <li class="#">
                                    <a href="datamutasi.php">
                                        <i class="fa fa-list-alt"></i> <span>Data Mutasi</span>
                                    </a>
                                </li>
                                      <li>
                                    <a href="profildesa.php">
                                        <i class="fa fa-bank"></i> <span>Profil desa</span>
                                    </a>
                                </li> 
                                    

                                    <li class="#">
                                    <a href="dataadmin.php">
                                        <i class="fa fa-lock"></i> <span>Admin</span>
                                    </a>
                                </li>
                   


                            <li>
                                    <a href="log-aktivitas.php">
                                        <i class="fa fa-refresh"></i> <span>Log aktivitas</span>
                                    </a>
                                </li>
                                  <li>
                                    <a href="help.php">
                                        <i class="fa fa-search"></i> <span>Help</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="tentang.php">
                                        <i class="fa fa-info"></i> <span>Tentang</span>
                                    </a>
                                </li>


                            </ul>

<?php
}


?>                        