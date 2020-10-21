
$(document).ready(function() {

	$(".startStation, .endStation").change(function() {

			const tripId        = $(".tripId").val();

			const end_station_id = $(".endStation").val();

			const start_station_id = $(".startStation").val();

			const availableEndStations = $(".startStation option[value='" +start_station_id+ "']").nextAll();

			if($(this).attr("class").indexOf("startStation") != -1) {

			const firstOpt = $(".endStation option:first");

			const lastOpt  = $(".endStation option:last");

			$(".endStation").html("");

			$(".endStation").append(firstOpt);

			for(option of availableEndStations) {


				$(option).clone().appendTo($(".endStation"));
			}

			$(".endStation").append(lastOpt);

			}



			if(end_station_id != "" && start_station_id != "") {

				$.ajax({

					url: "/checkAvailableSeats/" + tripId,

					data: {
						'start_station_id': start_station_id,
						'end_station_id': end_station_id
					},

					success: function(data) {


						var jsonData = JSON.parse(data);

						var availableSeats = jsonData["availableSeats"];


						if(availableSeats.length > 0) {

						var addedHtmlPart = "<label>Select Seat Number</label> ";

						 addedHtmlPart += "<select name='seat_id' class='form-control'> ";

						for(seatNumber of availableSeats) {

							addedHtmlPart += "<option value=" + seatNumber + "> " +seatNumber+ "</option>";
						}

						addedHtmlPart += " </select>";

						$(".availableSeats").html(addedHtmlPart);

					    } else {

					 	$(".availableSeats").html("<h3 class='btn btn-danger'>There is no available seats</h3>");
					 	
					 	$(".submitBtn").attr("disabled", "disabled");
					 }

				
					}
				});
			}

	});
});