package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzezc implements zzeoc {
    protected final zzciq zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzezs zzd;
    private final zzfbl zze;
    private final zzcbt zzf;
    private final ViewGroup zzg;
    private final zzfkk zzh;
    private final zzfeo zzi;
    private h0 zzj;

    protected zzezc(Context context, Executor executor, zzciq zzciqVar, zzfbl zzfblVar, zzezs zzezsVar, zzfeo zzfeoVar, zzcbt zzcbtVar) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzciqVar;
        this.zze = zzfblVar;
        this.zzd = zzezsVar;
        this.zzi = zzfeoVar;
        this.zzf = zzcbtVar;
        this.zzg = new FrameLayout(context);
        this.zzh = zzciqVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzcxn zzm(zzfbj zzfbjVar) {
        zzezb zzezbVar = (zzezb) zzfbjVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhZ)).booleanValue()) {
            zzcrm zzcrmVar = new zzcrm(this.zzg);
            zzcxp zzcxpVar = new zzcxp();
            zzcxpVar.zze(this.zzb);
            zzcxpVar.zzi(zzezbVar.zza);
            zzcxr zzcxrVarZzj = zzcxpVar.zzj();
            zzddw zzddwVar = new zzddw();
            zzddwVar.zzc(this.zzd, this.zzc);
            zzddwVar.zzl(this.zzd, this.zzc);
            return zze(zzcrmVar, zzcxrVarZzj, zzddwVar.zzn());
        }
        zzezs zzezsVarZzi = zzezs.zzi(this.zzd);
        zzddw zzddwVar2 = new zzddw();
        zzddwVar2.zzb(zzezsVarZzi, this.zzc);
        zzddwVar2.zzg(zzezsVarZzi, this.zzc);
        zzddwVar2.zzh(zzezsVarZzi, this.zzc);
        zzddwVar2.zzi(zzezsVarZzi, this.zzc);
        zzddwVar2.zzc(zzezsVarZzi, this.zzc);
        zzddwVar2.zzl(zzezsVarZzi, this.zzc);
        zzddwVar2.zzm(zzezsVarZzi);
        zzcrm zzcrmVar2 = new zzcrm(this.zzg);
        zzcxp zzcxpVar2 = new zzcxp();
        zzcxpVar2.zze(this.zzb);
        zzcxpVar2.zzi(zzezbVar.zza);
        return zze(zzcrmVar2, zzcxpVar2.zzj(), zzddwVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzeoc
    public final boolean zza() {
        h0 h0Var = this.zzj;
        return (h0Var == null || h0Var.isDone()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // com.google.android.gms.internal.ads.zzeoc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean zzb(com.google.android.gms.ads.internal.client.zzl r8, java.lang.String r9, com.google.android.gms.internal.ads.zzeoa r10, com.google.android.gms.internal.ads.zzeob r11) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzezc.zzb(com.google.android.gms.ads.internal.client.zzl, java.lang.String, com.google.android.gms.internal.ads.zzeoa, com.google.android.gms.internal.ads.zzeob):boolean");
    }

    protected abstract zzcxn zze(zzcrm zzcrmVar, zzcxr zzcxrVar, zzddy zzddyVar);

    final /* synthetic */ void zzk() {
        this.zzd.zzbG(zzffr.zzd(6, null, null));
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.zzi.zzt(zzwVar);
    }
}
