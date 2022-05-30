@extends('layouts.master')

@section('title', 'CEME')

@section('content')
    <div class="row mb-3">
        <div class="col-md-12">
                <ul class="nav nav-pills mb-3">
                    <li class="nav-item active">
                        <a class="nav-link @if(request('q') !== 'all') btn-primary @else btn-secondary @endif btnDc btn-primary"  href="{{ route('ceme') }}" type="button">CEME CG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btnDc  @if(request('q') === 'all') btn-primary @else btn-secondary @endif"  href="{{ route('ceme.all') }}" type="button">CEME All </a>
                    </li>
                </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">CEME</h4>
                    <div class="row">
                        <div class="col-6">
                            <h5>Competent Employee</h4>
                            <canvas id="pieChart"></canvas>
                        </div>
                        <div class="col-6">
                            <h5>Multiskill Employee</h4>
                            <canvas id="pieChart2"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Competent Employee</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="display expandable-table table table-sm table-striped table-hover"
                                    id="table-ce" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th style="width:10%">Name</th>
                                            <th>B </th>
                                            <th>I </th>
                                            <th>A </th>
                                            <th>Avr</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2">Target</th>
                                            <th>100% </th>
                                            <th>85% </th>
                                            <th>75% </th>
                                            <th>81.37%</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>WINDY A..</td>
                                            <td>100%</td>
                                            <td>87.45%</td>
                                            <td>68.76%</td>
                                            <td><span class="badge badge-warning">85.40%</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>MARIA K..</td>
                                            <td>100%</td>
                                            <td>82.30%</td>
                                            <td>67.76%</td>
                                            <td><span class="badge badge-warning">83.35%</span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>REZKI R..</td>
                                            <td>100%</td>
                                            <td>34.00%</td>
                                            <td>58.00%</td>
                                            <td>64.0%</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>CHANDRA P..</td>
                                            <td>100%</td>
                                            <td>34.30%</td>
                                            <td>56.00%</td>
                                            <td>63.33%</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-7 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Multiskill Employee</p>
                    <div class="row">
                        {{-- <div class="col-md mb-2">
                        <a class="btn btn-success float-right" href="javascript:void(0)" id="createNewItem" data-toggle="modal" data-target="#modal-tambah"><i class="icon-plus"></i> Tambah CEME</a>
                    </div> --}}
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="display expandable-table table table-sm table-striped table-hover"
                                    id="table-ceme" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Name</th>
                                            <th>Job Title</th>
                                            <th>Department</th>
                                            {{-- <th>Level</th> --}}
                                            <th>CG Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Modal --}}
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modal-tambahLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header p-3">
                    <h5 class="modal-title" id="modal-tambahLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                {{-- form add multiple job title --}}
                <div class="modal-body">
                    <form action="javascript:void(0)" method="POST" id="formAddJobTitle">
                        @csrf
                        <input type="number" id="user_id" name="user_id" hidden>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label for="">Job Title</label>
                                    <select name="job_title" id="job_title" class="form-control" required>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label for="">Level</label>
                                    <select name="level" id="level" class="form-control" required>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2 align-self-center">
                                <button class="btn btn-success btnSubmitJobTitle btn-block">Add Job Title</button>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-12">
                            <h5 class="mt-4 mb-2">Job Title</h5>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <th style="width:10px">#</th>
                                        <th>Job Title</th>
                                        <th>Level</th>
                                        <th>Action</th>
                                    </thead>
                                    <tbody class="trJob">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalEditJobTitle" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="javascript:void(0)" method="post" id="formUpdateJobTitle">
                        <input type="text" id="id" name="id" hidden>
                        @csrf
                        <div class="form-group">
                            <label for="">Job Title</label>
                            <select name="job_title_edit" id="job_title_edit" class="form-control" required>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Level</label>
                            <select name="level_edit" id="level_edit" class="form-control" required>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success btnUpdateJobTitle">Update</button>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('style')
    {{-- <link rel="stylesheet" href="{{ asset('assets/select2/css/select2.min.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('assets/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/sweetalert2/sweetalert2.min.css') }}">
    <style>
        .select2-selection__rendered {
            line-height: 50px !important;
        }

        .select2-container .select2-selection--single {
            height: 48px !important;
        }

    </style>
@endpush
@push('script')
    <script src="{{ asset('assets/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/sweetalert2/sweetalert2.all.min.js') }}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $(document).ready(function() {
            initDatatable();
            $('[data-toggle="tooltip"]').tooltip({
                animation: true,
                placement: "top",
                trigger: "hover focus"
            });
        });


        function initDatatable() {
            var q = '{{ $q }}';
            if (q != '') {
                var ajaxRoute = '{{ route('ceme.json.all') }}';
            } else {
                var ajaxRoute = '{{ route('ceme.json') }}';
            }
            var dtJson = $('#table-ceme').DataTable({
                ajax: ajaxRoute,
                autoWidth: false,
                serverSide: true,
                processing: true,
                aaSorting: [
                    [0, "desc"]
                ],
                searching: true,
                dom: '<"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
                displayLength: 10,
                lengthMenu: [10, 15, 20],
                language: {
                    paginate: {
                        // remove previous & next text from pagination
                        previous: '&nbsp;',
                        next: '&nbsp;'
                    }
                },
                scrollX: true,
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'nama_pengguna'
                    },
                    {
                        data: 'nama_job_title'
                    },
                    {
                        data: 'nama_department'
                    },
                    // {
                    //     data: 'nama_divisi'
                    // },
                    {
                        data: 'nama_cg'
                    },
                    {
                        data: 'action'
                    }
                ],
            })
        }

        var modal = $('#myModal');
        var modalTitle = $('#myModal .modal-title');
        $('#job_title').select2({
            theme: 'bootstrap4',
        });
        $('#job_title_edit').select2({
            theme: 'bootstrap4',
        });
        var jobTitle;
        var level;

        // ketika tombol tambah job title di klik
        $('body').on('click', '.btnAddJobTitle', function() {
            let userId = $(this).data('userid');
            var nama = $(this).data('nama');

            // get dat job title
            $.ajax({
                url: '{{ route('ceme.getJobTitle') }}',
                type: 'POST',
                data: {
                    id: userId
                },
                dataType: 'JSON',
                success: function(response) {
                    var i = 1;
                    response.data.forEach(data => {
                        switch (data.value) {
                            case 1:
                                var levelValue = 'On The Job Trainning (OJT)';
                                break;
                            case 2:
                                var levelValue = 'Temporary Back Up';
                                break;
                            case 3:
                                var levelValue = 'Full Back Up';
                                break;
                            case 4:
                                var levelValue = 'Main Job';
                                break;
                            default:
                                var levelValue = 'Tidak Ada';
                        }
                        var xhtml = '';
                        xhtml += '<tr>'
                        xhtml += '<td>' + i++ + '</td>'
                        xhtml += '<td>' + data.job_title
                            .nama_job_title + '</td>'
                        xhtml += '<td>' + levelValue + '</td>'
                        xhtml +=
                            '<td><a href="javascript:void(0)" class="btn btn-info btnEditJobTitle btn-sm" data-id="' +
                            data.id +
                            '" data-jobtitle="' + data.job_title_id + '" data-level="' + data
                            .value +
                            '">Edit</a> <a href="javascript:void(0)" class="btn btn-danger btnHapusJobTitle btn-sm" data-id="' +
                            data.id + '">Hapus</a> </td>';
                        xhtml += '</tr>';
                        $('.trJob').append(xhtml);
                    });
                }

            })

            getJobTitle();
            getLevel();
            $('#level').empty();
            $('#job_title').empty();
            jobTitle.forEach(jt => {
                $('#job_title').append('<option value=' + jt['id_job_title'] + '>' + jt['nama_job_title'] +
                    '</option>');
            });
            level.forEach(lv => {
                $('#level').append('<option value=' + lv[0] + '>' + lv[1] + ' ' + '(' + lv[3] + ')' +
                    '</option>');
            });
            $('#user_id').val(userId);
            modalTitle.text('Add Job Title to ' + nama);
            modal.modal({
                backdrop: 'static',
                keyboard: false
            }, 'show');
        })


        // ketika form tambah job title di klik
        $('.btnSubmitJobTitle').on('click', function() {
            var formAddJobTitle = $('#formAddJobTitle').serialize();
            $.ajax({
                url: '{{ route('ceme.addJobTitle') }}',
                type: 'POST',
                dataType: 'JSON',
                data: formAddJobTitle,
                success: function(response) {
                    if (response.status == 'success') {
                        Swal.fire({
                            icon: response.status,
                            text: response.message
                        })

                        // kosongin data user job title
                        $('.trJob').text('');
                        var u_id = response.data.user_id;
                        $.ajax({
                            url: '{{ route('ceme.getJobTitle') }}',
                            type: 'POST',
                            data: {
                                id: u_id
                            },
                            dataType: 'JSON',
                            success: function(response) {
                                var i = 1;
                                response.data.forEach(data => {
                                    switch (data.value) {
                                        case 1:
                                            var levelValue =
                                                'On The Job Trainning (OJT)';
                                            break;
                                        case 2:
                                            var levelValue = 'Temporary Back Up';
                                            break;
                                        case 3:
                                            var levelValue = 'Full Back Up';
                                            break;
                                        case 4:
                                            var levelValue = 'Main Job';
                                            break;
                                        default:
                                            var levelValue = 'Tidak Ada';
                                    }
                                    var xhtml = '';
                                    xhtml += '<tr>'
                                    xhtml += '<td>' + i++ + '</td>'
                                    xhtml += '<td>' + data.job_title
                                        .nama_job_title + '</td>'
                                    xhtml += '<td>' + levelValue + '</td>'
                                    xhtml +=
                                        '<td><a href="javascript:void(0)" class="btn btn-info btnEditJobTitle btn-sm" data-id="' +
                                        data.id +
                                        '" data-jobtitle="' + data.job_title_id +
                                        '" data-level="' + data.value +
                                        '">Edit</a> <a href="javascript:void(0)" class="btn btn-danger btnHapusJobTitle btn-sm" data-id="' +
                                        data.id + '">Hapus</a> </td>'
                                    xhtml += '</tr>'
                                    $('.trJob').append(xhtml);
                                });
                            }

                        })
                    } else {
                        Swal.fire(
                            'Error',
                            response.message,
                            response.status
                        )
                    }
                }
            })
        })
        // ketika tombol hapus job title ditekan
        $('body').on('click', '.btnHapusJobTitle', function() {
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    var id = $(this).data('id');
                    $.ajax({
                        url: '{{ route('ceme.deleteJobTitle') }}',
                        type: 'POST',
                        dataType: 'JSON',
                        data: {
                            id
                        },
                        success: function(response) {
                            Swal.fire({
                                icon: response.status,
                                text: response.message
                            })
                            // kosongin data user job title
                            $('.trJob').text('');
                            var u_id = response.data.user_id;
                            $.ajax({
                                url: '{{ route('ceme.getJobTitle') }}',
                                type: 'POST',
                                data: {
                                    id: u_id
                                },
                                dataType: 'JSON',
                                success: function(response) {
                                    var i = 1;
                                    response.data.forEach(data => {
                                        switch (data.value) {
                                            case 1:
                                                var levelValue =
                                                    'On The Job Trainning (OJT)';
                                                break;
                                            case 2:
                                                var levelValue =
                                                    'Temporary Back Up';
                                                break;
                                            case 3:
                                                var levelValue =
                                                    'Full Back Up';
                                                break;
                                            case 4:
                                                var levelValue = 'Main Job';
                                                break;
                                            default:
                                                var levelValue =
                                                    'Tidak Ada';
                                        }
                                        var xhtml = '';
                                        xhtml += '<tr>'
                                        xhtml += '<td>' + i++ + '</td>'
                                        xhtml += '<td>' + data.job_title
                                            .nama_job_title + '</td>'
                                        xhtml += '<td>' + levelValue +
                                            '</td>'
                                        xhtml +=
                                            '<td><a href="javascript:void(0)" class="btn btn-info btnEditJobTitle btn-sm" data-id="' +
                                            data.id +
                                            '" data-jobtitle="' + data
                                            .job_title_id +
                                            '" data-level="' + data.value +
                                            '">Edit</a> <a href="javascript:void(0)" class="btn btn-danger btnHapusJobTitle btn-sm" data-id="' +
                                            data.id + '">Hapus</a> </td>'
                                        xhtml += '</tr>'
                                        $('.trJob').append(xhtml);
                                    });
                                }

                            })
                        }
                    })
                }
            })

        })
        // ketika tombol edit job title ditekan
        $('body').on('click', '.btnEditJobTitle', function() {
            var id = $(this).data('id');
            var jobt = $(this).data('jobtitle');
            var value = $(this).data('level');
            $('#formUpdateJobTitle #id').val(id);
            $('#level_edit').empty();
            $('#job_title_edit').empty();
            jobTitle.forEach(jt => {
                if (jobt == jt.id_job_title) {
                    $('#job_title_edit').append('<option selected value=' + jt.id_job_title + '>' + jt
                        .nama_job_title +
                        '</option>');
                } else {
                    $('#job_title_edit').append('<option value=' + jt.id_job_title + '>' + jt[
                            'nama_job_title'] +
                        '</option>');
                }
            });
            level.forEach(lv => {
                if (value == lv[0]) {
                    $('#level_edit').append('<option selected value=' + lv[0] + '>' + lv[1] + ' ' + '(' +
                        lv[3] + ')' +
                        '</option>');
                } else {
                    $('#level_edit').append('<option value=' + lv[0] + '>' + lv[1] + ' ' + '(' + lv[3] +
                        ')' +
                        '</option>');
                }

            });
            var modalEdit = $('#modalEditJobTitle');
            $('#modalEditJobTitle .modal-title').text('Edit Job Title');
            modalEdit.modal('show');
        })

        // update job title
        $('.btnUpdateJobTitle').on('click', function() {
            var formUpdateJobTitle = $('#formUpdateJobTitle');
            var id = $('#formUpdateJobTitle #id').val();
            $.ajax({
                url: '{{ route('ceme.addJobTitle') }}',
                type: 'POST',
                dataType: 'JSON',
                data: formUpdateJobTitle.serialize(),
                success: function(response) {
                    if (response.status == 'success') {
                        Swal.fire({
                            icon: response.status,
                            text: response.message
                        })

                        $('#modalEditJobTitle').modal('hide');
                        // kosongin data user job title
                        $('.trJob').text('');
                        var u_id = response.data.user_id;
                        $.ajax({
                            url: '{{ route('ceme.getJobTitle') }}',
                            type: 'POST',
                            data: {
                                id: u_id
                            },
                            dataType: 'JSON',
                            success: function(response) {
                                var i = 1;
                                response.data.forEach(data => {
                                    switch (data.value) {
                                        case 1:
                                            var levelValue =
                                                'On The Job Trainning (OJT)';
                                            break;
                                        case 2:
                                            var levelValue =
                                                'Temporary Back Up';
                                            break;
                                        case 3:
                                            var levelValue =
                                                'Full Back Up';
                                            break;
                                        case 4:
                                            var levelValue = 'Main Job';
                                            break;
                                        default:
                                            var levelValue =
                                                'Tidak Ada';
                                    }
                                    var xhtml = '';
                                    xhtml += '<tr>'
                                    xhtml += '<td>' + i++ + '</td>'
                                    xhtml += '<td>' + data.job_title
                                        .nama_job_title + '</td>'
                                    xhtml += '<td>' + levelValue +
                                        '</td>'
                                    xhtml +=
                                        '<td><a href="javascript:void(0)" class="btn btn-info btnEditJobTitle btn-sm" data-id="' +
                                        data.id +
                                        '" data-jobtitle="' + data
                                        .job_title_id +
                                        '" data-level="' + data.value +
                                        '">Edit</a> <a href="javascript:void(0)" class="btn btn-danger btnHapusJobTitle btn-sm" data-id="' +
                                        data.id + '">Hapus</a> </td>'
                                    xhtml += '</tr>'
                                    $('.trJob').append(xhtml);
                                });
                            }

                        })
                    } else {
                        Swal.fire(
                            'Error',
                            response.message,
                            response.status
                        )
                    }
                }
            })
        })

        // ketika modal tertutup
        modal.on('hidden.bs.modal', function() {
            var xhtml = '';
            // xhtml += '<tr>';
            // xhtml += '<td colspan="4" class="text-center">Not Found</td>';
            // xhtml += '</tr>';
            $('.trJob').text('');
            // $('.trJob').append(xhtml);
        })

        $('#modalEditJobTitle').on('hidden.bs.modal', function() {

        })


        function getJobTitle() {
            $.ajax({
                url: '{{ route('jabatan.get') }}',
                type: 'GET',
                dataType: 'JSON',
                async: false,
                success: function(response) {
                    jobTitle = response;
                }
            })
        }

        function getLevel() {
            level = [
                [
                    '1',
                    'On The Job Trainning (OJT)',
                    'black',
                    ''
                ],
                [
                    '2',
                    'Temporary Back Up',
                    'pink',
                    '50% - 75% by Average Competent Employee'
                ],
                [
                    '3',
                    'Full Back Up',
                    'yellow',
                    '75% - 100% by Average Competent Employee'
                ],
                [
                    '4',
                    'Main Job',
                    'green',
                    '100% by Average Competent Employee'
                ]
            ];
        }

        $('.btnAll').on('click', function() {
            var dtJson = $('#table-ceme').DataTable({
                ajax: "{{ route('ceme.json.all') }}",
                autoWidth: false,
                serverSide: true,
                processing: true,
                aaSorting: [
                    [0, "desc"]
                ],
                searching: true,
                dom: '<"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
                displayLength: 10,
                lengthMenu: [10, 15, 20],
                language: {
                    paginate: {
                        // remove previous & next text from pagination
                        previous: '&nbsp;',
                        next: '&nbsp;'
                    }
                },
                scrollX: true,
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'nama_pengguna'
                    },
                    {
                        data: 'nama_job_title'
                    },
                    {
                        data: 'nama_department'
                    },
                    {
                        data: 'nama_divisi'
                    },
                    {
                        data: 'nama_cg'
                    },
                    {
                        data: 'action'
                    }
                ],
            })
        })

        var meData = {
                datasets: [{
                data: [50, 30],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                }],

                labels: [
                'Windy Adriani Kacaribu',
                'Maria Kurniati Gedi Raya',
                ]
            };

            var doughnutPieData = {
                datasets: [{
                data: [85.50, 83.35],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                }],

                // These labels appear in the legend and in the tooltips when hovering different arcs
                labels: [
                'Windy Adriani Kacaribu',
                'Maria Kurniati Gedi Raya',

                ]
            };
            var doughnutPieOptions = {
                responsive: true,
                animation: {
                animateScale: true,
                animateRotate: true
                }
            };

        if ($("#pieChart").length) {
            var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
            var pieChart = new Chart(pieChartCanvas, {
            type: 'pie',
            data: doughnutPieData,
            options: doughnutPieOptions
            });
        }

        if ($("#pieChart2").length) {
            var pieChartCanvas = $("#pieChart2").get(0).getContext("2d");
            var pieChart = new Chart(pieChartCanvas, {
            type: 'pie',
            data: meData,
            options: doughnutPieOptions
            });
        }
    </script>
@endpush
