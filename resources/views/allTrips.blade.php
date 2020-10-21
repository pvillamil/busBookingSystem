
@extends('layouts.app')

@section('content')

<!DOCTYPE html>
<html>
<head>
	<title>All Trips</title>

	

</head>
<body>

	<div class="container">

			<h2>All Trips</h2>

			<table class="table">

				<tr>
					<th>#</th>
					<th>From</th>
					<th>To</th>
					<th>Action</th>
				</tr>

				<tbody>
						@foreach($trips as $trip)

						<tr>
							<td>{{$trip->id}}</td>
							<td>{{$trip->startStation->stationName}}</td>
							<td>{{$trip->endStation->stationName}}</td>
							<td><a href="{{route('tripBooking', ['trip' => $trip->id])}}" class="btn btn-primary">Book Seat</a></td>
						</tr>

						@endforeach

				</tbody>


			</table>

		
	</div>
</body>
</html>
@endsection