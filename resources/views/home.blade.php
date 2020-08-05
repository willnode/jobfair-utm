@extends('layouts.theme')

@section('content')

    <div class="home-hero-section">



        <div class="job-search-bar">

            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1>Temukan pekerjaan terbaik untuk anda</h1>
                        <p class="mt-4 mb-4 job-search-sub-text">Dipersembahkan oleh Pusat Pengembangan Karir Universitas Trunojoyo Madura</p>
                    </div>
                </div>
                @if(get_option('fair_open') == '1')
                <div class="row ">
                    <div class="col-md-12">
                        <form action="{{route('jobs_listing')}}" class="form-inline" method="get">
                            <div class="form-row">
                                <div class="col-auto">
                                    <input type="text" name="q" class="form-control mb-2" style="min-width: 300px;" placeholder="@lang('app.job_title_placeholder')">
                                    <input type="text" name="location" class="form-control" style="min-width: 300px;"  placeholder="@lang('app.job_location_placeholder')">
                                    <button type="submit" class="btn btn-primary mb-2"><i class="la la-search"></i> @lang('app.search') @lang('app.job')</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                @else
                <p><i>Job Fair sedang ditutup</i></p>
                @endif
            </div>

        </div>

    </div>


    @if($categories->count())
        <div class="home-categories-wrap bg-white pb-5 pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="mb-3">@lang('app.browse_category')</h4>
                    </div>
                </div>

                <div class="row">

                    @foreach($categories as $category)
                        <div class="col-md-4">

                            <p>
                                <a href="{{route('jobs_listing', ['category' => $category->id])}}" class="category-link"><i class="la la-th-large"></i> {{$category->category_name}} <span class="text-muted">({{$category->job_count}})</span> </a>
                            </p>

                        </div>

                    @endforeach

                </div>

            </div>
        </div>
    @endif

    <div class="home-categories-wrap pb-5 pt-5">
        <div class="container align-items-center">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <h1>Status Job Fair</h1>
                </div>
                
                <div class="col-md-6">
                    <h2 class="mb-3 {{ get_option('fair_open') == '1' ? 'bg-success' : 'bg-warning'}} p-2">{{ get_option('fair_open') == '1' ? 'Sudah Dibuka' : 'Sedang Ditutup'}}</h2>
                    <h5 class="text-muted">Jangka pembukaan {{ get_option('fair_start') }} s/d {{ get_option('fair_end') }}</h5>
                </div>
            </div>
        </div>
    </div>

    <div class="new-registration-page bg-white pb-5 pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="home-register-account-box">
                        <h4>@lang('app.job_seeker')</h4>
                        <p class="box-icon"><img src="{{asset('assets/images/employee.png')}}" /></p>
                        <p>@lang('app.job_seeker_new_desc')</p>
                        <a href="{{route('register_job_seeker')}}" class="btn btn-primary"><i class="la la-user-plus"></i> @lang('app.register_account') </a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="home-register-account-box">
                        <h4>@lang('app.employer')</h4>
                        <p class="box-icon"><img src="{{asset('assets/images/enterprise.png')}}" /></p>
                        <p>@lang('app.employer_new_desc')</p>
                        <a href="{{route('register_employer')}}" class="btn btn-primary"><i class="la la-user-plus"></i> @lang('app.register_account') </a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="home-register-account-box">
                        <h4>@lang('app.agency')</h4>
                        <p class="box-icon"><img src="{{asset('assets/images/agent.png')}}" /></p>
                        <p>@lang('app.agency_new_desc')</p>
                        <a href="{{route('register_agent')}}" class="btn btn-primary"><i class="la la-user-plus"></i> @lang('app.register_account') </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @if($regular_jobs->count())
        <div class="regular-jobs-wrap pb-5 pt-5">

            <div class="container">
                <div class="regular-job-container p-3">

                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="mb-3">@lang('app.new_jobs')</h4>
                        </div>
                    </div>

                    <div class="row">
                        @foreach($regular_jobs as $regular_job)
                            <div class="col-md-4 mb-3">

                                <div class="row">
                                    <div class="col-md-12">

                                        <p class="job-title m-0">
                                            <a href="{{route('job_view', $regular_job->job_slug)}}">{!! $regular_job->job_title !!}</a>
                                        </p>

                                        <p class="text-muted  m-0">
                                            <i class="la la-map-marker"></i>
                                            @if($regular_job->city_name)
                                                {!! $regular_job->city_name !!},
                                            @endif
                                            @if($regular_job->state_name)
                                                {!! $regular_job->state_name !!},
                                            @endif
                                            @if($regular_job->state_name)
                                                {!! $regular_job->country_name !!}
                                            @endif
                                        </p>

                                    </div>
                                </div>

                            </div>

                        @endforeach

                    </div>


                </div>

            </div>


        </div>
    @endif


    <div class="home-blog-section bg-white pb-5 pt-5">
        <div class="container">

            <div class="row">
                <div class="col-md-12">

                    <div class="pricing-section-heading mb-5 text-center">
                        <h1>Dari Blog Kami</h1>
                        <h5 class="text-muted">Cek update terakhir dari kami.</h5>
                    </div>

                </div>
            </div>


            <div class="row">

                @foreach($blog_posts as $post)

                    <div class="col-md-4">

                        <div class="blog-card-wrap bg-white p-3 mb-4">

                            <div class="blog-card-img mb-4">
                                <img src="{{$post->feature_image_thumb_uri}}" class="card-img" />
                            </div>

                            <h4 class="mb-3">{{$post->title}}</h4>

                            <p class="blog-card-text-preview">{!! limit_words($post->post_content) !!}</p>

                            <a href="{{route('blog_post_single', $post->slug)}}" class="btn btn-primary"> <i class="la la-book"></i> Baca lebih lanjut</a>

                            <div class="blog-card-footer border-top pt-3 mt-3">
                                <span><i class="la la-user"></i> {{$post->author->name}} </span>
                                <span><i class="la la-clock-o"></i> {{$post->created_at->diffForHumans()}} </span>
                                <span><i class="la la-eye"></i> {{$post->views}} </span>
                            </div>
                        </div>


                    </div>

                @endforeach

            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="home-all-blog-posts-btn-wrap text-center my-3">

                        <a href="" class="btn btn-primary btn-lg"><i class="la la-link"></i> @lang('app.all_blog_posts')</a>

                    </div>
                </div>
            </div>


        </div>
    </div>



    <div class="new-registration-page pb-5 pt-5">
        <div class="container">
            <div class="row">

                <div class="col-md-12">

                    <div class="call-to-action-post-job justify-content-center">
                        <div class="job-post-icon my-auto">
                            <img src="{{asset('assets/images/job.png')}}" />
                        </div>
                        <div class="job-post-details mr-3 ml-3 p-3 my-auto">
                            <h1>Publikasikan pekerjaan anda</h1>
                            <p>
                                Rektruter selalu mencari pekerja yang berkualitas. <br /> Publikasikan pekerjaan anda agar diposisikan dengan orang berbakat.
                            </p>
                        </div>

                        <div class="job-post-button my-auto">
                            <a href="{{route('post_new_job')}}" class="btn btn-primary btn-lg">Publikasikan pekerjaan</a>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <div class="job-stats-footer bg-white pb-5 pt-5 text-center">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-muted mb-5">Statistik Website</h2>
                </div>
            </div>


            <div class="row">
                <div class="col-md-3">
                    <h3>{{$counts->usersCount}}</h3>
                    <h5>Pelamar</h5>
                </div>

                <div class="col-md-3">
                    <h3>{{$counts->totalJobs}}</h3>
                    <h5>Pekerjaan</h5>
                </div>
                <div class="col-md-3">
                    <h3>{{$counts->employerCount}}</h3>
                    <h5>Perusahaan</h5>
                </div>
                <div class="col-md-3">
                    <h3>{{$counts->agentCount}}</h3>
                    <h5>Rekruter</h5>
                </div>
            </div>
        </div>
    </div>


@endsection
