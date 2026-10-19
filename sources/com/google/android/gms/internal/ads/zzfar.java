package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfar implements zzfbl {
    private final zzfbl zza;
    private final zzfbl zzb;
    private final zzfgz zzc;
    private final String zzd;
    private zzcxo zze;
    private final Executor zzf;

    public zzfar(zzfbl zzfblVar, zzfbl zzfblVar2, zzfgz zzfgzVar, String str, Executor executor) {
        this.zza = zzfblVar;
        this.zzb = zzfblVar2;
        this.zzc = zzfgzVar;
        this.zzd = str;
        this.zzf = executor;
    }

    private final h0 zzg(zzfgm zzfgmVar, zzfbm zzfbmVar) {
        zzcxo zzcxoVar = zzfgmVar.zza;
        this.zze = zzcxoVar;
        if (zzfgmVar.zzc != null) {
            if (zzcxoVar.zzf() != null) {
                zzfgmVar.zzc.zzo().zzl(zzfgmVar.zza.zzf());
            }
            return zzgbb.zzh(zzfgmVar.zzc);
        }
        zzcxoVar.zzb().zzl(zzfgmVar.zzb);
        return ((zzfbb) this.zza).zzb(zzfbmVar, null, zzfgmVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcxo zzd() {
        return this.zze;
    }

    final /* synthetic */ h0 zzb(zzfbm zzfbmVar, zzfaq zzfaqVar, zzfbk zzfbkVar, zzcxo zzcxoVar, zzfaw zzfawVar) throws Exception {
        if (zzfawVar != null) {
            zzfaq zzfaqVar2 = new zzfaq(zzfaqVar.zza, zzfaqVar.zzb, zzfaqVar.zzc, zzfaqVar.zzd, zzfaqVar.zze, zzfaqVar.zzf, zzfawVar.zza);
            if (zzfawVar.zzc != null) {
                this.zze = null;
                this.zzc.zze(zzfaqVar2);
                return zzg(zzfawVar.zzc, zzfbmVar);
            }
            h0 h0VarZza = this.zzc.zza(zzfaqVar2);
            if (h0VarZza != null) {
                this.zze = null;
                return zzgbb.zzn(h0VarZza, new zzgai() { // from class: com.google.android.gms.internal.ads.zzfan
                    @Override // com.google.android.gms.internal.ads.zzgai
                    public final h0 zza(Object obj) {
                        return this.zza.zze((zzfgw) obj);
                    }
                }, this.zzf);
            }
            this.zzc.zze(zzfaqVar2);
            zzfbmVar = new zzfbm(zzfbmVar.zzb, zzfawVar.zzb);
        }
        h0 h0VarZzb = ((zzfbb) this.zza).zzb(zzfbmVar, zzfbkVar, zzcxoVar);
        this.zze = zzcxoVar;
        return h0VarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    public final /* bridge */ /* synthetic */ h0 zzc(zzfbm zzfbmVar, zzfbk zzfbkVar, Object obj) {
        return zzf(zzfbmVar, zzfbkVar, null);
    }

    final /* synthetic */ h0 zze(zzfgw zzfgwVar) throws Exception {
        zzfgy zzfgyVar;
        if (zzfgwVar == null || zzfgwVar.zza == null || (zzfgyVar = zzfgwVar.zzb) == null) {
            throw new zzdxn(1, "Empty prefetch");
        }
        zzaze zzazeVarZza = zzazk.zza();
        zzazc zzazcVarZza = zzazd.zza();
        zzazcVarZza.zzd(2);
        zzazcVarZza.zzb(zzazh.zzd());
        zzazeVarZza.zza(zzazcVarZza);
        zzfgwVar.zza.zza.zzb().zzc().zzm((zzazk) zzazeVarZza.zzal());
        return zzg(zzfgwVar.zza, ((zzfaq) zzfgyVar).zzb);
    }

    public final synchronized h0 zzf(final zzfbm zzfbmVar, final zzfbk zzfbkVar, zzcxo zzcxoVar) {
        zzcxn zzcxnVarZza = zzfbkVar.zza(zzfbmVar.zzb);
        zzcxnVarZza.zza(new zzfas(this.zzd));
        final zzcxo zzcxoVar2 = (zzcxo) zzcxnVarZza.zzh();
        zzcxoVar2.zzg();
        zzcxoVar2.zzg();
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzcxoVar2.zzg().zzd;
        if (zzlVar.zzs == null && zzlVar.zzx == null) {
            zzfeq zzfeqVarZzg = zzcxoVar2.zzg();
            final zzfaq zzfaqVar = new zzfaq(zzfbkVar, zzfbmVar, zzfeqVarZzg.zzd, zzfeqVarZzg.zzf, this.zzf, zzfeqVarZzg.zzj, null);
            return zzgbb.zzn(zzgas.zzu(((zzfax) this.zzb).zzb(zzfbmVar, zzfbkVar, zzcxoVar2)), new zzgai() { // from class: com.google.android.gms.internal.ads.zzfao
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zzb(zzfbmVar, zzfaqVar, zzfbkVar, zzcxoVar2, (zzfaw) obj);
                }
            }, this.zzf);
        }
        this.zze = zzcxoVar2;
        return ((zzfbb) this.zza).zzb(zzfbmVar, zzfbkVar, zzcxoVar2);
    }
}
