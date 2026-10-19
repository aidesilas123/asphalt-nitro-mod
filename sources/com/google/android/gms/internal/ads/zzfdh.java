package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfdh implements zzeoc {
    private final Context zza;
    private final Executor zzb;
    private final zzciq zzc;
    private final zzfcx zzd;
    private final zzfbl zze;
    private final zzfei zzf;
    private final zzfkk zzg;
    private final zzfeo zzh;
    private h0 zzi;

    public zzfdh(Context context, Executor executor, zzciq zzciqVar, zzfbl zzfblVar, zzfcx zzfcxVar, zzfeo zzfeoVar, zzfei zzfeiVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzciqVar;
        this.zze = zzfblVar;
        this.zzd = zzfcxVar;
        this.zzh = zzfeoVar;
        this.zzf = zzfeiVar;
        this.zzg = zzciqVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdqc zzk(zzfbj zzfbjVar) {
        zzdqc zzdqcVarZzi = this.zzc.zzi();
        zzcxp zzcxpVar = new zzcxp();
        zzcxpVar.zze(this.zza);
        zzcxpVar.zzi(((zzfdg) zzfbjVar).zza);
        zzcxpVar.zzh(this.zzf);
        zzdqcVarZzi.zzd(zzcxpVar.zzj());
        zzdqcVarZzi.zzc(new zzddw().zzn());
        return zzdqcVarZzi;
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zza() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    @Override // com.google.android.gms.internal.ads.zzeoc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl r10, java.lang.String r11, com.google.android.gms.internal.ads.zzeoa r12, com.google.android.gms.internal.ads.zzeob r13) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfdh.zzb(com.google.android.gms.ads.internal.client.zzl, java.lang.String, com.google.android.gms.internal.ads.zzeoa, com.google.android.gms.internal.ads.zzeob):boolean");
    }

    final /* synthetic */ void zzi() {
        this.zzd.zzbG(zzffr.zzd(6, null, null));
    }

    final void zzj(int i) {
        this.zzh.zzo().zza(i);
    }
}
