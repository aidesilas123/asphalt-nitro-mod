package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeuj implements zzeuy {
    private final zzbzs zza;
    private final zzgbl zzb;
    private final Context zzc;

    public zzeuj(zzbzs zzbzsVar, zzgbl zzgblVar, Context context) {
        this.zza = zzbzsVar;
        this.zzb = zzgblVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeui
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzeuk zzc() throws Exception {
        if (!this.zza.zzu(this.zzc)) {
            return new zzeuk(null, null, null, null, null);
        }
        String strZze = this.zza.zze(this.zzc);
        String str = strZze == null ? "" : strZze;
        String strZzc = this.zza.zzc(this.zzc);
        String str2 = strZzc == null ? "" : strZzc;
        String strZza = this.zza.zza(this.zzc);
        String str3 = strZza == null ? "" : strZza;
        String strZzb = this.zza.zzb(this.zzc);
        return new zzeuk(str, str2, str3, strZzb == null ? "" : strZzb, "TIME_OUT".equals(str2) ? (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaf) : null);
    }
}
