package com.google.android.gms.internal.drive;

import com.json.mediationsdk.logger.IronSourceError;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhm extends zzir<zzhm> {
    public int versionCode = 1;
    public long zze = -1;
    public long zzf = -1;
    public long zzg = -1;

    public zzhm() {
        this.zzmw = null;
        this.zznf = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhm)) {
            return false;
        }
        zzhm zzhmVar = (zzhm) obj;
        if (this.versionCode != zzhmVar.versionCode || this.zze != zzhmVar.zze || this.zzf != zzhmVar.zzf || this.zzg != zzhmVar.zzg) {
            return false;
        }
        zzit zzitVar = this.zzmw;
        if (zzitVar != null && !zzitVar.isEmpty()) {
            return this.zzmw.equals(zzhmVar.zzmw);
        }
        zzit zzitVar2 = zzhmVar.zzmw;
        return zzitVar2 == null || zzitVar2.isEmpty();
    }

    public final int hashCode() {
        int iHashCode = (((zzhm.class.getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.versionCode) * 31;
        long j = this.zze;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.zzf;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.zzg;
        int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        zzit zzitVar = this.zzmw;
        return i3 + ((zzitVar == null || zzitVar.isEmpty()) ? 0 : this.zzmw.hashCode());
    }

    @Override // com.google.android.gms.internal.drive.zzix
    public final /* synthetic */ zzix zza(zzio zzioVar) throws IOException {
        while (true) {
            int iZzbd = zzioVar.zzbd();
            if (iZzbd == 0) {
                return this;
            }
            if (iZzbd == 8) {
                this.versionCode = zzioVar.zzbe();
            } else if (iZzbd == 16) {
                long jZzbf = zzioVar.zzbf();
                this.zze = (-(jZzbf & 1)) ^ (jZzbf >>> 1);
            } else if (iZzbd == 24) {
                long jZzbf2 = zzioVar.zzbf();
                this.zzf = (-(jZzbf2 & 1)) ^ (jZzbf2 >>> 1);
            } else if (iZzbd == 32) {
                long jZzbf3 = zzioVar.zzbf();
                this.zzg = (-(jZzbf3 & 1)) ^ (jZzbf3 >>> 1);
            } else if (!super.zza(zzioVar, iZzbd)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.drive.zzir, com.google.android.gms.internal.drive.zzix
    public final void zza(zzip zzipVar) throws IOException {
        zzipVar.zzb(1, this.versionCode);
        zzipVar.zza(2, this.zze);
        zzipVar.zza(3, this.zzf);
        zzipVar.zza(4, this.zzg);
        super.zza(zzipVar);
    }

    @Override // com.google.android.gms.internal.drive.zzir, com.google.android.gms.internal.drive.zzix
    protected final int zzaq() {
        return super.zzaq() + zzip.zzc(1, this.versionCode) + zzip.zzb(2, this.zze) + zzip.zzb(3, this.zzf) + zzip.zzb(4, this.zzg);
    }
}
