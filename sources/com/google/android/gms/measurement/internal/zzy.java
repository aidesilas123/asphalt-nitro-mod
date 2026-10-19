package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzoi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzy extends zzx {
    final /* synthetic */ zzz zza;
    private final com.google.android.gms.internal.measurement.zzes zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzy(zzz zzzVar, String str, int i, com.google.android.gms.internal.measurement.zzes zzesVar) {
        super(str, i);
        this.zza = zzzVar;
        this.zzh = zzesVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    final int zza() {
        return this.zzh.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    final boolean zzc() {
        return true;
    }

    final boolean zzd(Long l, Long l2, com.google.android.gms.internal.measurement.zzgl zzglVar, boolean z) {
        zzoi.zzc();
        boolean zZzs = this.zza.zzs.zzf().zzs(this.zzb, zzel.zzV);
        boolean zZzg = this.zzh.zzg();
        boolean zZzh = this.zzh.zzh();
        boolean zZzi = this.zzh.zzi();
        boolean z2 = zZzg || zZzh || zZzi;
        Boolean boolZzj = null;
        boolZzj = null;
        boolZzj = null;
        boolZzj = null;
        boolZzj = null;
        if (z && !z2) {
            this.zza.zzs.zzaz().zzj().zzc("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzc), this.zzh.zzj() ? Integer.valueOf(this.zzh.zza()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzel zzelVarZzb = this.zzh.zzb();
        boolean zZzg2 = zzelVarZzb.zzg();
        if (zzglVar.zzr()) {
            if (zzelVarZzb.zzi()) {
                boolZzj = zzx.zzj(zzx.zzh(zzglVar.zzb(), zzelVarZzb.zzc()), zZzg2);
            } else {
                this.zza.zzs.zzaz().zzk().zzb("No number filter for long property. property", this.zza.zzs.zzj().zzf(zzglVar.zzf()));
            }
        } else if (zzglVar.zzq()) {
            if (zzelVarZzb.zzi()) {
                boolZzj = zzx.zzj(zzx.zzg(zzglVar.zza(), zzelVarZzb.zzc()), zZzg2);
            } else {
                this.zza.zzs.zzaz().zzk().zzb("No number filter for double property. property", this.zza.zzs.zzj().zzf(zzglVar.zzf()));
            }
        } else if (!zzglVar.zzt()) {
            this.zza.zzs.zzaz().zzk().zzb("User property has no value, property", this.zza.zzs.zzj().zzf(zzglVar.zzf()));
        } else if (zzelVarZzb.zzk()) {
            boolZzj = zzx.zzj(zzx.zzf(zzglVar.zzg(), zzelVarZzb.zzd(), this.zza.zzs.zzaz()), zZzg2);
        } else if (!zzelVarZzb.zzi()) {
            this.zza.zzs.zzaz().zzk().zzb("No string or number filter defined. property", this.zza.zzs.zzj().zzf(zzglVar.zzf()));
        } else if (zzlk.zzx(zzglVar.zzg())) {
            boolZzj = zzx.zzj(zzx.zzi(zzglVar.zzg(), zzelVarZzb.zzc()), zZzg2);
        } else {
            this.zza.zzs.zzaz().zzk().zzc("Invalid user property value for Numeric number filter. property, value", this.zza.zzs.zzj().zzf(zzglVar.zzf()), zzglVar.zzg());
        }
        this.zza.zzs.zzaz().zzj().zzb("Property filter result", boolZzj == null ? "null" : boolZzj);
        if (boolZzj == null) {
            return false;
        }
        this.zzd = Boolean.TRUE;
        if (zZzi && !boolZzj.booleanValue()) {
            return true;
        }
        if (!z || this.zzh.zzg()) {
            this.zze = boolZzj;
        }
        if (boolZzj.booleanValue() && z2 && zzglVar.zzs()) {
            long jZzc = zzglVar.zzc();
            if (l != null) {
                jZzc = l.longValue();
            }
            if (zZzs && this.zzh.zzg() && !this.zzh.zzh() && l2 != null) {
                jZzc = l2.longValue();
            }
            if (this.zzh.zzh()) {
                this.zzg = Long.valueOf(jZzc);
            } else {
                this.zzf = Long.valueOf(jZzc);
            }
        }
        return true;
    }
}
