package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Random;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzop implements zzot {
    public static final zzfuo zza = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzon
        @Override // com.google.android.gms.internal.ads.zzfuo
        public final Object zza() {
            return zzop.zzn();
        }
    };
    private static final Random zzb = new Random();
    private final zzcz zzc;
    private final zzcx zzd;
    private final HashMap zze;
    private final zzfuo zzf;
    private zzos zzg;
    private zzda zzh;

    @Nullable
    private String zzi;
    private long zzj;

    public zzop() {
        throw null;
    }

    public zzop(zzfuo zzfuoVar) {
        this.zzf = zzfuoVar;
        this.zzc = new zzcz();
        this.zzd = new zzcx();
        this.zze = new HashMap();
        this.zzh = zzda.zza;
        this.zzj = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzl() {
        zzoo zzooVar = (zzoo) this.zze.get(this.zzi);
        return (zzooVar == null || zzooVar.zzd == -1) ? this.zzj + 1 : zzooVar.zzd;
    }

    private final zzoo zzm(int i, @Nullable zzuk zzukVar) {
        long j = Long.MAX_VALUE;
        zzoo zzooVar = null;
        for (zzoo zzooVar2 : this.zze.values()) {
            zzooVar2.zzg(i, zzukVar);
            if (zzooVar2.zzj(i, zzukVar)) {
                long j2 = zzooVar2.zzd;
                if (j2 == -1 || j2 < j) {
                    zzooVar = zzooVar2;
                    j = j2;
                } else if (j2 == j) {
                    int i2 = zzfs.zza;
                    if (zzooVar.zze != null && zzooVar2.zze != null) {
                        zzooVar = zzooVar2;
                    }
                }
            }
        }
        if (zzooVar != null) {
            return zzooVar;
        }
        String strZzn = zzn();
        zzoo zzooVar3 = new zzoo(this, strZzn, i, zzukVar);
        this.zze.put(strZzn, zzooVar3);
        return zzooVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zzoo zzooVar) {
        if (zzooVar.zzd != -1) {
            this.zzj = zzooVar.zzd;
        }
        this.zzi = null;
    }

    private final void zzp(zzmk zzmkVar) {
        if (zzmkVar.zzb.zzo()) {
            String str = this.zzi;
            if (str != null) {
                zzoo zzooVar = (zzoo) this.zze.get(str);
                Objects.requireNonNull(zzooVar);
                zzo(zzooVar);
                return;
            }
            return;
        }
        zzoo zzooVar2 = (zzoo) this.zze.get(this.zzi);
        zzoo zzooVarZzm = zzm(zzmkVar.zzc, zzmkVar.zzd);
        this.zzi = zzooVarZzm.zzb;
        zzi(zzmkVar);
        zzuk zzukVar = zzmkVar.zzd;
        if (zzukVar == null || !zzukVar.zzb()) {
            return;
        }
        if (zzooVar2 != null) {
            if (zzooVar2.zzd == zzukVar.zzd && zzooVar2.zze != null && zzooVar2.zze.zzb == zzmkVar.zzd.zzb && zzooVar2.zze.zzc == zzmkVar.zzd.zzc) {
                return;
            }
        }
        zzuk zzukVar2 = zzmkVar.zzd;
        String unused = zzm(zzmkVar.zzc, new zzuk(zzukVar2.zza, zzukVar2.zzd)).zzb;
        String unused2 = zzooVarZzm.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    @Nullable
    public final synchronized String zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final synchronized String zzf(zzda zzdaVar, zzuk zzukVar) {
        return zzm(zzdaVar.zzn(zzukVar.zza, this.zzd).zzd, zzukVar).zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final synchronized void zzg(zzmk zzmkVar) {
        zzos zzosVar;
        String str = this.zzi;
        if (str != null) {
            zzoo zzooVar = (zzoo) this.zze.get(str);
            Objects.requireNonNull(zzooVar);
            zzo(zzooVar);
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoo zzooVar2 = (zzoo) it.next();
            it.remove();
            if (zzooVar2.zzf && (zzosVar = this.zzg) != null) {
                zzosVar.zzd(zzmkVar, zzooVar2.zzb, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final void zzh(zzos zzosVar) {
        this.zzg = zzosVar;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final synchronized void zzi(zzmk zzmkVar) {
        zzoo zzooVar;
        Objects.requireNonNull(this.zzg);
        if (!zzmkVar.zzb.zzo()) {
            zzuk zzukVar = zzmkVar.zzd;
            if (zzukVar != null) {
                if (zzukVar.zzd >= zzl() && ((zzooVar = (zzoo) this.zze.get(this.zzi)) == null || zzooVar.zzd != -1 || zzooVar.zzc == zzmkVar.zzc)) {
                }
            }
            zzoo zzooVarZzm = zzm(zzmkVar.zzc, zzmkVar.zzd);
            if (this.zzi == null) {
                this.zzi = zzooVarZzm.zzb;
            }
            zzuk zzukVar2 = zzmkVar.zzd;
            if (zzukVar2 != null && zzukVar2.zzb()) {
                zzoo zzooVarZzm2 = zzm(zzmkVar.zzc, new zzuk(zzukVar2.zza, zzukVar2.zzd, zzukVar2.zzb));
                if (!zzooVarZzm2.zzf) {
                    zzooVarZzm2.zzf = true;
                    zzmkVar.zzb.zzn(zzmkVar.zzd.zza, this.zzd);
                    this.zzd.zzi(zzmkVar.zzd.zzb);
                    Math.max(0L, zzfs.zzt(0L) + zzfs.zzt(0L));
                    String unused = zzooVarZzm2.zzb;
                }
            }
            if (!zzooVarZzm.zzf) {
                zzooVarZzm.zzf = true;
                String unused2 = zzooVarZzm.zzb;
            }
            if (zzooVarZzm.zzb.equals(this.zzi) && !zzooVarZzm.zzg) {
                zzooVarZzm.zzg = true;
                this.zzg.zzc(zzmkVar, zzooVarZzm.zzb);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final synchronized void zzj(zzmk zzmkVar, int i) {
        Objects.requireNonNull(this.zzg);
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoo zzooVar = (zzoo) it.next();
            if (zzooVar.zzk(zzmkVar)) {
                it.remove();
                if (zzooVar.zzf) {
                    boolean zEquals = zzooVar.zzb.equals(this.zzi);
                    boolean z = false;
                    if (i == 0 && zEquals && zzooVar.zzg) {
                        z = true;
                    }
                    if (zEquals) {
                        zzo(zzooVar);
                    }
                    this.zzg.zzd(zzmkVar, zzooVar.zzb, z);
                }
            }
        }
        zzp(zzmkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final synchronized void zzk(zzmk zzmkVar) {
        Objects.requireNonNull(this.zzg);
        zzda zzdaVar = this.zzh;
        this.zzh = zzmkVar.zzb;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoo zzooVar = (zzoo) it.next();
            if (!zzooVar.zzl(zzdaVar, this.zzh) || zzooVar.zzk(zzmkVar)) {
                it.remove();
                if (zzooVar.zzf) {
                    if (zzooVar.zzb.equals(this.zzi)) {
                        zzo(zzooVar);
                    }
                    this.zzg.zzd(zzmkVar, zzooVar.zzb, false);
                }
            }
        }
        zzp(zzmkVar);
    }
}
