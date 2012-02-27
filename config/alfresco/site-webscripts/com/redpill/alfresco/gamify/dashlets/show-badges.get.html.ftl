<#-- Uncomment to use a client-side JavaScript component in conjunction with the dashlet -->
<#--
<script type="text/javascript">//<![CDATA[
   new MyCompany.dashlet.HelloWorld("${args.htmlid}").setOptions(
   {
      "key": "value"
   }).setMessages(${messages});
   new Alfresco.widget.DashletResizer("${args.htmlid}", "${instance.object.id}");
//]]></script>
-->
<#-- Uncomment to support resizing on this dashlet - must also enable the #if block below -->
<#--
<script type="text/javascript">//<![CDATA[
   new Alfresco.widget.DashletResizer("${args.htmlid}", "${instance.object.id}");
//]]></script>
-->


<!-- below is the actual code -->

<div class="dashlet">
   <div class="title">${msg("header")}</div>
   <div class="body scrollableList"<#-- if args.height??> style="height: ${args.height}px;"</#if -->>
     <div class="detail-list-item first-item last-item">
	     <span>${msg("label.recently_unlocked_badges_by", user.firstName)}</span>
     </div>
     <div class="detail-list-item first-item last-item" valign="top">
       <#list achievements as badge>
	     <span class="badge ${badge}" onclick="alert('${msg("label." + badge + ".description")}')">
	     	${msg("label." + badge + ".title")}
	     </span>
	   	</#list>
	   	     
     </div>
   </div>
</div>