package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcki extends zzewn {
    private final zzewb zza;
    private final zzckm zzb;
    private final zzcki zzc = this;
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

    /* synthetic */ zzcki(zzckm zzckmVar, zzewb zzewbVar, zzckh zzckhVar) {
        this.zzb = zzckmVar;
        this.zza = zzewbVar;
        this.zzd = zzhdo.zzc(new zzfki(zzckmVar.zzG));
        zzewj zzewjVar = new zzewj(zzewbVar);
        this.zze = zzewjVar;
        zzhec zzhecVarZzc = zzhdo.zzc(zzdso.zza());
        this.zzf = zzhecVarZzc;
        zzhec zzhecVarZzc2 = zzhdo.zzc(zzdsm.zza());
        this.zzg = zzhecVarZzc2;
        zzhec zzhecVarZzc3 = zzhdo.zzc(zzdsq.zza());
        this.zzh = zzhecVarZzc3;
        zzhec zzhecVarZzc4 = zzhdo.zzc(zzdss.zza());
        this.zzi = zzhecVarZzc4;
        zzhds zzhdsVarZzc = zzhdt.zzc(4);
        zzhdsVarZzc.zzb(zzfio.GMS_SIGNALS, zzhecVarZzc);
        zzhdsVarZzc.zzb(zzfio.BUILD_URL, zzhecVarZzc2);
        zzhdsVarZzc.zzb(zzfio.HTTP, zzhecVarZzc3);
        zzhdsVarZzc.zzb(zzfio.PRE_PROCESS, zzhecVarZzc4);
        zzhdt zzhdtVarZzc = zzhdsVarZzc.zzc();
        this.zzj = zzhdtVarZzc;
        zzhec zzhecVarZzc5 = zzhdo.zzc(new zzdst(zzewjVar, zzckmVar.zzg, zzfhp.zza(), zzhdtVarZzc));
        this.zzk = zzhecVarZzc5;
        zzhdz zzhdzVarZza = zzhea.zza(0, 1);
        zzhdzVarZza.zza(zzhecVarZzc5);
        zzhea zzheaVarZzc = zzhdzVarZza.zzc();
        this.zzl = zzheaVarZzc;
        zzfix zzfixVar = new zzfix(zzheaVarZzc);
        this.zzm = zzfixVar;
        this.zzn = zzhdo.zzc(new zzfiw(zzfhp.zza(), zzckmVar.zzm, zzfixVar));
    }

    @Override // com.google.android.gms.internal.ads.zzewn
    public final zzevb zza() {
        Context contextZza = this.zzb.zza.zza();
        zzhdx.zzb(contextZza);
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        zzcak zzcakVar = new zzcak();
        zzhdx.zzb(zzgblVar);
        zzeuy zzeuyVarZza = zzeyi.zza(new zzexm(zzcakVar, zzgblVar, zzewc.zza(this.zza)), zzeta.zza(), (ScheduledExecutorService) this.zzb.zzm.zzb(), 0);
        zzbtt zzbttVar = new zzbtt();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zzb.zzm.zzb();
        Context contextZza2 = this.zzb.zza.zza();
        zzhdx.zzb(contextZza2);
        zzeuy zzeuyVarZzb = zzeyi.zzb(new zzexw(zzbttVar, scheduledExecutorService, contextZza2), (ScheduledExecutorService) this.zzb.zzm.zzb());
        zzcan zzcanVar = new zzcan();
        Context contextZza3 = this.zzb.zza.zza();
        zzhdx.zzb(contextZza3);
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) this.zzb.zzm.zzb();
        zzhdx.zzb(zzgblVar);
        zzewb zzewbVar = this.zza;
        zzeuy zzeuyVarZza2 = zzeyj.zza(zzevv.zza(zzcanVar, contextZza3, scheduledExecutorService2, zzgblVar, zzewd.zza(zzewbVar), zzewf.zza(zzewbVar), zzewg.zza(zzewbVar)), (ScheduledExecutorService) this.zzb.zzm.zzb());
        zzhdx.zzb(zzgblVar);
        zzeuy zzeuyVarZzc = zzeyi.zzc(new zzeyr(zzgblVar), (ScheduledExecutorService) this.zzb.zzm.zzb());
        zzeyg zzeygVar = zzeyg.zza;
        Context contextZza4 = this.zzb.zza.zza();
        zzhdx.zzb(contextZza4);
        String strZza = zzewc.zza(this.zza);
        zzhdx.zzb(zzgblVar);
        zzewp zzewpVar = new zzewp(null, contextZza4, strZza, zzgblVar);
        zzaye zzayeVar = new zzaye();
        zzhdx.zzb(zzgblVar);
        Context contextZza5 = this.zzb.zza.zza();
        zzhdx.zzb(contextZza5);
        zzbcn zzbcnVar = new zzbcn();
        zzhdx.zzb(zzgblVar);
        zzcan zzcanVar2 = new zzcan();
        zzhdx.zzb(zzgblVar);
        zzewb zzewbVar2 = this.zza;
        zzcan zzcanVar3 = new zzcan();
        zzewb zzewbVar3 = this.zza;
        zzckm zzckmVar = this.zzb;
        int iZza = zzewd.zza(zzewbVar3);
        Context contextZza6 = zzckmVar.zza.zza();
        zzhdx.zzb(contextZza6);
        zzcaw zzcawVar = (zzcaw) this.zzb.zzah.zzb();
        ScheduledExecutorService scheduledExecutorService3 = (ScheduledExecutorService) this.zzb.zzm.zzb();
        zzhdx.zzb(zzgblVar);
        String strZza2 = zzewc.zza(this.zza);
        zzaxs zzaxsVar = new zzaxs();
        zzcaw zzcawVar2 = (zzcaw) this.zzb.zzah.zzb();
        ScheduledExecutorService scheduledExecutorService4 = (ScheduledExecutorService) this.zzb.zzm.zzb();
        zzhdx.zzb(zzgblVar);
        return new zzevb(contextZza, zzgblVar, zzfwz.zzp(zzeuyVarZza, zzeuyVarZzb, zzeuyVarZza2, zzeuyVarZzc, zzeygVar, zzewpVar, new zzexe(zzayeVar, zzgblVar, contextZza5), new zzexq(zzbcnVar, zzgblVar, zzewe.zza(this.zza)), new zzevz(zzcanVar2, zzgblVar, zzewh.zza(zzewbVar2), zzewi.zza(zzewbVar2), zzewd.zza(zzewbVar2)), new zzexa(zzcanVar3, iZza, contextZza6, zzcawVar, scheduledExecutorService3, zzgblVar, zzewc.zza(this.zza)), (zzeuy) this.zzb.zzaK.zzb(), zzeww.zza(strZza2, zzaxsVar, zzcawVar2, scheduledExecutorService4, zzgblVar)), (zzfkh) this.zzd.zzb(), (zzdtp) this.zzb.zzZ.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzewn
    public final zzfiu zzb() {
        return (zzfiu) this.zzn.zzb();
    }
}
