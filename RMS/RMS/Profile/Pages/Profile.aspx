<%@ Page Language="C#" MasterPageFile="/Repository/MasterPage.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="RMS.Profile.Pages.Profile" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <!-- Head -->
    <title>Profile</title>
</asp:Content>


<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Content -->
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card red summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-inbox fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="ISIPublication" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">ISI Publication</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card yellow summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-comments fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="NonISIPublication" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">NonISI Publication</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card green summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-tags fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="book" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Book</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card red summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-inbox fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="patent" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Patent</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card yellow summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-share-alt fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="conference" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Conference</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <a href="#">
                        <div class="card green summary-inline">
                            <div class="card-body">
                                <i class="icon fa fa-share-alt fa-4x"></i>
                                <div class="content">
                                    <div class="title">
                                        <asp:Literal ID="project" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sub-title">Project</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row  no-margin-bottom">
                <div class="col-sm-6 col-xs-12">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card primary">
                                <div class="card-jumbotron no-padding">
                                    <canvas id="jumbotron-line-chart" class="chart no-padding"></canvas>
                                </div>
                                <div class="card-body half-padding">
                                    <h4 class="float-left no-margin font-weight-300">Profits</h4>
                                    <h2 class="float-right no-margin font-weight-300">$3200</h2>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="thumbnail no-margin-bottom">
                                <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/thumbnails/picjumbo.com_IMG_4566.jpg" class="img-responsive">
                                <div class="caption">
                                    <h3 id="thumbnail-label">Thumbnail label<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="thumbnail no-margin-bottom">
                                <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/thumbnails/picjumbo.com_IMG_3241.jpg" class="img-responsive">
                                <div class="caption">
                                    <h3 id="thumbnail-label">Thumbnail label<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a href="#" class="btn btn-success" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="card primary">
                                <div class="card-jumbotron no-padding">
                                    <canvas id="jumbotron-bar-chart" class="chart no-padding"></canvas>
                                </div>
                                <div class="card-body half-padding">
                                    <h4 class="float-left no-margin font-weight-300">Orders</h4>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="card primary">
                                <div class="card-jumbotron no-padding">
                                    <canvas id="jumbotron-line-2-chart" class="chart no-padding"></canvas>
                                </div>
                                <div class="card-body half-padding">
                                    <h4 class="float-left no-margin font-weight-300">Pages view</h4>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-success">
                        <div class="card-header">
                            <div class="card-title">
                                <div class="title"><i class="fa fa-comments-o"></i>Last Message</div>
                            </div>
                            <div class="clear-both"></div>
                        </div>
                        <div class="card-body no-padding">
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div>
                                                <span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span>
                                            </div>
                                            <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div>
                                                <span class="username">Tui2Tone</span> <span class="message-datetime">15 min ago</span>
                                            </div>
                                            <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div>
                                                <span class="username">Tui2Tone</span> <span class="message-datetime">2 hour ago</span>
                                            </div>
                                            <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="http://tui2tone.github.io/flat-admin-bootstrap-templates/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div>
                                                <span class="username">Tui2Tone</span> <span class="message-datetime">1 day ago</span>
                                            </div>
                                            <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#" id="message-load-more">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>load more..
                                            </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span>© 2015 Copyright.
           
        </div>
    </footer>
</asp:Content>
