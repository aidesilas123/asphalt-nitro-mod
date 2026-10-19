package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzgr extends IOException {
    public final int zza;

    public zzgr(int i) {
        this.zza = i;
    }

    public zzgr(@Nullable String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzgr(@Nullable String str, @Nullable Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzgr(@Nullable Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
