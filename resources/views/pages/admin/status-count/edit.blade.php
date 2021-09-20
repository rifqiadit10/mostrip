@extends('layouts.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Status Count</h1>
    </div>

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="card shadow">
        <div class="card-body">
            <form action="{{ route('status-count.update', $item->id) }}" method="post">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="members">Members</label>
                    <input type="number" class="form-control" name="members" placeholder="Members"
                        value="{{ $item->members }}">
                </div>
                <div class="form-group">
                    <label for="countries">Countries</label>
                    <input type="number" class="form-control" name="countries" placeholder="Countries"
                        value="{{ $item->countries }}">
                </div>
                <div class="form-group">
                    <label for="hotels">Hotels</label>
                    <input type="number" class="form-control" name="hotels" placeholder="Hotels"
                        value="{{ $item->hotels }}">
                </div>
                <div class="form-group">
                    <label for="partners">Partners</label>
                    <input type="number" class="form-control" name="partners" placeholder="Partners"
                        value="{{ $item->partners }}">
                </div>
                <button type="submit" class="btn btn-primary btn-block">
                    Edit
                </button>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
@endsection