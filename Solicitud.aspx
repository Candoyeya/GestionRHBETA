﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Solicitud.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <div class="col-md-12">
           <h2 class="titulos jumbotron">Solicitudes</h2>
        </div>
    </div>
<div class="row">
    <div class="table-responsive col-md-10">
     <table id="example" class="display">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Área</th>
                    <th>CPU</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Nombre</th>
                    <th>Área</th>
                    <th>CPU</th>
                    <th>Acciones</th>
                </tr>
            </tfoot>
            <tbody>
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td>
                          <div class="row">
                              <div class="col-md-4">
                                  <button class="btn btn-primary" ><span><i class="fa fa-pencil" aria-hidden="true"></i></span></button>
                              </div>
                              <div class="col-md-4">
                                  <button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button>
                              </div>
                          </div>
                      </td>
                  </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive col-md-2">
        <a class="btn btn-info" href="/Prospecto.aspx"><span><i class="fa fa-plus" aria-hidden="true"></i></span></a>
     </div>
    </div>


<script>
	$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</asp:Content>
