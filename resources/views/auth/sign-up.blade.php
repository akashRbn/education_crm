@extends('layouts.auth-master')
@section('title', 'Studac - Sign Up')
@section('auth-content')
<div class="auth-bg sign-up-bg-img d-flex min-vh-100 justify-content-center align-items-center">
    <div class="row">
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 w-100">
            <div class="card overflow-hidden text-center h-100 p-4 mb-0">
                <a href="{{ url('/') }}" class="auth-brand mb-3">
                    <img src="{{ asset('images/studac-logo.svg') }}" alt="Studac Logo" height="50">
                </a>

                <h3 class="fw-semibold text-white mb-2">Create Account</h3>
                <p class="text-white mb-3">Join Studac and start your journey</p>

                <form action="{{ route('save_sign_up') }}" class="text-start mb-3" method="POST">
                    @csrf
                    <div class="row">
                        <div class="mb-2 col-md-6">
                            <label class="form-label text-white" for="first-name">First Name <span class="text-danger">*</span></label>
                            <input type="text" id="first-name" name="first_name" class="form-control @error('first_name') is-invalid @enderror" placeholder="First name" value="{{ old('first_name') }}" required>
                            @error('first_name')
                                <span class="invalid-feedback" role="alert">
                                    <span class="fw-medium">{{ $message }}</span>
                                </span>
                            @enderror
                        </div>

                        <div class="mb-2 col-md-6">
                            <label class="form-label text-white" for="last-name">Last Name <span class="text-danger">*</span></label>
                            <input type="text" id="last-name" name="last_name" class="form-control @error('last_name') is-invalid @enderror" placeholder="Last name" value="{{ old('last_name') }}" required>
                            @error('last_name')
                                <span class="invalid-feedback" role="alert">
                                    <span class="fw-medium">{{ $message }}</span>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-2">
                        <label class="form-label text-white" for="phone">Phone <span class="text-danger">*</span></label>
                        <input type="tel" id="phone" name="phone" class="form-control @error('phone') is-invalid @enderror" placeholder="Phone with country code" value="{{ old('phone') }}" required>
                        @error('phone')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="mb-2">
                        <label class="form-label text-white" for="user-type">Account Type <span class="text-danger">*</span></label>
                        <select id="user-type" name="user_type" class="form-control @error('user_type') is-invalid @enderror" required>
                            <option value="">-- Select Account Type --</option>
                            <option value="2" {{ old('user_type') == '2' ? 'selected' : '' }}>Agent</option>
                            <option value="3" {{ old('user_type') == '3' ? 'selected' : '' }}>Student</option>
                        </select>
                        @error('user_type')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="mb-2" id="organization-div" style="display: none;">
                        <label class="form-label text-white" for="organization-name">Organization Name</label>
                        <input type="text" id="organization" name="organization_name" class="form-control" placeholder="Your organization name" value="{{ old('organization_name') }}">
                    </div>

                    <div class="mb-2">
                        <label class="form-label text-white" for="email">Email <span class="text-danger">*</span></label>
                        <input type="email" id="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Your email address" value="{{ old('email') }}" required>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-white" for="password">Password <span class="text-danger">*</span></label>
                        <input type="password" id="password" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Create a password" required>
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <span class="fw-medium">{{ $message }}</span>
                            </span>
                        @enderror
                    </div>

                    <div class="d-grid">
                        <button class="btn studac-btn text-white" type="submit">Create Account</button>
                    </div>
                </form>

                <p class="text-white fs-14 mb-4">Already have an account? <a href="{{ route('sign_in') }}" class="fw-semibold ms-1">Sign In</a></p>

                <p class="mt-auto text-white mb-0">
                    <script>document.write(new Date().getFullYear())</script> &copy; <span class="text-gradient fw-bold">Studac</span>
                </p>
            </div>
        </div>
    </div>
</div>
@endsection

@push('page-js')
<script>
    document.getElementById('user-type').addEventListener('change', function() {
        var orgDiv = document.getElementById('organization-div');
        if (this.value == '2') {
            orgDiv.style.display = 'block';
        } else {
            orgDiv.style.display = 'none';
        }
    });

    // Check on page load if agent is selected (for form resubmission)
    if (document.getElementById('user-type').value == '2') {
        document.getElementById('organization-div').style.display = 'block';
    }
</script>
@endpush
