<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Directions.aspx.cs" Inherits="NewProject.WebForm4" %>
<%@ Register assembly="MapControl" namespace="MapControl" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style92 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

     <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXBl_V_CRHg1J7s3qX8Iyf0yArGcPVEpg&sensor=false">
    </script>

<script type="text/javascript">

    var map;

    function initialize() {
        var mapOptions = {
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

        // Try HTML5 geolocation
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = new google.maps.LatLng(position.coords.latitude,
                                                 position.coords.longitude);

                var infowindow = new google.maps.InfoWindow({
                    map: map,
                    position: pos,
                    content: 'You are here!!' 
                });

                map.setCenter(pos);
            }, function () {
                handleNoGeolocation(true);
            });
        } else {
            // Browser doesn't support Geolocation
            handleNoGeolocation(false);
        }
    }
    
    function handleNoGeolocation(errorFlag) {
        if (errorFlag) {
            var content = 'Error: The Geolocation service failed.';
        } else {
            var content = 'Error: Your browser doesn\'t support geolocation.';
        }

        var options = {
            map: map,
            position: new google.maps.LatLng(60, 105),
            content: content
        };

        var infowindow = new google.maps.InfoWindow(options);
        map.setCenter(options.position);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
 
</script>

<h2>Find Your Garage</h2>

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

                 <div id ="map-canvas" style="height: 397px; width: 527px"></div>
            </td>

        </tr>
    </table>

</asp:Content>
