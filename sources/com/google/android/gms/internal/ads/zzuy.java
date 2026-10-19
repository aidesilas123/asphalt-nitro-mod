package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzuy implements zzui, zzuh {
    private final zzui[] zza;

    @Nullable
    private zzuh zze;

    @Nullable
    private zzwl zzf;
    private final zztv zzi;
    private final ArrayList zzc = new ArrayList();
    private final HashMap zzd = new HashMap();
    private zzwc zzh = new zztu(new zzwc[0]);
    private final IdentityHashMap zzb = new IdentityHashMap();
    private zzui[] zzg = new zzui[0];

    public zzuy(zztv zztvVar, long[] jArr, zzui... zzuiVarArr) {
        this.zzi = zztvVar;
        this.zza = zzuiVarArr;
        for (int i = 0; i < zzuiVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zza[i] = new zzwi(zzuiVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zza(long j, zzmd zzmdVar) {
        zzui[] zzuiVarArr = this.zzg;
        return (zzuiVarArr.length > 0 ? zzuiVarArr[0] : this.zza[0]).zza(j, zzmdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzb() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzc() {
        return this.zzh.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zzd() {
        long j = -9223372036854775807L;
        for (zzui zzuiVar : this.zzg) {
            long jZzd = zzuiVar.zzd();
            if (jZzd == C.TIME_UNSET) {
                if (j != C.TIME_UNSET && zzuiVar.zze(j) != j) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j == C.TIME_UNSET) {
                for (zzui zzuiVar2 : this.zzg) {
                    if (zzuiVar2 == zzuiVar) {
                        break;
                    }
                    if (zzuiVar2.zze(jZzd) != jZzd) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j = jZzd;
            } else if (jZzd != j) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zze(long j) {
        long jZze = this.zzg[0].zze(j);
        int i = 1;
        while (true) {
            zzui[] zzuiVarArr = this.zzg;
            if (i >= zzuiVarArr.length) {
                return jZze;
            }
            if (zzuiVarArr[i].zze(jZze) != jZze) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final /* bridge */ /* synthetic */ void zzf(zzwc zzwcVar) {
        zzuh zzuhVar = this.zze;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zzg(zzxy[] zzxyVarArr, boolean[] zArr, zzwa[] zzwaVarArr, boolean[] zArr2, long j) {
        int length;
        int length2 = zzxyVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzxyVarArr.length;
            if (i >= length) {
                break;
            }
            zzwa zzwaVar = zzwaVarArr[i];
            Integer num = zzwaVar != null ? (Integer) this.zzb.get(zzwaVar) : null;
            iArr[i] = num == null ? -1 : num.intValue();
            zzxy zzxyVar = zzxyVarArr[i];
            if (zzxyVar != null) {
                String str = zzxyVar.zze().zzc;
                iArr2[i] = Integer.parseInt(str.substring(0, str.indexOf(CertificateUtil.DELIMITER)));
            } else {
                iArr2[i] = -1;
            }
            i++;
        }
        this.zzb.clear();
        zzwa[] zzwaVarArr2 = new zzwa[length];
        zzwa[] zzwaVarArr3 = new zzwa[length];
        zzxy[] zzxyVarArr2 = new zzxy[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        long j2 = j;
        int i2 = 0;
        while (i2 < this.zza.length) {
            for (int i3 = 0; i3 < zzxyVarArr.length; i3++) {
                zzwaVarArr3[i3] = iArr[i3] == i2 ? zzwaVarArr[i3] : null;
                if (iArr2[i3] == i2) {
                    zzxy zzxyVar2 = zzxyVarArr[i3];
                    Objects.requireNonNull(zzxyVar2);
                    zzdc zzdcVar = (zzdc) this.zzd.get(zzxyVar2.zze());
                    Objects.requireNonNull(zzdcVar);
                    zzxyVarArr2[i3] = new zzux(zzxyVar2, zzdcVar);
                } else {
                    zzxyVarArr2[i3] = null;
                }
            }
            ArrayList arrayList2 = arrayList;
            zzxy[] zzxyVarArr3 = zzxyVarArr2;
            zzwa[] zzwaVarArr4 = zzwaVarArr3;
            long jZzg = this.zza[i2].zzg(zzxyVarArr2, zArr, zzwaVarArr3, zArr2, j2);
            if (i2 == 0) {
                j2 = jZzg;
            } else if (jZzg != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i4 = 0; i4 < zzxyVarArr.length; i4++) {
                if (iArr2[i4] == i2) {
                    zzwa zzwaVar2 = zzwaVarArr4[i4];
                    Objects.requireNonNull(zzwaVar2);
                    zzwaVarArr2[i4] = zzwaVar2;
                    this.zzb.put(zzwaVar2, Integer.valueOf(i2));
                    z = true;
                } else if (iArr[i4] == i2) {
                    zzef.zzf(zzwaVarArr4[i4] == null);
                }
            }
            if (z) {
                arrayList2.add(this.zza[i2]);
            }
            i2++;
            arrayList = arrayList2;
            zzxyVarArr2 = zzxyVarArr3;
            zzwaVarArr3 = zzwaVarArr4;
        }
        System.arraycopy(zzwaVarArr2, 0, zzwaVarArr, 0, length);
        zzui[] zzuiVarArr = (zzui[]) arrayList.toArray(new zzui[0]);
        this.zzg = zzuiVarArr;
        this.zzh = new zztu(zzuiVarArr);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuh
    public final void zzh(zzui zzuiVar) {
        this.zzc.remove(zzuiVar);
        if (!this.zzc.isEmpty()) {
            return;
        }
        int i = 0;
        for (zzui zzuiVar2 : this.zza) {
            i += zzuiVar2.zzi().zzc;
        }
        zzdc[] zzdcVarArr = new zzdc[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzui[] zzuiVarArr = this.zza;
            if (i2 >= zzuiVarArr.length) {
                this.zzf = new zzwl(zzdcVarArr);
                zzuh zzuhVar = this.zze;
                Objects.requireNonNull(zzuhVar);
                zzuhVar.zzh(this);
                return;
            }
            zzwl zzwlVarZzi = zzuiVarArr[i2].zzi();
            int i4 = zzwlVarZzi.zzc;
            int i5 = 0;
            while (i5 < i4) {
                zzdc zzdcVarZzb = zzwlVarZzi.zzb(i5);
                zzdc zzdcVarZzc = zzdcVarZzb.zzc(i2 + CertificateUtil.DELIMITER + zzdcVarZzb.zzc);
                this.zzd.put(zzdcVarZzc, zzdcVarZzb);
                zzdcVarArr[i3] = zzdcVarZzc;
                i5++;
                i3++;
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final zzwl zzi() {
        zzwl zzwlVar = this.zzf;
        Objects.requireNonNull(zzwlVar);
        return zzwlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzj(long j, boolean z) {
        for (zzui zzuiVar : this.zzg) {
            zzuiVar.zzj(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzk() throws IOException {
        int i = 0;
        while (true) {
            zzui[] zzuiVarArr = this.zza;
            if (i >= zzuiVarArr.length) {
                return;
            }
            zzuiVarArr[i].zzk();
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzl(zzuh zzuhVar, long j) {
        this.zze = zzuhVar;
        Collections.addAll(this.zzc, this.zza);
        int i = 0;
        while (true) {
            zzui[] zzuiVarArr = this.zza;
            if (i >= zzuiVarArr.length) {
                return;
            }
            zzuiVarArr[i].zzl(this, j);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final void zzm(long j) {
        this.zzh.zzm(j);
    }

    public final zzui zzn(int i) {
        zzui zzuiVar = this.zza[i];
        return zzuiVar instanceof zzwi ? ((zzwi) zzuiVar).zzn() : zzuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzo(zzla zzlaVar) {
        if (this.zzc.isEmpty()) {
            return this.zzh.zzo(zzlaVar);
        }
        int size = this.zzc.size();
        for (int i = 0; i < size; i++) {
            ((zzui) this.zzc.get(i)).zzo(zzlaVar);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzp() {
        return this.zzh.zzp();
    }
}
