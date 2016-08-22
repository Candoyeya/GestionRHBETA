﻿/*Seccion de Departamento
Ultima actualizacion 19/08/2016*/
function AddDepartamento() {
    $(".gvv tbody").append("<tr>" + "<td></td>" +
                                    "<td><input type='text' Id='TxtNombre' class='in-text'/></td>" +
                                    "<td><input type='text' Id='TxtDescripcion' class='in-text'/></td>" +
                                    "<td><div class='row'>" +
                                        "<div class='col-md-4'>" +
                                            "<button id='btnInsert' class='btn btn-success' class='btnInsert'><i class='fa fa-plus' aria-hidden='true'></i></button>" +
                                        "</div>" +
                                        "<div class='col-md-4'>" +
                                            "<button id='btnDelete' class='btn btn-danger' class='btnDelete'><i class='fa fa-trash' aria-hidden='true'></i></button>" +
                                        "</div>" +
                                    "</div>" +
                                    "</td>" +
                               "</tr>");
    $("#btnInsert").bind("click", InsertDepartamento);
    $(".btnDelete").bind("click", DeleteDepartamento);
};

function InsertDepartamento() {
    var snombre = $('#TxtNombre').val();
    var sdescripcion = $('#TxtDescripcion').val();

    var actionData = "{'nombre':'" + snombre + "','descripcion':'" + sdescripcion + "'}";

    $.ajax({
        type: "POST",
        url: "WebService.asmx/AddDepartamento",
        data: actionData,
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (msg) {
            alert(msg.d);
            ReloadDepa();
        },
        error: function (result) {
            alert("ERROR " + result.status + ' ' + result.statusText);
        }
    });
};

function ReloadDepa() {
    $.ajax({
        type: "POST",
        url: "Departamento.aspx/Recargar",
        data: "{}",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        error: function () {
            alert('Fallo al recargar');
        }
    });
};

function DeleteDepartamento() {
    var table = $('#Departamento').DataTable();
    table
        .row($(this).parents('tr'))
        .remove()
        .draw();
};

/*Seccion de Puesto
Ultima actualizacion 22/08/2016*/
function AddPuesto() {
    var OptionSelect
    $.ajax({
        type: "POST",
        url: "WebService.asmx/SelectDepartamento",
        data: "{}",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (response) {
            $(".gvv tbody").append("<tr>" + "<td></td>" +
                                    "<td><input type='text' Id='TxtNombre' class='in-text'/></td>" +
                                    "<td><select Id='Disponible'><option value='1'>SI</option><option value='0'>NO</option></select></td>" +
                                    //"<td><input type='text' Id='TxtDisponible' class='in-text'/></td>" +
                                    //"<td><input type='text' Id='TxtDepartamento' class='in-text'/></td>" +
                                    "<td><select Id='SelectDepa'>" + response.d + "</select></td>" +
                                    "<td><div class='row'>" +
                                        "<div class='col-md-4'>" +
                                            "<button id='btnInsert' class='btn btn-success' class='btnInsert'><i class='fa fa-plus' aria-hidden='true'></i></button>" +
                                        "</div>" +
                                        "<div class='col-md-4'>" +
                                            "<button id='btnDelete' class='btn btn-danger' class='btnDelete'><i class='fa fa-trash' aria-hidden='true'></i></button>" +
                                        "</div>" +
                                    "</div>" +
                                    "</td>" +
                               "</tr>");
        },
        error: function () {
            alert('Fallo al generar');
        }
    });

        
    $("#btnInsert").bind("click", InsertPuesto);
    $(".btnDelete").bind("click", DeletePuesto);
};

function InsertPuesto() {
    var snombre = $('#TxtNombre').val();
    var sdescripcion = $('#TxtDescripcion').val();

    var actionData = "{'nombre':'" + snombre + "','descripcion':'" + sdescripcion + "'}";

    $.ajax({
        type: "POST",
        url: "WebService.asmx/AddDepartamento",
        data: actionData,
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (msg) {
            alert(msg.d);

        },
        error: function (result) {
            alert("ERROR " + result.status + ' ' + result.statusText);
        }
    });
};

function DeletePuesto() {
    var table = $('#Puesto').DataTable();
    table
        .row($(this).parents('tr'))
        .remove()
        .draw();
};
