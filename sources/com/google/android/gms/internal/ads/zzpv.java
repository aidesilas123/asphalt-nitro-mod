package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface zzpv {
    int zza(zzam zzamVar);

    long zzb(boolean z);

    zzcj zzc();

    zzpa zzd(zzam zzamVar);

    void zze(zzam zzamVar, int i, @Nullable int[] iArr) throws zzpq;

    void zzf();

    void zzg();

    void zzh();

    void zzi();

    void zzj() throws zzpu;

    void zzk();

    void zzl(zzk zzkVar);

    void zzm(int i);

    void zzn(zzl zzlVar);

    void zzo(zzeg zzegVar);

    void zzp(zzps zzpsVar);

    @RequiresApi(29)
    void zzq(int i, int i2);

    void zzr(zzcj zzcjVar);

    void zzs(@Nullable zzov zzovVar);

    @RequiresApi(23)
    void zzt(@Nullable AudioDeviceInfo audioDeviceInfo);

    void zzu(boolean z);

    void zzv(float f2);

    boolean zzw(ByteBuffer byteBuffer, long j, int i) throws zzpu, zzpr;

    boolean zzx();

    boolean zzy();

    boolean zzz(zzam zzamVar);
}
