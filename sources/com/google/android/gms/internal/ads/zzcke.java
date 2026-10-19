package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcke extends zzewl {
    private final zzexs zza;
    private final zzckm zzb;
    private final zzcke zzc = this;
    private final zzhec zzd;
    private final zzhec zze;
    private final zzhec zzf;
    private final zzhec zzg;
    private final zzhec zzh;
    private final zzhec zzi;
    private final zzhec zzj;
    private final zzhec zzk;
    private final zzhec zzl;
    private final zzhec zzm;
    private final zzhec zzn;

    /* synthetic */ zzcke(zzckm zzckmVar, zzexs zzexsVar, zzckd zzckdVar) {
        this.zzb = zzckmVar;
        this.zza = zzexsVar;
        zzexu zzexuVar = new zzexu(zzexsVar);
        this.zzd = zzexuVar;
        zzhec zzhecVarZzc = zzhdo.zzc(zzdso.zza());
        this.zze = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(zzdsm.zza());
        this.zzf = zzhecVarZzc2;
        zzhec zzhecVarZzc3 = zzhdo.zzc(zzdsq.zza());
        this.zzg = zzhecVarZzc3;
        zzhec zzhecVarZzc4 = zzhdo.zzc(zzdss.zza());
        this.zzh = zzhecVarZzc4;
        zzhds zzhdsVarZzc = zzhdt.zzc(4);
        zzhdsVarZzc.zzb(zzfio.GMS_SIGNALS, zzhecVarZzc);
        zzhdsVarZzc.zzb(zzfio.BUILD_URL, zzhecVarZzc2);
        zzhdsVarZzc.zzb(zzfio.HTTP, zzhecVarZzc3);
        zzhdsVarZzc.zzb(zzfio.PRE_PROCESS, zzhecVarZzc4);
        zzhdt zzhdtVarZzc = zzhdsVarZzc.zzc();
        this.zzi = zzhdtVarZzc;
        zzhec zzhecVarZzc5 = zzhdo.zzc(new zzdst(zzexuVar, zzckmVar.zzg, zzfhp.zza(), zzhdtVarZzc));
        this.zzj = zzhecVarZzc5;
        zzhdz zzhdzVarZza = zzhea.zza(0, 1);
        zzhdzVarZza.zza(zzhecVarZzc5);
        zzhea zzheaVarZzc = zzhdzVarZza.zzc();
        this.zzk = zzheaVarZzc;
        zzfix zzfixVar = new zzfix(zzheaVarZzc);
        this.zzl = zzfixVar;
        this.zzm = zzhdo.zzc(new zzfiw(zzfhp.zza(), zzckmVar.zzm, zzfixVar));
        this.zzn = zzhdo.zzc(new zzfki(zzckmVar.zzG));
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final zzevb zza() {
        Context contextZza = this.zzb.zza.zza();
        zzhdx.zzb(contextZza);
        zzcak zzcakVar = new zzcak();
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        zzexm zzexmVar = new zzexm(zzcakVar, zzgblVar, zzext.zza(this.zza));
        zzhdx.zzb(zzgblVar);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zzb.zzm.zzb();
        zzfkh zzfkhVar = (zzfkh) this.zzn.zzb();
        zzdtp zzdtpVar = (zzdtp) this.zzb.zzZ.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add(new zzetg(zzexmVar, 0L, scheduledExecutorService));
        return new zzevb(contextZza, zzgblVar, hashSet, zzfkhVar, zzdtpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final zzfiu zzb() {
        return (zzfiu) this.zzm.zzb();
    }
}
