<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet"> -->
    <link rel="stylesheet" href="../allstyle.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header role="banner">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand absolute" href="index.html">&#x7231;&#x5FC3;&#x5BA0;&#x7269;&#x8BCA;&#x6240;</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div align="right">
            <table>
                <form action="../servlet.ClinicServlet?purpose=allclinic" method="post" id="all"></form>
                <form action="clinicAdd.jsp" id="addclinic" method="post"></form>
                <form action="../servlet.ClinicServlet?purpose=selectclinic" method="post">
                    <tr>
                        <td><input class="btn" type="text" name="clinicName" placeholder="name"></td>
                        <td><input class="btn2" type="submit" value="Search"></td>
                        <td><input class="btn2" type="submit" value="ShowAll" form="all"/></td>
                        <td><input class="btn2" type="submit" form="addclinic" value="Add"></td>
                    </tr>
                </form>
            </table>
        </div>
    </nav>
</header>
<!-- END header -->

<section class="home-slider owl-carousel">
    <div class="slider-item" style="background-image: url('img/slider-1.jpg');">

        <div class="container">
            <div class="row slider-text align-items-center justify-content-center">
                <div class="col-md-8 text-center col-sm-12 element-animate">
                    <h1>&#x56E0;&#x4E3A;&#x4E25;&#x8C28; &#x6240;&#x4EE5;&#x5B89;&#x5FC3; </h1>
                    <p class="mb-5">&#x4EE5;&#x4FDD;&#x969C;&#x7231;&#x5BA0;&#x7684;&#x5065;&#x5EB7;&#x4E3A;&#x5B97;&#x65E8;&#xFF0C;&#x91CD;&#x65B0;&#x5B9A;&#x4E49;&#x6BCF;&#x4E2A;&#x5C0F;&#x751F;&#x547D;&#x7684;&#x5C0A;&#x4E25;&#x548C;&#x4EF7;&#x503C;</p>
                </div>
            </div>
        </div>

    </div>

    <div class="slider-item" style="background-image: url('img/slider-2.jpg');">
        <div class="container">
            <div class="row slider-text align-items-center justify-content-center">
                <div class="col-md-8 text-center col-sm-12 element-animate">
                    <h1>&#x56E0;&#x4E3A;&#x4E25;&#x8C28; &#x6240;&#x4EE5;&#x5B89;&#x5FC3;</h1>
                    <p class="mb-5">&#x4EE5;&#x4FDD;&#x969C;&#x7231;&#x5BA0;&#x7684;&#x5065;&#x5EB7;&#x4E3A;&#x5B97;&#x65E8;&#xFF0C;&#x91CD;&#x65B0;&#x5B9A;&#x4E49;&#x6BCF;&#x4E2A;&#x5C0F;&#x751F;&#x547D;&#x7684;&#x5C0A;&#x4E25;&#x548C;&#x4EF7;&#x503C;</p>
                </div>
            </div>
        </div>

    </div>

</section>
<!-- END slider -->

<section class="section element-animate">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-4"></div>
            <div class="col-md-8 section-heading">
                <h2>&#x5173;&#x4E8E;&#x6211;&#x4EEC;</h2>
                <p class="small-sub-heading">ABOUT US</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <img src="img/dog_1.jpg" alt="Image placeholder" class="img-fluid">
            </div>
            <div class="col-md-4">
                <p>&#x957F;&#x671F;&#x81F4;&#x529B;&#x4E8E;&#x63A8;&#x52A8;&#x4E2D;&#x56FD;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x4E8B;&#x4E1A;&#x53D1;&#x5C55;&#xFF0C;&#x672C;&#x7740;&#x201C;&#x56E0;&#x4E3A;&#x4E25;&#x8C28;&#x3001;&#x6240;&#x4EE5;&#x5B89;&#x5FC3;&#x201D;&#x7684;&#x5B97;&#x65E8;&#x4EE5;&#x201C;&#x5BB6;&#x4EBA;&#x201D;&#x822C;&#x7684;&#x5475;&#x62A4;&#xFF0C;&#x5C06;&#x670D;&#x52A1;&#x505A;&#x5230;&#x8D34;&#x5FC3;&#x4E0E;&#x4E13;&#x4E1A;&#xFF0C;&#x4E3A;&#x7231;&#x5BA0;&#x63D0;&#x4F9B;&#x4EBA;&#x6027;&#x5316;&#x3001;&#x9AD8;&#x54C1;&#x8D28;&#x7684;&#x5065;&#x5EB7;&#x670D;&#x52A1;&#x4F53;&#x9A8C;</p>
                <p>&#x7231;&#x5FC3;&#x5BA0;&#x7269;&#x533B;&#x9662;&#x62E5;&#x6709;&#x56FD;&#x9645;&#x5148;&#x8FDB;&#x7684;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x7BA1;&#x7406;&#x4F53;&#x7CFB;&#xFF0C;&#x7528;&#x6807;&#x51C6;&#x5316;&#x7684;&#x8BCA;&#x7597;&#x6D41;&#x7A0B;&#x4FDD;&#x8BC1;&#x5BA2;&#x6237;&#x4F18;&#x8D8A;&#x7684;&#x5C31;&#x8BCA;&#x4F53;&#x9A8C;&#xFF0C;&#x5BA0;&#x7269;&#x8BCA;&#x7597;&#x79D1;&#x5BA4;&#x9F50;&#x5168;&#x3001;&#x529F;&#x80FD;&#x5B8C;&#x5584;&#xFF0C;&#x7EFC;&#x5408;&#x5B9E;&#x529B;&#x5148;&#x8FDB;&#x3002;&#x8BBE;&#x6709;&#x72EC;&#x7ACB;&#x732B;&#x4E13;&#x79D1;&#xFF0C;&#x62E5;&#x6709;24&#x5C0F;&#x65F6;&#x6025;&#x8BCA;&#x670D;&#x52A1;&#xFF0C;&#x5728;&#x5168;&#x56FD;&#x591A;&#x5730;&#x8BBE;&#x6709;&#x4E2D;&#x5FC3;&#x8F6C;&#x8BCA;&#x533B;&#x9662;&#xFF0C;&#x6253;&#x9020;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x884C;&#x4E1A;&#x5185;&#x7684;&#x8F6C;&#x8BCA;&#x4E2D;&#x5FC3;&#x3001;&#x4EBA;&#x624D;&#x57F9;&#x8BAD;&#x4E2D;&#x5FC3;&#x3001;&#x57CE;&#x5E02;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x670D;&#x52A1;&#x6807;&#x6746;</p>
            </div>
            <div class="col-md-4">
                <p>&#x4E1A;&#x52A1;&#x6DB5;&#x76D6;&#xFF1A;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x4FDD;&#x5065;&#x3001;&#x5B9E;&#x9A8C;&#x5BA4;&#x8BCA;&#x65AD;&#x3001;&#x5BA0;&#x7269;&#x7F8E;&#x5BB9;&#x9020;&#x578B;&#x3001;&#x5BA0;&#x7269;&#x5546;&#x54C1;&#x8D38;&#x6613;&#x3001;&#x5BA0;&#x7269;&#x4F9B;&#x5E94;&#x94FE;&#x3001;&#x5BA0;&#x7269;&#x533B;&#x7597;&#x5668;&#x68B0;&#x3001;&#x8FDC;&#x7A0B;&#x4E92;&#x8054;&#x7F51;&#x8BCA;&#x65AD;&#x3001;&#x533B;&#x7597;&#x4FE1;&#x606F;&#x5316;&#x5E73;&#x53F0;&#x5EFA;&#x8BBE;&#x3001;&#x517D;&#x533B;&#x7EE7;&#x7EED;&#x6559;&#x80B2;&#x3001;&#x5BA0;&#x7269;&#x7F8E;&#x5BB9;&#x5B66;&#x6821;&#x3001;</p>
                <p><a href="#">Learn More <span class="ion-ios-arrow-right"></span></a></p>
            </div>
        </div>
    </div>
</section>

<section class="section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 element-animate">
            <div class="col-md-8 text-center">
                <h2 class=" heading mb-4">&#x5BA2;&#x6237;&#x8BA4;&#x53EF;</h2>
                <p class="mb-5 lead">&#x56E0;&#x4E3A;&#x653E;&#x5FC3;&#xFF0C;&#x6240;&#x4EE5;&#x5B89;&#x5FC3;&#xFF0C;&#x81F4;&#x529B;&#x6253;&#x9020;&#x7528;&#x6237;&#x653E;&#x5FC3;&#x7684;&#x7231;&#x5FC3;&#x5BA0;&#x7269;&#x8BCA;&#x6240;</p>
            </div>
        </div>
        <div class="row element-animate">
            <div class="major-caousel js-carousel-1 owl-carousel">
                <div>
                    <div class="media d-block media-custom text-center">
                        <a href="adoption-single.html"><img src="img/person_1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                        <div class="media-body">
                            <h3 class="mt-0 text-black">Mellisa Howard</h3>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="media d-block media-custom text-center">
                        <a href="adoption-single.html"><img src="img/person_2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                        <div class="media-body">
                            <h3 class="mt-0 text-black">Mike Richardson</h3>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="media d-block media-custom text-center">
                        <a href="adoption-single.html"><img src="img/person_3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                        <div class="media-body">
                            <h3 class="mt-0 text-black">Charles White</h3>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="media d-block media-custom text-center">
                        <a href="adoption-single.html"><img src="img/person_4.jpg" alt="Image Placeholder" class="img-fluid"></a>
                        <div class="media-body">
                            <h3 class="mt-0 text-black">Laura Smith</h3>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END slider -->
        </div>
    </div>
</section>
<!-- END section -->

<section class="section border-t">
    <div class="container">
        <div class="row justify-content-center mb-5 element-animate">
            <div class="col-md-8 text-center">
                <h2 class=" heading mb-4">&#x5EB7;&#x590D;&#x6545;&#x4E8B;</h2>
                <p class="mb-5 lead">&#x6BCF;&#x5E74;&#x4E3A;&#x8D85;&#x8FC7;180&#x4E07;&#x53EA;&#x5BA0;&#x7269;&#x63D0;&#x4F9B;&#x533B;&#x7597;&#x670D;&#x52A1;&#xFF0C;&#x5EB7;&#x590D;&#x75C5;&#x4F8B;&#x8FBE;400&#x4E07;+&#xFF0C;&#x63A5;&#x8BCA;&#x6CBB;&#x6108;&#x7387;&#x975E;&#x5E38;&#x9AD8;</p>
            </div>
        </div>

        <div class="row no-gutters">
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>German Shepherd</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_1.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>Labrador</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_2.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>Bulldog</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_3.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>Rottweiler</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_4.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>Beagle</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_5.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
            <div class="col-md-4 element-animate">
                <a href="single.html" class="link-thumbnail">
                    <h3>Golden Retriever</h3>
                    <span class="ion-plus icon"></span>
                    <img src="img/dog_6.jpg" alt="Image placeholder" class="img-fluid">
                </a>
            </div>
        </div>

    </div>
</section>
<!-- END section -->

<section class="section blog">
    <div class="container">

        <div class="row justify-content-center mb-5 element-animate">
            <div class="col-md-8 text-center">
                <h2 class=" heading mb-4">&#x6700;&#x65B0;&#x52A8;&#x6001;</h2>
                <p class="mb-5 lead">&#x4E86;&#x89E3;&#x8BCA;&#x6240;&#x52A8;&#x6001;&#xFF0C;&#x83B7;&#x53D6;&#x7231;&#x5BA0;&#x673A;&#x5BC6;</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <div class="media mb-4 d-md-flex d-block element-animate">
                    <a href="#" class="mr-5"><img src="img/blog_1.jpg" alt="Placeholder image" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="post-meta">Feb 26th, 2022</span>
                        <h3 class="mt-2 text-black"><a href="#">&#x72D7;&#x72D7;&#x5EB7;&#x590D;&#x8BAD;&#x7EC3;</a></h3>
                        <p>&#x72D7;&#x72D7;&#x5728;&#x77EB;&#x6B63;&#x56FA;&#x5B9A;&#x4E4B;&#x540E;&#xFF0C;&#x8FD9;&#x90E8;&#x5206;&#x7684;&#x5EB7;&#x590D;&#x8BAD;&#x7EC3;&#x5341;&#x5206;&#x91CD;&#x8981;&#xFF0C;&#x5B83;&#x80FD;&#x591F;&#x6D88;&#x9664;&#x80BF;&#x80C0;&#xFF0C;&#x9632;&#x6B62;&#x5173;&#x8282;&#x9ECF;&#x8FDE;&#x3001;&#x50F5;&#x786C;&#xFF0C;&#x4E5F;&#x80FD;&#x591F;&#x4FC3;&#x8FDB;&#x9AA8;&#x9ABC;&#x6108;&#x5408;&#xFF0C;&#x9632;&#x6B62;&#x72D7;&#x72D7;&#x808C;&#x8089;&#x840E;&#x7F29;&#x3002;</p>
                        <p><a href="#" class="btn btn-primary btn-sm">Read more</a></p>
                    </div>
                </div>



            </div>
            <div class="col-md-6">
                <div class="media mb-4 d-md-flex d-block element-animate">
                    <a href="#" class="mr-5"><img src="img/blog_2.jpg" alt="Placeholder image" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="post-meta">Feb 26th, 2022</span>
                        <h3 class="mt-2 text-black"><a href="#">&#x5BFB;&#x627E;&#x7231;&#x5BA0;&#x559C;&#x6B22;&#x7684;&#x4E8B;&#x7269;</a></h3>
                        <p><a href="#" class="btn btn-primary btn-sm">Read more</a></p>
                    </div>
                </div>

                <div class="media mb-4 d-md-flex d-block element-animate">
                    <a href="#" class="mr-5"><img src="img/blog_3.jpg" alt="Placeholder image" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="post-meta">Feb 26th, 2022</span>
                        <h3 class="mt-2 text-black"><a href="#">&#x5BA0;&#x7269;&#x5BF9;&#x4E3B;&#x4EBA;&#x7684;&#x611F;&#x60C5;</a></h3>
                        <p><a href="#" class="btn btn-primary btn-sm">Read more</a></p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>



<!-- loader -->
<div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/main.js"></script>
</body>