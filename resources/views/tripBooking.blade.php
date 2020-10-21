
@extends('layouts.app')

@section('content')

<!DOCTYPE html>
<html>
<head>
	<title>Book a Trip</title>


	<script type="text/javascript" src="{{asset('js/checkAvailableSeats.js')}}"></script>
</head>
<body>

<div class="container">

		@if(session("status"))

			<h2 class="btn btn-success">{{session('status')}}</h2>
		
		@endif

		@if ($errors->any())
   		 <div class="alert alert-danger">
       	 <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    	</div>
		@endif
		
		<h3>Book A Trip</h3>

		<form method="POST" action="/addBooking">
			@csrf
			<div class="form-group">
			
			<label>Start Station</label>

			<select name="start_station_id" class="form-control startStation">
				<option value="">Select A Station</option>
				@foreach($startStations as $station) 

					<option value="{{$station->id}}">{{$station->stationName}}</option>

				@endforeach
			
			</select>

			</div>

			<div class="form-group">

			<label>End Station</label>

			<select name="end_station_id" class="form-control endStation">
					
					<option name='selectOption' value="">Select A Station</option>

					<option value="{{$endStation->id}}">{{$endStation->stationName}}</option>

			</select>

			</div>

			<div class="form-group availableSeats"></div>

			<div class="form-group">
				
				<input type="submit"  class="form-control btn btn-success submitBtn" value="Book A Trip">
				
			</div>

			<input type="hidden" class="tripId" value="{{$trip->id}}">

		</form>
</div>

</body>
</html>
@endsection