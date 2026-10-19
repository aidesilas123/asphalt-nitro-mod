package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzva extends zztt {
    private static final zzbs zza;
    private final zzum[] zzb;
    private final zzda[] zzc;
    private final ArrayList zzd;
    private final Map zze;
    private final zzfxq zzf;
    private int zzg;
    private long[][] zzh;

    @Nullable
    private zzuz zzi;
    private final zztv zzj;

    static {
        zzau zzauVar = new zzau();
        zzauVar.zza("MergingMediaSource");
        zza = zzauVar.zzc();
    }

    public zzva(boolean z, boolean z2, zzum... zzumVarArr) {
        zztv zztvVar = new zztv();
        this.zzb = zzumVarArr;
        this.zzj = zztvVar;
        this.zzd = new ArrayList(Arrays.asList(zzumVarArr));
        this.zzg = -1;
        this.zzc = new zzda[zzumVarArr.length];
        this.zzh = new long[0][];
        this.zze = new HashMap();
        this.zzf = zzfxy.zzb(8).zzb(2).zza();
    }

    @Override // com.google.android.gms.internal.ads.zztt
    protected final /* bridge */ /* synthetic */ void zzA(Object obj, zzum zzumVar, zzda zzdaVar) {
        int iZzb;
        if (this.zzi != null) {
            return;
        }
        if (this.zzg == -1) {
            iZzb = zzdaVar.zzb();
            this.zzg = iZzb;
        } else {
            int iZzb2 = zzdaVar.zzb();
            int i = this.zzg;
            if (iZzb2 != i) {
                this.zzi = new zzuz(0);
                return;
            }
            iZzb = i;
        }
        if (this.zzh.length == 0) {
            this.zzh = (long[][]) Array.newInstance((Class<?>) long.class, iZzb, this.zzc.length);
        }
        this.zzd.remove(zzumVar);
        this.zzc[((Integer) obj).intValue()] = zzdaVar;
        if (this.zzd.isEmpty()) {
            zzo(this.zzc[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final void zzG(zzui zzuiVar) {
        zzuy zzuyVar = (zzuy) zzuiVar;
        int i = 0;
        while (true) {
            zzum[] zzumVarArr = this.zzb;
            if (i >= zzumVarArr.length) {
                return;
            }
            zzumVarArr[i].zzG(zzuyVar.zzn(i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final zzui zzI(zzuk zzukVar, zzyn zzynVar, long j) {
        zzda[] zzdaVarArr = this.zzc;
        int length = this.zzb.length;
        zzui[] zzuiVarArr = new zzui[length];
        int iZza = zzdaVarArr[0].zza(zzukVar.zza);
        for (int i = 0; i < length; i++) {
            zzuiVarArr[i] = this.zzb[i].zzI(zzukVar.zza(this.zzc[i].zzf(iZza)), zzynVar, j - this.zzh[iZza][i]);
        }
        return new zzuy(this.zzj, this.zzh[iZza], zzuiVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final zzbs zzJ() {
        zzum[] zzumVarArr = this.zzb;
        return zzumVarArr.length > 0 ? zzumVarArr[0].zzJ() : zza;
    }

    @Override // com.google.android.gms.internal.ads.zztt, com.google.android.gms.internal.ads.zztl
    protected final void zzn(@Nullable zzhs zzhsVar) {
        super.zzn(zzhsVar);
        int i = 0;
        while (true) {
            zzum[] zzumVarArr = this.zzb;
            if (i >= zzumVarArr.length) {
                return;
            }
            zzB(Integer.valueOf(i), zzumVarArr[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztt, com.google.android.gms.internal.ads.zztl
    protected final void zzq() {
        super.zzq();
        Arrays.fill(this.zzc, (Object) null);
        this.zzg = -1;
        this.zzi = null;
        this.zzd.clear();
        Collections.addAll(this.zzd, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zztl, com.google.android.gms.internal.ads.zzum
    public final void zzt(zzbs zzbsVar) {
        this.zzb[0].zzt(zzbsVar);
    }

    @Override // com.google.android.gms.internal.ads.zztt
    @Nullable
    protected final /* bridge */ /* synthetic */ zzuk zzy(Object obj, zzuk zzukVar) {
        if (((Integer) obj).intValue() == 0) {
            return zzukVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zztt, com.google.android.gms.internal.ads.zzum
    public final void zzz() throws IOException {
        zzuz zzuzVar = this.zzi;
        if (zzuzVar != null) {
            throw zzuzVar;
        }
        super.zzz();
    }
}
