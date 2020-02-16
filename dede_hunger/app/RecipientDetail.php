<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipientDetail extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'subtype_id', 'name', 'location', 'persons'
    ];

    /**
     * Relations
     */

    public function user()
    {
        return $this->belongsTo(App\User::class);
    }
}
