<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    //

    /**
     * Relations
     */

    public function sub_types()
    {
        return $this->hasMany(App\SubType::class);
    }
}
