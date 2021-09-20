<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StatusCount extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'members', 'countries', 'hotels', 'partners'
    ];

    protected $hidden = [

    ];
    //
}
