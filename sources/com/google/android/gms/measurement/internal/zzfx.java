package com.google.android.gms.measurement.internal;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfx implements com.google.android.gms.internal.measurement.zzr {
    final /* synthetic */ zzfz zza;

    zzfx(zzfz zzfzVar) {
        this.zza = zzfzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i, String str, List list, boolean z, boolean z2) {
        int i2 = i - 1;
        zzew zzewVarZzi = i2 != 0 ? i2 != 1 ? i2 != 3 ? i2 != 4 ? this.zza.zzs.zzaz().zzi() : z ? this.zza.zzs.zzaz().zzm() : !z2 ? this.zza.zzs.zzaz().zzl() : this.zza.zzs.zzaz().zzk() : this.zza.zzs.zzaz().zzj() : z ? this.zza.zzs.zzaz().zzh() : !z2 ? this.zza.zzs.zzaz().zze() : this.zza.zzs.zzaz().zzd() : this.zza.zzs.zzaz().zzc();
        int size = list.size();
        if (size == 1) {
            zzewVarZzi.zzb(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzewVarZzi.zzc(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzewVarZzi.zza(str);
        } else {
            zzewVarZzi.zzd(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
