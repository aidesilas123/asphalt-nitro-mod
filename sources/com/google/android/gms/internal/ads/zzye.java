package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzye {

    @Nullable
    private zzyd zza;

    @Nullable
    private zzym zzb;

    @Nullable
    public zzma zzc() {
        throw null;
    }

    @CallSuper
    public void zzi() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzj(zzk zzkVar) {
        throw null;
    }

    public boolean zzm() {
        throw null;
    }

    public abstract zzyf zzo(zzmb[] zzmbVarArr, zzwl zzwlVar, zzuk zzukVar, zzda zzdaVar) throws zzit;

    public abstract void zzp(@Nullable Object obj);

    protected final zzym zzq() {
        zzym zzymVar = this.zzb;
        zzef.zzb(zzymVar);
        return zzymVar;
    }

    @CallSuper
    public final void zzr(zzyd zzydVar, zzym zzymVar) {
        this.zza = zzydVar;
        this.zzb = zzymVar;
    }

    protected final void zzs() {
        zzyd zzydVar = this.zza;
        if (zzydVar != null) {
            zzydVar.zzi();
        }
    }
}
