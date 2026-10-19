package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzerr implements zzeuy {
    private final Context zza;
    private final zzgbl zzb;

    public zzerr(Context context, zzgbl zzgblVar) {
        this.zza = context;
        this.zzb = zzgblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 19;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String strZzj;
                String strZzk;
                String strZze;
                com.google.android.gms.ads.internal.zzt.zzp();
                zzawp zzawpVarZzg = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzg();
                Bundle bundle = null;
                if (zzawpVarZzg != null && (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN() || !com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO())) {
                    if (zzawpVarZzg.zzh()) {
                        zzawpVarZzg.zzg();
                    }
                    zzawf zzawfVarZza = zzawpVarZzg.zza();
                    if (zzawfVarZza != null) {
                        strZzj = zzawfVarZza.zzd();
                        strZze = zzawfVarZza.zze();
                        strZzk = zzawfVarZza.zzf();
                        if (strZzj != null) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzw(strZzj);
                        }
                        if (strZzk != null) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzy(strZzk);
                        }
                    } else {
                        strZzj = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzj();
                        strZzk = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzk();
                        strZze = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO()) {
                        if (strZzk == null || TextUtils.isEmpty(strZzk)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", strZzk);
                        }
                    }
                    if (strZzj != null && !com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN()) {
                        bundle2.putString("fingerprint", strZzj);
                        if (!strZzj.equals(strZze)) {
                            bundle2.putString("v_fp", strZze);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zzers(bundle);
            }
        });
    }
}
