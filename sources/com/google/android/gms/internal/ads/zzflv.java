package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzflv implements zzfly {
    private static final zzflv zzb = new zzflv(new zzflz());
    protected final zzfmu zza = new zzfmu();
    private Date zzc;
    private boolean zzd;
    private final zzflz zze;
    private boolean zzf;

    private zzflv(zzflz zzflzVar) {
        this.zze = zzflzVar;
    }

    public static zzflv zza() {
        return zzb;
    }

    public final Date zzb() {
        Date date = this.zzc;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final void zzc(boolean z) {
        if (!this.zzf && z) {
            Date date = new Date();
            Date date2 = this.zzc;
            if (date2 == null || date.after(date2)) {
                this.zzc = date;
                if (this.zzd && date != null) {
                    Iterator it = zzflx.zza().zzb().iterator();
                    while (it.hasNext()) {
                        ((zzflj) it.next()).zzg().zze(zzb());
                    }
                }
            }
        }
        this.zzf = z;
    }

    public final void zzd(@NonNull Context context) {
        if (this.zzd) {
            return;
        }
        this.zze.zzd(context);
        this.zze.zze(this);
        this.zze.zzf();
        this.zzf = this.zze.zza;
        this.zzd = true;
    }
}
