<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\Admin\Application;
use App\Models\Admin\Country;
use App\Models\Admin\Course;
use App\Models\Admin\University;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;

class StudentDashboardController extends Controller
{
    public function studentDashboard()
    {
        $studentTotalCountries      = Country::count();
        $studentTotalUniversities   = University::count();
        $studentTotalCourses        = Course::count();

        $user = auth()->user();
        $studentTotalApplications = Application::whereHas('student', function ($q) use ($user) {
                $q->where('user_id', $user->id)
                ->orWhere('email', $user->email);
            })->count();

        
        $studentInProgressApplication = Application::where('status', 1)
                        ->whereHas('student', function ($q) use ($user) {
                            $q->where('user_id', $user->id)
                            ->orWhere('email', $user->email);
                        })->count(); 

        $studentAppliedApplication = Application::where('status', 3)
                        ->whereHas('student', function ($q) use ($user) {
                            $q->where('user_id', $user->id)
                            ->orWhere('email', $user->email);
                        })->count(); 

        $studentTotalVisaGranted = Application::where('status', 10)
                        ->whereHas('student', function ($q) use ($user) {
                            $q->where('user_id', $user->id)
                            ->orWhere('email', $user->email);
                        })->count(); 

        $studentTotalVisaRejected  =  Application::where('status', 12)
                        ->whereHas('student', function ($q) use ($user) {
                            $q->where('user_id', $user->id)
                            ->orWhere('email', $user->email);
                        })->count(); 

        return view('dashboard.student-dashboard',compact('studentTotalCountries','studentTotalUniversities','studentTotalCourses',
       'studentTotalApplications','studentInProgressApplication','studentAppliedApplication','studentTotalVisaGranted','studentTotalVisaRejected'));
    }
}
