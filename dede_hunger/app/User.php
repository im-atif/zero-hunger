<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name', 'last_name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    /**
     * Relations
     */

    public function profile()
    {
        return $this->belongsTo(App\Profile::class);
    }

    public function recipient()
    {
        return $this->belongsTo(App\RecipientDetail::class);
    }

    public function donor()
    {
        return $this->belongsTo(App\DonorDetail::class);
    }

    public function donations()
    {
        return $this->hasMany(App\Donation::class);
    }

    public function requests()
    {
        return $this->hasMany(App\Request::class);
    }
}
