package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfge implements zzfgd {
    private final ConcurrentHashMap zza;
    private final zzfgk zzb;
    private final zzfgg zzc = new zzfgg();

    public zzfge(zzfgk zzfgkVar) {
        this.zza = new ConcurrentHashMap(zzfgkVar.zzd);
        this.zzb = zzfgkVar;
    }

    private final void zzf() {
        Parcelable.Creator<zzfgk> creator = zzfgk.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgr)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzb.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzb());
            int i = 0;
            for (Map.Entry entry : this.zza.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfgn) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((zzfgc) entry.getValue()).zzb(); i2++) {
                    sb.append("[O]");
                }
                for (int iZzb = ((zzfgc) entry.getValue()).zzb(); iZzb < this.zzb.zzd; iZzb++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzfgc) entry.getValue()).zzg());
                sb.append("\n");
            }
            while (i < this.zzb.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzcbn.zze(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgd
    public final zzfgk zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfgd
    @Nullable
    public final synchronized zzfgm zzb(zzfgn zzfgnVar) {
        zzfgm zzfgmVarZze;
        zzfgc zzfgcVar = (zzfgc) this.zza.get(zzfgnVar);
        if (zzfgcVar != null) {
            zzfgmVarZze = zzfgcVar.zze();
            if (zzfgmVarZze == null) {
                this.zzc.zze();
            }
            zzfha zzfhaVarZzf = zzfgcVar.zzf();
            if (zzfgmVarZze != null) {
                zzaze zzazeVarZza = zzazk.zza();
                zzazc zzazcVarZza = zzazd.zza();
                zzazcVarZza.zzd(2);
                zzazg zzazgVarZza = zzazh.zza();
                zzazgVarZza.zza(zzfhaVarZzf.zza);
                zzazgVarZza.zzb(zzfhaVarZzf.zzb);
                zzazcVarZza.zza(zzazgVarZza);
                zzazeVarZza.zza(zzazcVarZza);
                zzfgmVarZze.zza.zzb().zzc().zzi((zzazk) zzazeVarZza.zzal());
            }
            zzf();
        } else {
            this.zzc.zzf();
            zzf();
            zzfgmVarZze = null;
        }
        return zzfgmVarZze;
    }

    @Override // com.google.android.gms.internal.ads.zzfgd
    @Deprecated
    public final zzfgn zzc(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, com.google.android.gms.ads.internal.client.zzw zzwVar) {
        return new zzfgo(zzlVar, str, new zzbwe(this.zzb.zza).zza().zzk, this.zzb.zzf, zzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfgd
    public final synchronized boolean zzd(zzfgn zzfgnVar, zzfgm zzfgmVar) {
        boolean zZzh;
        zzfgc zzfgcVar = (zzfgc) this.zza.get(zzfgnVar);
        zzfgmVar.zzd = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        if (zzfgcVar == null) {
            zzfgk zzfgkVar = this.zzb;
            zzfgc zzfgcVar2 = new zzfgc(zzfgkVar.zzd, zzfgkVar.zze * 1000);
            if (this.zza.size() == this.zzb.zzc) {
                int i = this.zzb.zzg;
                int i2 = i - 1;
                zzfgn zzfgnVar2 = null;
                if (i == 0) {
                    throw null;
                }
                long jZzc = Long.MAX_VALUE;
                if (i2 == 0) {
                    for (Map.Entry entry : this.zza.entrySet()) {
                        if (((zzfgc) entry.getValue()).zzc() < jZzc) {
                            jZzc = ((zzfgc) entry.getValue()).zzc();
                            zzfgnVar2 = (zzfgn) entry.getKey();
                        }
                    }
                    if (zzfgnVar2 != null) {
                        this.zza.remove(zzfgnVar2);
                    }
                } else if (i2 == 1) {
                    for (Map.Entry entry2 : this.zza.entrySet()) {
                        if (((zzfgc) entry2.getValue()).zzd() < jZzc) {
                            jZzc = ((zzfgc) entry2.getValue()).zzd();
                            zzfgnVar2 = (zzfgn) entry2.getKey();
                        }
                    }
                    if (zzfgnVar2 != null) {
                        this.zza.remove(zzfgnVar2);
                    }
                } else if (i2 == 2) {
                    int iZza = Integer.MAX_VALUE;
                    for (Map.Entry entry3 : this.zza.entrySet()) {
                        if (((zzfgc) entry3.getValue()).zza() < iZza) {
                            iZza = ((zzfgc) entry3.getValue()).zza();
                            zzfgnVar2 = (zzfgn) entry3.getKey();
                        }
                    }
                    if (zzfgnVar2 != null) {
                        this.zza.remove(zzfgnVar2);
                    }
                }
                this.zzc.zzg();
            }
            this.zza.put(zzfgnVar, zzfgcVar2);
            this.zzc.zzd();
            zzfgcVar = zzfgcVar2;
        }
        zZzh = zzfgcVar.zzh(zzfgmVar);
        this.zzc.zzc();
        zzfgf zzfgfVarZza = this.zzc.zza();
        zzfha zzfhaVarZzf = zzfgcVar.zzf();
        zzaze zzazeVarZza = zzazk.zza();
        zzazc zzazcVarZza = zzazd.zza();
        zzazcVarZza.zzd(2);
        zzazi zzaziVarZza = zzazj.zza();
        zzaziVarZza.zza(zzfgfVarZza.zza);
        zzaziVarZza.zzb(zzfgfVarZza.zzb);
        zzaziVarZza.zzc(zzfhaVarZzf.zzb);
        zzazcVarZza.zzc(zzaziVarZza);
        zzazeVarZza.zza(zzazcVarZza);
        zzfgmVar.zza.zzb().zzc().zzj((zzazk) zzazeVarZza.zzal());
        zzf();
        return zZzh;
    }

    @Override // com.google.android.gms.internal.ads.zzfgd
    public final synchronized boolean zze(zzfgn zzfgnVar) {
        zzfgc zzfgcVar = (zzfgc) this.zza.get(zzfgnVar);
        if (zzfgcVar != null) {
            return zzfgcVar.zzb() < this.zzb.zzd;
        }
        return true;
    }
}
