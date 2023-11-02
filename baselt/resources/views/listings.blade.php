
@extends('layout')
@section('content')


@foreach ($listings as $listing)


<a href="/listings/{{$listing['id']}}">ID </a>


<ul class="list-group">
    <li class="list-group-item"> {{$listing['title']}}<br></li>
    <li class="list-group-item">{{$listing['tags']}}</li>
    <li class="list-group-item">{{$listing['description']}}</li>

</ul>




  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>


@endforeach



@endsection


