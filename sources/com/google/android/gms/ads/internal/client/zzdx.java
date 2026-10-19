package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ads.zzcbg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdx {
    private final Date zza;
    private final String zzb;
    private final List zzc;
    private final int zzd;
    private final Set zze;
    private final Bundle zzf;
    private final Map zzg;
    private final String zzh;
    private final String zzi;

    @Nullable
    private final SearchAdRequest zzj;
    private final int zzk;
    private final Set zzl;
    private final Bundle zzm;
    private final Set zzn;
    private final boolean zzo;
    private final String zzp;
    private final int zzq;

    public zzdx(zzdw zzdwVar, @Nullable SearchAdRequest searchAdRequest) {
        this.zza = zzdwVar.zzg;
        this.zzb = zzdwVar.zzh;
        this.zzc = zzdwVar.zzi;
        this.zzd = zzdwVar.zzj;
        this.zze = Collections.unmodifiableSet(zzdwVar.zza);
        this.zzf = zzdwVar.zzb;
        this.zzg = Collections.unmodifiableMap(zzdwVar.zzc);
        this.zzh = zzdwVar.zzk;
        this.zzi = zzdwVar.zzl;
        this.zzj = searchAdRequest;
        this.zzk = zzdwVar.zzm;
        this.zzl = Collections.unmodifiableSet(zzdwVar.zzd);
        this.zzm = zzdwVar.zze;
        this.zzn = Collections.unmodifiableSet(zzdwVar.zzf);
        this.zzo = zzdwVar.zzn;
        this.zzp = zzdwVar.zzo;
        this.zzq = zzdwVar.zzp;
    }

    @Deprecated
    public final int zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zzq;
    }

    public final int zzc() {
        return this.zzk;
    }

    @Nullable
    public final Bundle zzd(Class cls) {
        Bundle bundle = this.zzf.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zze() {
        return this.zzm;
    }

    @Nullable
    public final Bundle zzf(Class cls) {
        return this.zzf.getBundle(cls.getName());
    }

    public final Bundle zzg() {
        return this.zzf;
    }

    @Nullable
    @Deprecated
    public final NetworkExtras zzh(Class cls) {
        return (NetworkExtras) this.zzg.get(cls);
    }

    @Nullable
    public final SearchAdRequest zzi() {
        return this.zzj;
    }

    @Nullable
    public final String zzj() {
        return this.zzp;
    }

    public final String zzk() {
        return this.zzb;
    }

    public final String zzl() {
        return this.zzh;
    }

    public final String zzm() {
        return this.zzi;
    }

    @Deprecated
    public final Date zzn() {
        return this.zza;
    }

    public final List zzo() {
        return new ArrayList(this.zzc);
    }

    public final Set zzp() {
        return this.zzn;
    }

    public final Set zzq() {
        return this.zze;
    }

    @Deprecated
    public final boolean zzr() {
        return this.zzo;
    }

    public final boolean zzs(Context context) {
        RequestConfiguration requestConfigurationZzc = zzej.zzf().zzc();
        zzay.zzb();
        Set set = this.zzl;
        String strZzy = zzcbg.zzy(context);
        return set.contains(strZzy) || requestConfigurationZzc.getTestDeviceIds().contains(strZzy);
    }
}
