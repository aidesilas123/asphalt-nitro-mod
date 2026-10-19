package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzyb extends zzye {

    @Nullable
    private zzya zza;

    protected abstract Pair zzb(zzya zzyaVar, int[][][] iArr, int[] iArr2, zzuk zzukVar, zzda zzdaVar) throws zzit;

    @Override // com.google.android.gms.internal.ads.zzye
    public final zzyf zzo(zzmb[] zzmbVarArr, zzwl zzwlVar, zzuk zzukVar, zzda zzdaVar) throws zzit {
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzdc[][] zzdcVarArr = new zzdc[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwlVar.zzc;
            zzdcVarArr[i] = new zzdc[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzmbVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzwlVar.zzc) {
            zzdc zzdcVarZzb = zzwlVar.zzb(i5);
            int i6 = zzdcVarZzb.zzd;
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (i7 < i3) {
                zzmb zzmbVar = zzmbVarArr[i7];
                int iMax = 0;
                for (int i10 = 0; i10 <= 0; i10++) {
                    iMax = Math.max(iMax, zzmbVar.zzW(zzdcVarZzb.zzb(i10)) & 7);
                }
                boolean z3 = iArr2[i7] == 0;
                if (iMax > i9) {
                    z2 = z3;
                    i8 = i7;
                    i9 = iMax;
                } else if (iMax == i9 && i6 == 5 && !z2 && z3) {
                    i8 = i7;
                    i9 = iMax;
                    z2 = true;
                }
                i7++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[1];
            } else {
                zzmb zzmbVar2 = zzmbVarArr[i8];
                int[] iArr5 = new int[1];
                for (int i11 = 0; i11 <= 0; i11++) {
                    iArr5[i11] = zzmbVar2.zzW(zzdcVarZzb.zzb(i11));
                }
                iArr = iArr5;
            }
            int i12 = iArr2[i8];
            zzdcVarArr[i8][i12] = zzdcVarZzb;
            iArr3[i8][i12] = iArr;
            iArr2[i8] = i12 + 1;
            i5++;
            i3 = 2;
        }
        zzwl[] zzwlVarArr = new zzwl[i3];
        String[] strArr = new String[i3];
        int[] iArr6 = new int[i3];
        int i13 = 0;
        while (i13 < i3) {
            int i14 = iArr2[i13];
            zzwlVarArr[i13] = new zzwl((zzdc[]) zzfs.zzK(zzdcVarArr[i13], i14));
            iArr3[i13] = (int[][]) zzfs.zzK(iArr3[i13], i14);
            strArr[i13] = zzmbVarArr[i13].zzS();
            iArr6[i13] = zzmbVarArr[i13].zzb();
            i13++;
            i3 = 2;
        }
        zzya zzyaVar = new zzya(strArr, iArr6, zzwlVarArr, iArr4, iArr3, new zzwl((zzdc[]) zzfs.zzK(zzdcVarArr[2], iArr2[2])));
        Pair pairZzb = zzb(zzyaVar, iArr3, iArr4, zzukVar, zzdaVar);
        zzyc[] zzycVarArr = (zzyc[]) pairZzb.second;
        List[] listArr = new List[zzycVarArr.length];
        for (int i15 = 0; i15 < zzycVarArr.length; i15++) {
            zzyc zzycVar = zzycVarArr[i15];
            listArr[i15] = zzycVar != null ? zzfwu.zzm(zzycVar) : zzfwu.zzl();
        }
        zzfwr zzfwrVar = new zzfwr();
        for (int i16 = 0; i16 < 2; i16++) {
            zzwl zzwlVarZzd = zzyaVar.zzd(i16);
            List list = listArr[i16];
            for (int i17 = 0; i17 < zzwlVarZzd.zzc; i17++) {
                zzdc zzdcVarZzb2 = zzwlVarZzd.zzb(i17);
                boolean z4 = zzyaVar.zza(i16, i17, false) != 0;
                int i18 = zzdcVarZzb2.zzb;
                int[] iArr7 = new int[1];
                boolean[] zArr = new boolean[1];
                for (int i19 = 0; i19 <= 0; i19++) {
                    iArr7[i19] = zzyaVar.zzb(i16, i17, i19) & 7;
                    int i20 = 0;
                    while (true) {
                        if (i20 >= list.size()) {
                            z = false;
                            break;
                        }
                        zzyc zzycVar2 = (zzyc) list.get(i20);
                        if (zzycVar2.zze().equals(zzdcVarZzb2) && zzycVar2.zzb(i19) != -1) {
                            z = true;
                            break;
                        }
                        i20++;
                    }
                    zArr[i19] = z;
                }
                zzfwrVar.zzf(new zzdm(zzdcVarZzb2, z4, iArr7, zArr));
            }
        }
        zzwl zzwlVarZze = zzyaVar.zze();
        for (int i21 = 0; i21 < zzwlVarZze.zzc; i21++) {
            zzdc zzdcVarZzb3 = zzwlVarZze.zzb(i21);
            int i22 = zzdcVarZzb3.zzb;
            int[] iArr8 = new int[1];
            Arrays.fill(iArr8, 0);
            zzfwrVar.zzf(new zzdm(zzdcVarZzb3, false, iArr8, new boolean[1]));
        }
        return new zzyf((zzmc[]) pairZzb.first, (zzxy[]) pairZzb.second, new zzdn(zzfwrVar.zzi()), zzyaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzp(@Nullable Object obj) {
        this.zza = (zzya) obj;
    }
}
