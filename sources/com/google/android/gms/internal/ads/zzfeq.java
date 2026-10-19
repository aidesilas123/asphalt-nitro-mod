package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfeq {

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzfl zza;

    @Nullable
    public final zzbmm zzb;

    @Nullable
    public final zzenm zzc;
    public final com.google.android.gms.ads.internal.client.zzl zzd;
    public final com.google.android.gms.ads.internal.client.zzq zze;
    public final String zzf;
    public final ArrayList zzg;
    public final ArrayList zzh;
    public final zzbfw zzi;
    public final com.google.android.gms.ads.internal.client.zzw zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    public final com.google.android.gms.ads.internal.client.zzcb zzn;
    public final zzfed zzo;
    public final boolean zzp;
    public final boolean zzq;

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzcf zzr;

    /* synthetic */ zzfeq(zzfeo zzfeoVar, zzfep zzfepVar) {
        this.zze = zzfeoVar.zzb;
        this.zzf = zzfeoVar.zzc;
        this.zzr = zzfeoVar.zzs;
        int i = zzfeoVar.zza.zza;
        long j = zzfeoVar.zza.zzb;
        Bundle bundle = zzfeoVar.zza.zzc;
        int i2 = zzfeoVar.zza.zzd;
        List list = zzfeoVar.zza.zze;
        boolean z = zzfeoVar.zza.zzf;
        int i3 = zzfeoVar.zza.zzg;
        boolean z2 = true;
        if (!zzfeoVar.zza.zzh && !zzfeoVar.zze) {
            z2 = false;
        }
        this.zzd = new com.google.android.gms.ads.internal.client.zzl(i, j, bundle, i2, list, z, i3, z2, zzfeoVar.zza.zzi, zzfeoVar.zza.zzj, zzfeoVar.zza.zzk, zzfeoVar.zza.zzl, zzfeoVar.zza.zzm, zzfeoVar.zza.zzn, zzfeoVar.zza.zzo, zzfeoVar.zza.zzp, zzfeoVar.zza.zzq, zzfeoVar.zza.zzr, zzfeoVar.zza.zzs, zzfeoVar.zza.zzt, zzfeoVar.zza.zzu, zzfeoVar.zza.zzv, com.google.android.gms.ads.internal.util.zzt.zza(zzfeoVar.zza.zzw), zzfeoVar.zza.zzx, zzfeoVar.zza.zzy);
        this.zza = zzfeoVar.zzd != null ? zzfeoVar.zzd : zzfeoVar.zzh != null ? zzfeoVar.zzh.zzf : null;
        this.zzg = zzfeoVar.zzf;
        this.zzh = zzfeoVar.zzg;
        this.zzi = zzfeoVar.zzf == null ? null : zzfeoVar.zzh == null ? new zzbfw(new NativeAdOptions.Builder().build()) : zzfeoVar.zzh;
        this.zzj = zzfeoVar.zzi;
        this.zzk = zzfeoVar.zzm;
        this.zzl = zzfeoVar.zzj;
        this.zzm = zzfeoVar.zzk;
        this.zzn = zzfeoVar.zzl;
        this.zzb = zzfeoVar.zzn;
        this.zzo = new zzfed(zzfeoVar.zzo, null);
        this.zzp = zzfeoVar.zzp;
        this.zzc = zzfeoVar.zzq;
        this.zzq = zzfeoVar.zzr;
    }

    @Nullable
    public final zzbhz zza() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzm;
        if (publisherAdViewOptions == null && this.zzl == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzb() : this.zzl.zza();
    }

    public final boolean zzb() {
        return this.zzf.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcU));
    }
}
