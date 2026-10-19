package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaq {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final zzat zzf;

    zzaq(zzgi zzgiVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzat zzatVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzgiVar.zzaz().zzk().zzb("Event created with reverse previous/current timestamps. appId", zzey.zzn(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzatVar = new zzat(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgiVar.zzaz().zzd().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzA = zzgiVar.zzv().zzA(next, bundle2.get(next));
                    if (objZzA == null) {
                        zzgiVar.zzaz().zzk().zzb("Param value can't be null", zzgiVar.zzj().zze(next));
                        it.remove();
                    } else {
                        zzgiVar.zzv().zzO(bundle2, next, objZzA);
                    }
                }
            }
            zzatVar = new zzat(bundle2);
        }
        this.zzf = zzatVar;
    }

    private zzaq(zzgi zzgiVar, String str, String str2, String str3, long j, long j2, zzat zzatVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzatVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzgiVar.zzaz().zzk().zzc("Event created with reverse previous/current timestamps. appId, name", zzey.zzn(str2), zzey.zzn(str3));
        }
        this.zzf = zzatVar;
    }

    public final String toString() {
        return "Event{appId='" + this.zza + "', name='" + this.zzb + "', params=" + this.zzf.toString() + "}";
    }

    final zzaq zza(zzgi zzgiVar, long j) {
        return new zzaq(zzgiVar, this.zzc, this.zza, this.zzb, this.zzd, j, this.zzf);
    }
}
