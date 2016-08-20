function Add() {
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
    $("#btnInsert").bind("click", Insert);
    $(".btnDelete").bind("click", Delete);
};

function Insert() {
    var snombre = $('#TxtNombre').val();
    var sdescripcion = $('#TxtDescripcion').val();

    var actionData = "{'nombre':'" + snombre + "','descripcion':'" + sdescripcion + "'}";

    $.ajax({
        type: "POST",
        url: "WebService.asmx/GetDataAjax",
        data: actionData,
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (msg) { alert(msg.d);},
        error: function (result) {
            alert("ERROR " + result.status + ' ' + result.statusText);
        }
    });
};

function Delete() {
    var table = $('#example').DataTable();
    table
        .row($(this).parents('tr'))
        .remove()
        .draw();
};

function reloadPage() {    
    location.reload();
}