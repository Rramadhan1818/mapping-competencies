    <div class="form-row">
        <div class="col-md-3 mb-3">
            <label>NIK</label>
            <input type="text" class="form-control form-control-sm" name="nik" placeholder="10119912" value="{{$user->nik}}">
        </div>
        <div class="col-md-3 mb-3">
            <label>Password</label>
            <input type="password" class="form-control form-control-sm" name="password" placeholder="Masukan Password" value="{{$user->password}}">
        </div>
        <div class="col-md-3 mb-3">
            <label>Peran Pengguna</label>
            <select class="form-control form-control-sm" name="peran_pengguna">
                <option value="3">Admin</option>
                <option value="2">CG Leader</option>
                <option value="1">Pengguna</option>
            </select>
        </div>
        <div class="col-md-3 mb-3">
            <label>Tanggal Masuk</label>
            <input type="date" id="birthday" name="tgl_masuk" class="form-control form-control-sm" value="{{$user->tgl_masuk}}">
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-6 mb-3">
            <label>Nama Karyawan</label>
            <input type="text" class="form-control form-control-sm" name="nama_pengguna" placeholder="Nama Karyawan" value="{{$user->nama_pengguna}}">
        </div>
        <div class="col-md-6 mb-3">
            <label>Email</label>
            <input type="text" name="email" class="form-control form-control-sm" placeholder="nama@gmail.com" value="{{$user->email}}">
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label>Divisi</label>
            <select id="divisi" class="form-control form-control-sm" name="divisi">
                <option value="">Pilih Divisi</option>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <label>Jabatan</label>
            <select id="jabatan" class="form-control form-control-sm" name="job_title">
                <option value="">Pilih Jabatan</option>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <label>Level</label>
            <select id="level" class="form-control form-control-sm" name="level">
                <option value="">Pilih Level</option>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label>Department</label>
            <select id="department" class="form-control form-control-sm" name="department">
                <option value="">Pilih Department</option>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <label>Sub Department</label>
            <select id="sub-department" class="form-control form-control-sm" name="sub_department">
                <option value="">Pilih Sub Dept</option>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <label>Liga CG</label>
            <select id="cg" class="form-control form-control-sm" name="cg">
                <option value="">Pilih CG Name</option>
            </select>
        </div>
    </div>