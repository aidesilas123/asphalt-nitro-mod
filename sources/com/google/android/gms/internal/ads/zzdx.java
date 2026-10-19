package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdx extends Exception {
    public final zzdw zza;

    public zzdx(String str, zzdw zzdwVar) {
        super("Unhandled input format: ".concat(String.valueOf(zzdwVar)));
        this.zza = zzdwVar;
    }
}
