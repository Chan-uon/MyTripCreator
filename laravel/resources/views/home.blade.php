@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>All Available Flights</h3></div>

                <div class="panel-body">
                    @if (Auth::check())
                        <table class="table">
                            <tbody>
                            @if (!is_null($flights))
                                <thead>
                                    <tr>
                                        <td>From</td>
                                        <td>To</td>
                                    </tr>
                                </thead>
                                @foreach($flights as $flight)
                                    <tr>
                                        <td> {{$flight->origin}} </td>
                                        <td> {{$flight->destination}} </td>
                                        <td>
                                            <form action="/home/{{$flight->id}}" method="POST">
                                                <button type="submit" name="add" class="btn btn-sm btn-success">ADD</button>
                                                 {{ csrf_field() }}
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <h3>There are currently no available flights. Please refresh the page.</h3>
                            @endif
                            </tbody>
                        </table>
                        @if (!is_null($flights))
                            {{ $flights->links() }}
                        @endif
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
