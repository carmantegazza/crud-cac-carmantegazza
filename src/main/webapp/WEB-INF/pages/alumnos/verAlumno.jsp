<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Vista de Alumno ${alumnoAVer.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container">
    <div class="row py-3 align-items-center justify-content-center">
        <div class="card" style="max-width: 600px;">
            <div class="card-header">
                <h4 class="card-title text-center">Ficha de Alumno</h4>
            </div>
             <div class="row p-2">
                <div class="col-4 align-middle">
                 <img src="${alumnoAVer.foto}" class="img-fluid rounded" alt="Foto de Alumno">
                </div>
                <div class="col-8">                    
                    <p class="card-text"><span class="fw-bold">Apellido: </span>${alumnoAVer.apellido}</p>
                    <p class="card-text"><span class="fw-bold">Nombre: </span>${alumnoAVer.nombre}</p>
                    <p class="card-text"><span class="fw-bold">Fecha de Nacimiento: </span>${alumnoAVer.fechaNacimiento}</p>
                    <p class="card-text"><span class="fw-bold">Edad: </span>${alumnoAVer.edad} años</p>
                    <p class="card-text"><span class="fw-bold">Mail: </span>${alumnoAVer.mail}</p>
                </div>
             </div>
            <div class="card-footer">
                <div class="row justify-content-around">
                    <div class="col-auto">
                        <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Volver al listado</a>
                    </div>
                    <div class="col-3">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoAVer.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                    </div>
                    <div class="col-3">
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoAVer.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>