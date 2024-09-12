@extends('layouts.medilab')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        PENDAFTARAN PASIEN
                    </div>
                    <div class="card-body">
                        <form action="{{ route('registrasipasien.store') }}" method="POST">
                            @method('POST')
                            @csrf
                            <div class="row mb-3">
                                <div class="col-md-6 form-group ">
                                    <label for="nama_pasien">Nama dan Jenis Hewan Peliharaan Anda</label>
                                    <input type="text" name="nama_pasien" class="form-control"
                                        value="{{ old('nama_pasien') }}" autofocus />
                                    <span class="text-danger">{{ $errors->first('nama_pasien') }}</span>
                                </div>
                                <div class="col-md-6 form-group ">
                                    <label for="nomor_hp">Nama dan Nomor HP Pemilik Peliharaan</label>
                                    <input type="text" name="nomor_hp" class="form-control" value="{{ old('nomor_hp') }}"
                                        autofocus />
                                    <span class="text-danger">{{ $errors->first('nomor_hp') }}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="jj">Jenis Kelamin Hewan Peliharaan</label>
                                    <div class="form-check ml-3">
                                        <input type="radio" name="jenis_kelamin" value="Laki-laki"
                                            class="form-check-input" id="lk"
                                            {{ old('jenis_kelamin') == 'Laki-laki' ? 'checked' : '' }}>
                                        <label class="form-check-label" for="lk">
                                            Laki-laki
                                        </label>
                                    </div>
                                    <div class="form-check ml-3">
                                        <input type="radio" name="jenis_kelamin" value="Perempuan"
                                            class="form-check-input" id="pr"
                                            {{ old('jenis_kelamin') == 'Perempuan' ? 'checked' : '' }}>
                                        <label class="form-check-label" for="pr">
                                            Perempuan
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="ss">Sudahkah Peliharaan Anda Vaksin?</label>
                                    <div class="form-check ml-3">
                                        <input type="radio" name="status" value="Sudah Menikah" class="form-check-input"
                                            id="sm" {{ old('status') == 'Sudah Menikah' ? 'checked' : '' }}>
                                        <label class="form-check-label" for="sm">
                                            Sudah 
                                        </label>
                                    </div>
                                    <div class="form-check ml-3">
                                        <input type="radio" name="status" value="Belum Menikah" class="form-check-input"
                                            id="bm" {{ old('status') == 'Belum Menikah' ? 'checked' : '' }}>
                                        <label class="form-check-label" for="bm">
                                            Belum 
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <label for="alamat">Alamat</label>
                                <input type="text" name="alamat" class="form-control">
                                <span class="text-danger">{{ $errors->first('alamat') }}</span>
                            </div>
                            <div class="form-group mt-3">
                                <label for="keluhan">Keluhan </label>
                                <textarea name="keluhan" class="form-control" rows="3">{{ old('keluhan') }}</textarea>
                                <span class="text-danger">{{ $errors->first('keluhan') }}</span>
                            </div>

                            <div class="row mt-3">
                                <div class="col-md-6 form-group">
                                    <label for="tanggal">Rencana Tanggal Berobat</label>
                                    <input id="tanggal" class="form-control" type="date" name="tanggal"
                                        value="{{ date('Y-m-d') }}">
                                    <span class="text-danger">{{ $errors->first('tanggal') }}</span>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="poli_id">Pilih Layanan Tujuan</label>
                                    <select name="poli_id" id="poli_id" class="form-control">
                                        @foreach ($poli as $item)
                                            <option value="{{ $item->id }}" @selected(old('poli_id') == $item->id)>
                                                Layanan {{ $item->nama }} - Biaya
                                                {{ number_format($item->biaya, 0, ',', '.') }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('poli_id') }}</span>
                                </div>
                            </div>



                            <div class="form-group mt-2">
                                <button type="submit" class="btn btn-primary">DAFTAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
