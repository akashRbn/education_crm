{{-- Left sidebar to student --}}
<!-- Brand Logo -->
<a href="{{ route('student_dashboard') }}" class="logo">
    <span class="logo-light">
        <span class="logo-lg">
            <img src="{{ asset('images/studac-logo.svg') }}" style="height: 2rem" alt="Studac Logo">
        </span>
        <span class="logo-sm">
            <img src="{{ asset('images/studac-icon.svg') }}" style="height: 2rem" alt="Studac Icon">
        </span>
    </span>

    <span class="logo-dark">
        <span class="logo-lg"><img src="{{ asset('images/studac-logo.svg') }}" style="height: 2rem"
                alt="Studac Logo"></span>
        <span class="logo-sm"><img src="{{ asset('images/studac-icon.svg') }}" style="height: 2rem"
                alt="Studac Icon"></span>
    </span>
</a>

<!-- Sidebar Hover Menu Toggle Button -->
<button class="button-sm-hover">
    <i class="ti ti-circle align-middle"></i>
</button>

<!-- Full Sidebar Menu Close Button -->
<button class="button-close-fullsidebar">
    <i class="ti ti-x align-middle"></i>
</button>

<div data-simplebar>
    <!--- Sidenav Menu -->
    <ul class="side-nav">

        <li class="side-nav-item">
            <a href="{{ route('student_dashboard') }}" class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-dashboard"></i></span>
                <span class="menu-text">Dashboard</span>
            </a>
        </li>
        <li class="side-nav-item">
            <a href="{{ route('student_country_list') }}" class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-flag-heart"></i></span>
                <span class="menu-text">Countries</span>
            </a>
        </li>
        <li class="side-nav-item">
            <a href="{{ route('student_university_list') }}" class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-map-heart"></i></span>
                <span class="menu-text">University</span>
            </a>
        </li>
        <li class="side-nav-item">
            <a href="{{ route('student_course_list') }}" class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-notebook"></i></span>
                <span class="menu-text">Course</span>
            </a>
        </li>
        <li class="side-nav-item">
            <a data-bs-toggle="collapse" href="#sidebarMyRecord" aria-expanded="false" aria-controls="sidebarMyRecord"
                class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-school"></i></span>
                <span class="menu-text">My Record</span>
                <span class="menu-arrow"></span>
            </a>
            <div class="collapse" id="sidebarMyRecord">
                <ul class="sub-menu">
                    <li class="side-nav-item">
                        <a href="{{ route('edit_my_record', auth()->id()) }}" class="side-nav-link">
                            <span class="menu-text">Add Profile</span>
                        </a>
                    </li>
                    <li class="side-nav-item">
                        <a href="{{ route('my_record_list') }}" class="side-nav-link">
                            <span class="menu-text">Record List</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="side-nav-item">
            <a href="{{ route('student_application_list') }}" class="side-nav-link">
                <span class="menu-icon"><i class="ti ti-brand-appstore"></i></span>
                <span class="menu-text">Appplication</span>
            </a>
        </li>
    </ul>
    <div class="clearfix"></div>
</div>
