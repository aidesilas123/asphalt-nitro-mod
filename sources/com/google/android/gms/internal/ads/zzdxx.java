package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdxx implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;

    public zzdxx(zzhec zzhecVar, zzhec zzhecVar2) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfiu zzfiuVar = (zzfiu) this.zza.zzb();
        final CookieManager cookieManagerZzb = com.google.android.gms.ads.internal.zzt.zzq().zzb((Context) this.zzb.zzb());
        zzfil zzfilVarZzi = zzfie.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = cookieManagerZzb;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaM));
            }
        }, zzfio.WEBVIEW_COOKIE, zzfiuVar).zzi(1L, TimeUnit.SECONDS);
        final zzdxv zzdxvVar = new zzfhx() { // from class: com.google.android.gms.internal.ads.zzdxv
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) {
                return "";
            }
        };
        return zzfilVarZzi.zzc(Exception.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzfif
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh("");
            }
        }).zza();
    }
}
