package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfd extends zzjy implements zzlk {
    private zzfd() {
        super(zzfe.zza);
    }

    /* synthetic */ zzfd(zzey zzeyVar) {
        super(zzfe.zza);
    }

    public final int zza() {
        return ((zzfe) this.zza).zzb();
    }

    public final zzfc zzb(int i) {
        return ((zzfe) this.zza).zzd(i);
    }

    public final zzfd zzc() {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        ((zzfe) this.zza).zzk = zzkc.zzbG();
        return this;
    }

    public final zzfd zzd(int i, zzfb zzfbVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfe.zzo((zzfe) this.zza, i, (zzfc) zzfbVar.zzaE());
        return this;
    }

    public final String zze() {
        return ((zzfe) this.zza).zzi();
    }

    public final List zzf() {
        return Collections.unmodifiableList(((zzfe) this.zza).zzj());
    }

    public final List zzg() {
        return Collections.unmodifiableList(((zzfe) this.zza).zzk());
    }
}
