package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfqz extends zzfqx {
    private static zzfqz zzc;

    private zzfqz(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final zzfqz zzj(Context context) {
        zzfqz zzfqzVar;
        synchronized (zzfqz.class) {
            if (zzc == null) {
                zzc = new zzfqz(context);
            }
            zzfqzVar = zzc;
        }
        return zzfqzVar;
    }

    public final zzfqw zzh(long j, boolean z) throws IOException {
        zzfqw zzfqwVarZzb;
        synchronized (zzfqz.class) {
            zzfqwVarZzb = zzb(null, null, j, z);
        }
        return zzfqwVarZzb;
    }

    public final zzfqw zzi(String str, String str2, long j, boolean z) throws IOException {
        zzfqw zzfqwVarZzb;
        synchronized (zzfqz.class) {
            zzfqwVarZzb = zzb(str, str2, j, z);
        }
        return zzfqwVarZzb;
    }

    public final void zzk() throws IOException {
        synchronized (zzfqz.class) {
            zzf(false);
        }
    }

    public final void zzl() throws IOException {
        synchronized (zzfqz.class) {
            zzf(true);
        }
    }
}
