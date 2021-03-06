@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>Scheduled Trips</h3></div>

                <div class="panel-body">
                    @if (Auth::check())
                        <table class="table">
                            <tbody>
                            @if (!is_null($trips))
                                <thead>
                                    <tr>
                                        <td>From</td>
                                        <td>To</td>
                                    </tr>
                                </thead>
                                @foreach($trips as $trip)
                                    <tr>
                                        <td>{{$trip->origin}}</td>
                                        <td>{{$trip->destination}}</td>
                                        <td>
                                            <form action="/trip/{{$trip->id}}" method="POST">
                                                <button type="submit" name="remove" class="btn btn-sm btn-danger">REMOVE</button>
                                                {{ csrf_field() }}
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <h3>You have no trips scheduled.</h3>
                            @endif
                            </tbody>
                        </table>
                        @if (!is_null($trips))
                            {{ $trips->links() }}
                        @endif
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
