﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div id="example" class="k-content">
    <div class="configuration-horizontal">
        <div class="config-section">
            <span class="configHead">Toggle state</span>
            <ul class="options">
                <li>
                    <button class="k-button" id="enableProgressBar">Enable</button>
                    <button class="k-button" id="disableProgressBar">Disable</button>
                </li>
            </ul>
        </div>
        <div class="config-section">
            <span class="configHead">Value</span>
            <ul class="options">
                <li>
                    <input type="text" id="newValue" value="25" class="k-textbox" placeholder="e.g. 23"/>
                    <button class="k-button" id="setProgressBarValue">Set value</button>
                    <button class="k-button" id="getProgressBarValue">Get value</button>
                </li>
            </ul>
        </div>
        <div class="config-section">
            <span class="configHead">Indeterminate</span>
            <ul class="options">
                <li>
                    <button class="k-button" id="setIndeterminate">Set indeterminate</button>
                </li>
            </ul>
        </div>
    </div>
    <div class="demo-section">
        <%= Html.Kendo().ProgressBar()
              .Name("progressBar")
              .Min(0)
              .Max(100)
              .Type(ProgressBarType.Value)
              .Animation(a => a.Duration(400))
        %>
    </div>

    <script>
        $(function () {
            var pb = $("#progressBar").data("kendoProgressBar");

            $("#setProgressBarValue").click(function () {
                pb.value($("#newValue").val());
            });

            $("#getProgressBarValue").click(function () {
                alert("Current ProgressBar value is: " + pb.value());
            });

            $("#setIndeterminate").click(function () {
                pb.value(false);
            });

            $("#enableProgressBar").click(function () {
                pb.enable();
            });

            $("#disableProgressBar").click(function () {
                pb.enable(false);
            });
        });
    </script>

    <style scoped>
        #example .config-section {
            min-width: 160px;
        }

        .configuration-horizontal .k-textbox {
            margin: 0;
            width: 80px;
        }
        .demo-section {
            width: 660px;
            padding: 30px;
            text-align: center;
        }
        .k-button {
            min-width: 80px;
        }
        .configuration-horizontal .options li {
            padding: 3px 0;
        }
    </style>
</div>
</asp:Content>