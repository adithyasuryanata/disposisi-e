<main>
    <div class="container-fluid">
        <h1 class="mt-4"></h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="<?php echo site_url('templatesurat') ?>">Template Surat</a></li>
            <li class="breadcrumb-item active">
                <?php echo $title ?>
            </li>
        </ol>
        <div class="card mb-4">
            <div class="card-body">
                <form action="<?php echo site_url('templatesurat/save') ?>" method="post">
                    <div class="mb-3">
                        <label for="full_name">NAMA LENGKAP<code>*</code></label>
                        <input class="form-control" type="text" name="nama" placeholder="NAMA LENGKAP" required>
                    </div>
                    <div class="mb-3">
                        <label for="phone">TUJUAN SURAT <code>*</code></label>
                        <input class="form-control" type="text" name="tujuan_surat" placeholder="TUJUAN SURAT" required>
                    </div>
                    <div class="mb-3">
                        <label for="email">TANGGAL KIRIM <code>*</code></label>
                        <input class="form-control" type="date" name="tgl_kirim" required>
                    </div>
                    <div class="mb-3">
                        <label for="email">PERIHAL <code>*</code></label>
                        <input class="form-control" type="text" name="perihal" placeholder="PERIHAL" required>
                    </div>
                    <div class="mb-3">
                        <label for="username">KETERANGAN</label>
                        <textarea class="form-control" placeholder="KETERANGAN" name="keterangan" id="floatingTextarea2"
                            style="height: 100px"></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit"><i class="fas fa-plus"></i>Save</button>
                </form>
            </div>
        </div>
        <div style="height: 100vh"></div>
    </div>
</main>