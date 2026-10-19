package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzevz implements zzeuy {
    private final Executor zza;
    private final String zzb;

    @Nullable
    private final PackageInfo zzc;
    private final zzcan zzd;

    public zzevz(zzcan zzcanVar, Executor executor, String str, @Nullable PackageInfo packageInfo, int i) {
        this.zzd = zzcanVar;
        this.zza = executor;
        this.zzb = str;
        this.zzc = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return zzgbb.zzf(zzgbb.zzm(zzgbb.zzh(this.zzb), new zzftn() { // from class: com.google.android.gms.internal.ads.zzevx
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return new zzewa((String) obj);
            }
        }, this.zza), Throwable.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzevy
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc((Throwable) obj);
            }
        }, this.zza);
    }

    final /* synthetic */ h0 zzc(Throwable th) throws Exception {
        return zzgbb.zzh(new zzewa(this.zzb));
    }
}
