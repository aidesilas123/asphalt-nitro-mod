package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzcf extends IOException {
    public final boolean zza;
    public final int zzb;

    protected zzcf(@Nullable String str, @Nullable Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzcf zza(@Nullable String str, @Nullable Throwable th) {
        return new zzcf(str, th, true, 1);
    }

    public static zzcf zzb(@Nullable String str, @Nullable Throwable th) {
        return new zzcf(str, th, true, 0);
    }

    public static zzcf zzc(@Nullable String str) {
        return new zzcf(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    @Nullable
    public final String getMessage() {
        return super.getMessage() + "{contentIsMalformed=" + this.zza + ", dataType=" + this.zzb + "}";
    }
}
