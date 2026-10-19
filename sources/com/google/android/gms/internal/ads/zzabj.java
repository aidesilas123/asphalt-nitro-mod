package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzabj {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final float zzj;

    @Nullable
    public final String zzk;

    private zzabj(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, @Nullable String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = i8;
        this.zzj = f2;
        this.zzk = str;
    }

    public static zzabj zza(zzfj zzfjVar) throws zzcf {
        String strZza;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        float f2;
        try {
            zzfjVar.zzH(4);
            int iZzl = (zzfjVar.zzl() & 3) + 1;
            if (iZzl == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iZzl2 = zzfjVar.zzl() & 31;
            for (int i8 = 0; i8 < iZzl2; i8++) {
                arrayList.add(zzb(zzfjVar));
            }
            int iZzl3 = zzfjVar.zzl();
            for (int i9 = 0; i9 < iZzl3; i9++) {
                arrayList.add(zzb(zzfjVar));
            }
            if (iZzl2 > 0) {
                zzgf zzgfVarZze = zzgg.zze((byte[]) arrayList.get(0), iZzl + 1, ((byte[]) arrayList.get(0)).length);
                int i10 = zzgfVarZze.zze;
                int i11 = zzgfVarZze.zzf;
                int i12 = zzgfVarZze.zzh + 8;
                int i13 = zzgfVarZze.zzi + 8;
                int i14 = zzgfVarZze.zzj;
                int i15 = zzgfVarZze.zzk;
                int i16 = zzgfVarZze.zzl;
                float f3 = zzgfVarZze.zzg;
                strZza = zzeh.zza(zzgfVarZze.zza, zzgfVarZze.zzb, zzgfVarZze.zzc);
                i6 = i15;
                i7 = i16;
                f2 = f3;
                i3 = i12;
                i4 = i13;
                i5 = i14;
                i = i10;
                i2 = i11;
            } else {
                strZza = null;
                i = -1;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = -1;
                i7 = -1;
                f2 = 1.0f;
            }
            return new zzabj(arrayList, iZzl, i, i2, i3, i4, i5, i6, i7, f2, strZza);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw zzcf.zza("Error parsing AVC config", e2);
        }
    }

    private static byte[] zzb(zzfj zzfjVar) {
        int iZzp = zzfjVar.zzp();
        int iZzc = zzfjVar.zzc();
        zzfjVar.zzH(iZzp);
        return zzeh.zzc(zzfjVar.zzI(), iZzc, iZzp);
    }
}
