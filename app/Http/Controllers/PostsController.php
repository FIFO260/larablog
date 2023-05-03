<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        return view('index', [
            'posts' => Post::all()
        ]);
    }

    public function show(int $id)
    {
        return view('post', [
            'post' => Post::find($id)
        ]);
    }
}
