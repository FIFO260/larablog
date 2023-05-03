@extends("layouts.app")

@section("content")
<!-- Page Header-->
<header class="masthead" style="background-image: url('/assets/img/posts/{{ $post->id }}.jpg')">
    <div class="container position-relative px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">
                <div class="post-heading">
                    <h1>{{ $post->title }}</h1>
                    <h2 class="subheading">{{ $post->excerpt }}</h2>
                    <span class="meta">
                        Posted by
                        <a href="#!">{{ $post->user->name }}</a>
                        on {{ date('d.m.Y h:i:s', strtotime($post->created_at)); }}
                    </span>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Post Content-->
<article class="mb-4">
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">
                {!! nl2br(e($post->description)) !!}
            </div>
        </div>
    </div>
</article>
@endsection