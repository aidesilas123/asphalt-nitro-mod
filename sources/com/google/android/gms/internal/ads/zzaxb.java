package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaxb implements Comparator {
    public zzaxb(zzaxc zzaxcVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzawq zzawqVar = (zzawq) obj;
        zzawq zzawqVar2 = (zzawq) obj2;
        if (zzawqVar.zzd() >= zzawqVar2.zzd()) {
            if (zzawqVar.zzd() > zzawqVar2.zzd()) {
                return 1;
            }
            if (zzawqVar.zzb() >= zzawqVar2.zzb()) {
                if (zzawqVar.zzb() > zzawqVar2.zzb()) {
                    return 1;
                }
                float fZza = (zzawqVar.zza() - zzawqVar.zzd()) * (zzawqVar.zzc() - zzawqVar.zzb());
                float fZza2 = (zzawqVar2.zza() - zzawqVar2.zzd()) * (zzawqVar2.zzc() - zzawqVar2.zzb());
                if (fZza <= fZza2) {
                    return fZza < fZza2 ? 1 : 0;
                }
            }
        }
        return -1;
    }
}
