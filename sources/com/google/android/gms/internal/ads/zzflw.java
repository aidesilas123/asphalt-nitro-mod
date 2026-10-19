package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.view.View;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzflw extends zzflz {

    @SuppressLint({"StaticFieldLeak"})
    private static final zzflw zzb = new zzflw();

    private zzflw() {
    }

    public static zzflw zza() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final void zzb(boolean z) {
        Iterator it = zzflx.zza().zzc().iterator();
        while (it.hasNext()) {
            zzfmk zzfmkVarZzg = ((zzflj) it.next()).zzg();
            if (zzfmkVarZzg.zzl()) {
                zzfmd.zza().zzb(zzfmkVarZzg.zza(), "setState", true != z ? "backgrounded" : "foregrounded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final boolean zzc() {
        Iterator it = zzflx.zza().zzb().iterator();
        while (it.hasNext()) {
            View viewZzf = ((zzflj) it.next()).zzf();
            if (viewZzf != null && viewZzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
