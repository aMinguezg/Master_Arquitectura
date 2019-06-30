$(document).ready(function() {
		$('#tb_viajesIda').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'print' ],
			columnDefs : [ {
				"className" : "dt-center",
				"targets" : "_all"
			} ],
			"order" : [ [ 1, 'asc' ] ],
			language : {

				"searchPlaceholder" : "  ",
				"decimal" : "",
				"emptyTable" : "No hay viajes disponibles",
				"info" : "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
				"infoEmpty" : "Mostrando 0 to 0 of 0 Entradas",
				"infoFiltered" : "(Filtrado de _MAX_ total entradas)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "Mostrar _MENU_ Entradas",
				"loadingRecords" : "Cargando...",
				"processing" : "Procesando...",
				"search" : "Buscar:",
				"zeroRecords" : "Sin resultados encontrados",
				"paginate" : {
					"first" : "Primero",
					"last" : "Ultimo",
					"next" : "Siguiente",
					"previous" : "Anterior"
				}
			}
		});

		$('#tb_viajesVuelta').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'print' ],
			columnDefs : [ {
				"className" : "dt-center",
				"targets" : "_all"
			} ],
			"order" : [ [ 1, 'asc' ] ],
			language : {

				"searchPlaceholder" : "  ",
				"decimal" : "",
				"emptyTable" : "No hay viajes disponibles",
				"info" : "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
				"infoEmpty" : "Mostrando 0 to 0 of 0 Entradas",
				"infoFiltered" : "(Filtrado de _MAX_ total entradas)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "Mostrar _MENU_ Entradas",
				"loadingRecords" : "Cargando...",
				"processing" : "Procesando...",
				"search" : "Buscar:",
				"zeroRecords" : "Sin resultados encontrados",
				"paginate" : {
					"first" : "Primero",
					"last" : "Ultimo",
					"next" : "Siguiente",
					"previous" : "Anterior"
				}
			}
		});
	});