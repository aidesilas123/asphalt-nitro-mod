package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzql {
    public final zzam zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final zzdv zzi;
    public final boolean zzj = false;
    public final boolean zzk = false;
    public final boolean zzl = false;

    public zzql(zzam zzamVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, zzdv zzdvVar, boolean z, boolean z2, boolean z3) {
        this.zza = zzamVar;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzdvVar;
    }

    public final AudioTrack zza(zzk zzkVar, int i) throws zzpr {
        AudioTrack audioTrack;
        try {
            int i2 = zzfs.zza;
            if (i2 >= 29) {
                audioTrack = new AudioTrack.Builder().setAudioAttributes(zzkVar.zza().zza).setAudioFormat(zzfs.zzv(this.zze, this.zzf, this.zzg)).setTransferMode(1).setBufferSizeInBytes(this.zzh).setSessionId(i).setOffloadedPlayback(this.zzc == 1).build();
            } else if (i2 >= 21) {
                audioTrack = new AudioTrack(zzkVar.zza().zza, zzfs.zzv(this.zze, this.zzf, this.zzg), this.zzh, 1, i);
            } else {
                int i3 = zzkVar.zzc;
                audioTrack = i == 0 ? new AudioTrack(3, this.zze, this.zzf, this.zzg, this.zzh, 1) : new AudioTrack(3, this.zze, this.zzf, this.zzg, this.zzh, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new zzpr(state, this.zze, this.zzf, this.zzh, this.zza, zzc(), null);
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new zzpr(0, this.zze, this.zzf, this.zzh, this.zza, zzc(), e2);
        }
    }

    public final zzpp zzb() {
        boolean z = this.zzc == 1;
        return new zzpp(this.zzg, this.zze, this.zzf, false, z, this.zzh);
    }

    public final boolean zzc() {
        return this.zzc == 1;
    }
}
