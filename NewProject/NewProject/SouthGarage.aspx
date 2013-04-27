<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SouthGarage.aspx.cs" Inherits="NewProject.SouthGarage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style92 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXBl_V_CRHg1J7s3qX8Iyf0yArGcPVEpg&sensor=false">
    </script>
    <script type="text/javascript">



        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        var map;

        function initialize() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var chicago = new google.maps.LatLng(41.850033, -87.6500523);
            var mapOptions = {
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: chicago
            }
            map = new google.maps.Map(document.getElementById('map'), mapOptions);
            directionsDisplay.setMap(map);
            /*current*/
            if (navigator.geolocation) {

                /*pos contains current Location*/
                navigator.geolocation.getCurrentPosition(function (position) {
                    var pos = new google.maps.LatLng(position.coords.latitude,
                                                     position.coords.longitude);

                    calcRoute(pos);
                }, function () {
                    handleNoGeolocation(true);
                });
            } else {
                // Browser doesn't support Geolocation
                handleNoGeolocation(false);
            }
        }

        function calcRoute(pos1) {
            var start = pos1;

            /*lat and long of South Garragee*/
            var end = new google.maps.LatLng(37.333433, -121.880078);
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.DirectionsTravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
        }

        google.maps.event.addDomListener(window, 'load', initialize);




        </script>

 <h2>South Garage Directions</h2>

    <table>
        <tr>
            
            <td class="auto-style92">
                 <ul>
               
                <li><a id="A2" href="NorthGarage.aspx">Go To North Garage</a></li>
                <li><a id="A3" href="WestGarage.aspx">Go to West Garage</a></li>
                <li><a id="A1" href="SouthGarage.aspx">Go to South Garage</a></li>
                     </ul>
            </td>
            <td>

                 <div id ="map" style="height: 397px; width: 527px; margin-left: 41px;"></div>
            </td>

        </tr>
    </table>
</asp:Content>
