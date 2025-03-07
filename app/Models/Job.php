<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    /** @use HasFactory<\Database\Factories\JobFactory> */
    use HasFactory;

    protected $guarded = [];

    public function employer(){
        return $this->belongsTo(Employer::class);
    }
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }

}
