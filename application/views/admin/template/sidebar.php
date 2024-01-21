<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Nama Pengguna</div>
                    <a class="nav-link active">
                        <div class="sb-nav-link-icon"></i></div>
                        <?php echo $this->session->userdata('full_name') ?>
                    </a>
                    <div class="sb-sidenav-menu-heading">Halaman Utama</div>
                    <a class="nav-link" href="<?php echo site_url('admin/menu'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Kelola Data</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts"
                        aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Master Data
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                        data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <?php if ($this->session->userdata('role') == "Admin") { ?>
                                <a class="nav-link" href="<?php echo site_url('admin/user'); ?>">User</a>
                                <a class="nav-link" href="<?php echo site_url('admin/surat_masuk'); ?>">Surat Masuk</a>
                            <?php } ?>
                            <a class="nav-link" href="<?php echo site_url('surat_ajuan'); ?>">Surat Ajuan</a>
                            <a class="nav-link" href="<?php echo site_url('templatesurat'); ?>">Template
                                Surat</a>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">