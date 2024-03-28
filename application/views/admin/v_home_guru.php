<?php 
$this->load->view('admin/head');
?>

<!--tambahkan custom css disini-->

<?php
$this->load->view('admin/topbar');
$this->load->view('admin/sidebar');
?>

<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">

    <div class="callout callout-warning">
        <h4>Selamat Datang, <?= $this->session->userdata('nama');?> </h4>
        
    </div>

    <div class="box box-success box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">Ketentuan</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <dl>

                <dd>
                    <ol>
                        <li><b>Kelola Soal Ujian</b></li>
                        Pada menu Kelola Soal Ujian, guru dapat melihat daftar soal ujian, dengan memfilter mata pelajaran apa yang ingin di lihat. dan guru bisa menambah, edit, dan hapus mata pelajaran dan menambah data pelajaran sesuai mata pelajaran guru tersebut 
                        <li><b>Ganti Password</b></li>
                        Pada menu Ganti Password, guru dapat mengganti password sesuai keinginan guru tersebut setelah guru mendapatkan password default dari pihak administrator. ketika guru lupa password, guru dapat menghubungi pihak administrator agar mendapatkan password terbaru.
                    </ol>
                </dd>
                
            </dl>
        </div><!-- /.box-body -->
    </div>

</section><!-- /.content -->
  
<?php 
$this->load->view('admin/js');
?>

<!--tambahkan custom js disini-->

<script type="text/javascript">

	$(function(){
		$('#data-tables').dataTable();
	});

	$('.alert-message').alert().delay(3000).slideUp('slow');

</script>


<?php
$this->load->view('admin/foot');
?>

