package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.json.o2;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgv {
    public static final /* synthetic */ int zzj = 0;
    public final Uri zza;
    public final int zzb;

    @Nullable
    public final byte[] zzc;
    public final Map zzd;

    @Deprecated
    public final long zze;
    public final long zzf;
    public final long zzg;

    @Nullable
    public final String zzh;
    public final int zzi;

    static {
        zzbt.zzb("media3.datasource");
    }

    public zzgv(Uri uri) {
        this(uri, 0L, 1, null, Collections.emptyMap(), 0L, -1L, null, 0, null);
    }

    private zzgv(Uri uri, long j, int i, @Nullable byte[] bArr, Map map, long j2, long j3, @Nullable String str, int i2, @Nullable Object obj) {
        long j4 = j + j2;
        boolean z = false;
        zzef.zzd(j4 >= 0);
        zzef.zzd(j2 >= 0);
        long j5 = -1;
        if (j3 <= 0) {
            if (j3 != -1) {
                j5 = j3;
            }
            zzef.zzd(z);
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = Collections.unmodifiableMap(new HashMap(map));
            this.zzf = j2;
            this.zze = j4;
            this.zzg = j5;
            this.zzh = null;
            this.zzi = i2;
        }
        j5 = j3;
        z = true;
        zzef.zzd(z);
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = Collections.unmodifiableMap(new HashMap(map));
        this.zzf = j2;
        this.zze = j4;
        this.zzg = j5;
        this.zzh = null;
        this.zzi = i2;
    }

    @Deprecated
    public zzgv(Uri uri, @Nullable byte[] bArr, long j, long j2, long j3, @Nullable String str, int i) {
        this(uri, j - j2, 1, null, Collections.emptyMap(), j2, j3, null, i, null);
    }

    public final String toString() {
        return "DataSpec[GET " + String.valueOf(this.zza) + ", " + this.zzf + ", " + this.zzg + ", null, " + this.zzi + o2.i.f6491e;
    }

    public final boolean zza(int i) {
        return (this.zzi & i) == i;
    }
}
