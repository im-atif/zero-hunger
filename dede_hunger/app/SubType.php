<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubType extends Model
{
    /**
     * Relations
     */

    public function type()
    {
        return $this->belongsTo(App\Type::class);
    }
}
