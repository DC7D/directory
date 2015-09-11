<div class="industry">
    <script>
        var image = "<%# Eval("pa_companylogo")%>";
        var imageDisplay = "<img src='/Resources/MX/Images/"+image+"' style= 'max-width: 200px; max-height: 107px' /><br><br>";
            if (image == "")
            imageDisplay = ""
        document.write(imageDisplay)
    </script>
    <div class="details">
        <ul>
            <li>
                <h3 class="directory"><%# Eval("name")%></h3>
            </li>        
            <li>
                <%# Eval("address1_line1")%>
            </li>
            <li>
                <%# Eval("address1_city")%>,
                <%# Eval("address1_stateorprovince")%>
                <%# Eval("address1_postalcode")%>
            </li>
        </ul>
        <br/>
        <ul>
            <li><b>Website:</b> <a href="http://<%# Eval("websiteurl").ToString().Replace("http://","")%>" target="_blank">
                    <%# Eval("websiteurl")%></a>
            </li>
            <li>
                <script>
                var PCemail = "<%# Eval("emailaddress1")%>";
                var PCemailDisplay = "<b>Email:</b> <a href='mailto:"+PCemail+"'>"+PCemail+"</a>";
                if (PCemail == "")
                    PCemailDisplay = ""
                document.write(PCemailDisplay)              
                </script>
            </li>
            <li>
                <script>
                var Phone = "<%# Eval("telephone1")%>";
                var PhoneDisplay = "<b>Phone:</b> "+Phone+"";
                if (Phone == "")
                    PhoneDisplay = ""
                document.write(PhoneDisplay)             
                </script>
            </li>
            <li>
                <script>
                var fax = "<%# Eval("fax")%>";
                var faxDisplay = "<b>Fax:</b> "+fax+"";
                if (fax == "")
                    faxDisplay = ""
                document.write(faxDisplay)              
                </script>
            </li>
            <li><b>Primary Contact:</b>
                <%# Eval("a_410707b195544cd984376608b1802904-firstname")%> <%# Eval("a_410707b195544cd984376608b1802904-lastname")%>
            </li>
            <li>
                <script>
                    var Industry = "<%# Eval("industrycode")%>";
                    var IndustryDisplay = "<b>Industry: </b>"+Industry+"";
                    if (Industry == "")
                        IndustryDisplay = ""
                    document.write(IndustryDisplay)              
                </script>
            </li>
        </ul>
    </div>
        <br/>
            <script>
            var About = "<%# Eval("description").ToString().Replace("/","&#47;").Replace("""","&#34;")%>";
            var AboutDisplay = "<b>About Us:</b><br/>"+About+"";
            if (About == "")
                AboutDisplay = ""
            document.write(AboutDisplay)              
            </script>
</div>
<!--End Membership Directory Account Detail Component-->