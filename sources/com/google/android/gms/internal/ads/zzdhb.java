package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzdhb {
    private final zzdig zza;

    @Nullable
    private final zzcgv zzb;

    public zzdhb(zzdig zzdigVar, @Nullable zzcgv zzcgvVar) {
        this.zza = zzdigVar;
        this.zzb = zzcgvVar;
    }

    public static final zzdfw zzh(zzfjt zzfjtVar) {
        return new zzdfw(zzfjtVar, zzcca.zzf);
    }

    public static final zzdfw zzi(zzdil zzdilVar) {
        return new zzdfw(zzdilVar, zzcca.zzf);
    }

    @Nullable
    public final View zza() {
        zzcgv zzcgvVar = this.zzb;
        if (zzcgvVar == null) {
            return null;
        }
        return zzcgvVar.zzG();
    }

    @Nullable
    public final View zzb() {
        zzcgv zzcgvVar = this.zzb;
        if (zzcgvVar != null) {
            return zzcgvVar.zzG();
        }
        return null;
    }

    @Nullable
    public final zzcgv zzc() {
        return this.zzb;
    }

    public final zzdfw zzd(Executor executor) {
        final zzcgv zzcgvVar = this.zzb;
        return new zzdfw(new zzdcu() { // from class: com.google.android.gms.internal.ads.zzdha
            @Override // com.google.android.gms.internal.ads.zzdcu
            public final void zza() {
                com.google.android.gms.ads.internal.overlay.zzl zzlVarZzL;
                zzcgv zzcgvVar2 = zzcgvVar;
                if (zzcgvVar2 == null || (zzlVarZzL = zzcgvVar2.zzL()) == null) {
                    return;
                }
                zzlVarZzL.zzb();
            }
        }, executor);
    }

    public final zzdig zze() {
        return this.zza;
    }

    public Set zzf(zzcxe zzcxeVar) {
        return Collections.singleton(new zzdfw(zzcxeVar, zzcca.zzf));
    }

    public Set zzg(zzcxe zzcxeVar) {
        return Collections.singleton(new zzdfw(zzcxeVar, zzcca.zzf));
    }
}
