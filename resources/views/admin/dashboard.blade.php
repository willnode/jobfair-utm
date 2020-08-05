@extends('layouts.dashboard')


@section('content')

    @if(auth()->user()->is_admin())
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 text-white bg-success">
                    <h4>Pengguna</h4>
                    <h5>{{$usersCount}}</h5>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 bg-light">
                    <h4>Pekerjaan Aktif</h4>
                    <h5>{{$activeJobs}}</h5>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 text-white bg-danger">
                    <h4>Total Pekerjaan</h4>
                    <h5>{{$totalJobs}}</h5>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 text-white bg-dark">
                    <h4>Perusahaan</h4>
                    <h5>{{$employerCount}}</h5>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 text-white bg-info">
                    <h4>Agensi</h4>
                    <h5>{{$agentCount}}</h5>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="p-3 mb-3 text-white bg-primary">
                    <h4>Dilamar</h4>
                    <h5>{{$totalApplicants}}</h5>
                </div>
            </div>
        </div>

    @else

        <div class="row">
            <div class="col-md-12">
                <div class="no data-wrap py-5 my-5 text-center">
                    <h1 class="display-1"><i class="la la-frown-o"></i> </h1>
                    <h1>Tidak ada data disini</h1>
                </div>
            </div>
        </div>
    @endif

@endsection