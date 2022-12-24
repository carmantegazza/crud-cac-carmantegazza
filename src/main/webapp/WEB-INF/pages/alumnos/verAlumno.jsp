<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Vista de Alumno ${alumnoAVer.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container">
    <div class="row py-3 align-items-center justify-content-center">
        <div class="card" style="max-width: 540px;">
             <div class="row p-2">
                <div class="col-4">
                 <img src="${alumnoAVer.foto}" class="img-fluid rounded" alt="Foto de Alumno">
                </div>
                <div class="col-8">
                    <div class="card-body">
                        <h5 class="card-title pb-2">Ficha de Alumno</h5>
                        <p class="card-text">Apellido: ${alumnoAVer.apellido}</p>
                        <p class="card-text">Nombre: ${alumnoAVer.nombre}</p>
                        <p class="card-text">Fecha de Nacimiento: ${alumnoAVer.fechaNacimiento}</p>
                        <p class="card-text">Edad: ${alumnoAVer.edad} años</p>
                        <p class="card-text">Mail: ${alumnoAVer.mail}</p>
                    </div>
                </div>
             </div>
            <div class="card-footer">
                <div class="row justify-content-center">
                    <div class="col-3">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumno.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                    </div>
                    <div class="col-3">
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumno.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>