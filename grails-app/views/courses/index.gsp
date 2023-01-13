<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">


  <title>Courses - Mentor Bootstrap Template</title>
    <meta name="layout" content="mentor"/>
</head>

<body>


  <main id="main" data-aos="fade-in">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="container">
        <h2>Courses</h2>
        <p>Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium. </p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">

      <div class="container" data-aos="fade-up">

      <div class="row" data-aos="zoom-in" data-aos-delay="100">
        <g:each in="${courseList}">
       <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                  <div class="course-item">
                    <img src="${it.featuredImage}"class="img-fluid" alt="...">
                    <div class="course-content">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4>${it.name}</h4>
                        <p class="price">${it.price}</p>
                      </div>

                      <h3><a href="course-details.html">${it.name}</a></h3>
                      <p>${it.description}</p>
                      <div class="trainer d-flex justify-content-between align-items-center">
                        <div class="trainer-profile d-flex align-items-center">
                          <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                          <span>Antonio</span>
                        </div>
                        <div class="trainer-rank d-flex align-items-center">
                          <i class="bx bx-user"></i>&nbsp; ${it.enrollments}
                          &nbsp;&nbsp;
                          <i class="bx bx-heart"></i>&nbsp;  ${it.likes}
                        </div>
                      </div>
                    </div>
                  </div>
                </div> <!-- End Course Item-->
  </g:each>
             </div>

      </div>
    </section><!-- End Courses Section -->

  </main><!-- End #main -->



</body>

</html>