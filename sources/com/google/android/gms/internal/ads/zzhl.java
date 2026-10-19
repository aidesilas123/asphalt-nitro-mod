package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhl extends zzhj {
    public final int zzd;

    @Nullable
    public final String zze;
    public final Map zzf;
    public final byte[] zzg;

    public zzhl(int i, @Nullable String str, @Nullable IOException iOException, Map map, zzgv zzgvVar, byte[] bArr) {
        super("Response code: " + i, iOException, zzgvVar, 2004, 1);
        this.zzd = i;
        this.zze = str;
        this.zzf = map;
        this.zzg = bArr;
    }
}
