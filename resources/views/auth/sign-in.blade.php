@extends('layouts.auth-master')
@section('title', 'Studac - Login')
@section('auth-content')
<div class="auth-bg sign-in-bg-img d-flex min-vh-100 justify-content-center align-items-center">
    <div class="row">
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 w-100">
            <div class="card overflow-hidden text-center h-100 p-4 mb-0">
                <a href="{{ url('/') }}" class="auth-brand mb-3">
                    <img src="{{ asset('images/studac-logo.svg') }}" alt="Studac Logo" height="50">
                </a>

                <h3 class="fw-semibold mb-2 text-white">Welcome Back</h3>
                <p class="text-white mb-3">Enter your credentials to access your account</p>

                @if (session('error'))
                    <div class="alert text-danger mb-3" style="text-align: center">
                        {{ session('error') }}
                    </div>
                @endif

                <form action="{{ route('auth_login') }}" method="POST" class="text-start mb-3">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label text-white" for="email">Email</label>
                        <input type="email" id="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Enter your email" value="{{ old('email') }}" required>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-white" for="password">Password</label>
                        <input type="password" id="password" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Enter your password" required>
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="d-grid">
                        <button class="btn studac-btn text-white" type="submit">Sign In</button>
                    </div>
                </form>

                <p class="text-white fs-14 mb-4">Don't have an account? <a href="{{ route('sign_up') }}" class="fw-semibold ms-1">Sign Up</a></p>

                <p class="mt-auto text-white mb-0">
                    <script>document.write(new Date().getFullYear())</script> &copy; <span class="text-gradient fw-bold">Studac</span>
                </p>
            </div>
        </div>
    </div>
</div>
@endsection
