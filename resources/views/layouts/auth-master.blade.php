<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="utf-8" />
    <title>@yield('title', 'Studac')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Studac - Modern Education Agency CRM Platform" name="description" />
    <meta content="Studac" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('images/studac-favicon.svg') }}">

    <!-- Vendor CSS -->
    <link href="{{ asset('back-end/assets/css/vendor.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('back-end/assets/css/app.min.css') }}" rel="stylesheet" type="text/css" id="app-style" />
    <link href="{{ asset('back-end/assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- Auth Studac CSS -->
    <link href="{{ asset('css/auth-studac.css') }}" rel="stylesheet" type="text/css" />

    @stack('page-css')
</head>
<body>
    <div class="auth-wrapper">
        @yield('auth-content')
        @include('sweetalert::alert')
    </div>

    <script src="{{ asset('back-end/assets/js/vendor.min.js') }}"></script>
    <script src="{{ asset('back-end/assets/js/app.js') }}"></script>
    @stack('page-js')
</body>
</html>
