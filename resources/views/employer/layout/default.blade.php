<!DOCTYPE html>
<html>

<head>
  <title></title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/1c2c2462bf.js" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/additional-methods.min.js"></script>

  @extends('header-links')
  <style>
    .form-horizontal {
      width: 320px;
      background-color: #ffffff;
      padding: 25px 38px;
      border-radius: 12px;
      box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.5);
    }

    .control-label {
      text-align: left !important;
      padding-bottom: 4px;
    }

    .progress {
      height: 3px !important;
    }

    .form-group {
      margin-bottom: 10px;
    }

    .show-pass {
      position: absolute;
      top: 5%;
      right: 8%;
    }

    .progress-bar-danger {
      background-color: #e90f10;
    }

    .progress-bar-warning {
      background-color: #ffad00;
    }

    .progress-bar-success {
      background-color: #02b502;
    }

    .login-btn {
      width: 180px !important;
      background-image: linear-gradient(to right, #f6086e, #ff133a) !important;
      font-size: 18px;
      color: #fff;
      margin: 0 auto 5px;
      padding: 8px 0;
    }

    .login-btn:hover {
      background-image: linear-gradient(to right, rgba(255, 0, 111, 0.8), rgba(247, 2, 43, 0.8)) !important;
      color: #fff !important;
    }

    .fa-eye {
      color: #022255;
      cursor: pointer;
    }

    .ex-account p a {
      color: #f6086e;
      text-decoration: underline;
    }

    .fa-circle {
      font-size: 6px;
    }

    .fa-check {
      color: #02b502;
    }
    .error {
          display: block;
          padding-top: 5px;
          font-size: 14px;
          color: red;
        }
  </style>




</head>

<body style="background-color: #fff">
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="{{url('/')}}" class="logo d-flex align-items-center">
        <span style="color:#ef6603;">Heriwork</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="{{url('/')}}">Home</a></li>

          <li class="dropdown"><a href="#"><span>Jobs</span> <i class="bi bi-chevron-down"></i></a>

            <ul>
              <li><a href="#">Post a job</a></li>
              <li><a href="#">My jobs</a></li>

            </ul>
          </li>
          <!-- <li><a class="getstarted scrollto border text-black" style="background-color:#fff;color:#05115d; opacity: 0.9" href="{{url('employer_login')}}">Sign In</a></li>
          <li><a class="getstarted scrollto" href="{{url('signup')}}">Sign Up</a></li> -->

        </ul>


        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

    </div>
  </header>
  <br><br>


  <div class="container">
    @yield('content')
  </div>


  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
  </script>

  {{-- toastr js --}}
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>

</body>



</html>