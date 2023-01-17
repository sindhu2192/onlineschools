<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Trainers - Mentor Bootstrap Template</title>
  <meta name="layout" content="mentor"/>


  </head>

<body>



  <main id="main" data-aos="fade-in">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="container">
        <h2>Trainers</h2>
        <p>Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium. </p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Trainers Section ======= -->
    <section id="trainers" class="trainers">
      <div class="container" data-aos="fade-up">

        <div class="row" data-aos="zoom-in" data-aos-delay="100">

        <g:each in="${mentors}">




       <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="member">
                      <img src="${it.user.featuredImage}" class="img-fluid" alt="">
                      <div class="member-content">
                        <h4>${it.user.firstName + " " + it.user.lastName}</h4>
                        <span>Web Development</span>
                        <p>
                          ${it.user.description}
                        </p>
                        <div class="social">
                          <a href=""><i class="bi bi-twitter"></i></a>
                          <a href=""><i class="bi bi-facebook"></i></a>
                          <a href=""><i class="bi bi-instagram"></i></a>
                          <a href=""><i class="bi bi-linkedin"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>

        </g:each>



        </div>

      </div>
    </section><!-- End Trainers Section -->

  </main><!-- End #main -->



</body>

</html>