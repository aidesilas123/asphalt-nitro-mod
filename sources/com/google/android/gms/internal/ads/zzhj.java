package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzhj extends zzgr {
    public final zzgv zzb;
    public final int zzc;

    public zzhj(zzgv zzgvVar, int i, int i2) {
        super(zzb(2008, 1));
        this.zzb = zzgvVar;
        this.zzc = 1;
    }

    public zzhj(IOException iOException, zzgv zzgvVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = zzgvVar;
        this.zzc = i2;
    }

    public zzhj(String str, zzgv zzgvVar, int i, int i2) {
        super(str, zzb(i, i2));
        this.zzb = zzgvVar;
        this.zzc = i2;
    }

    public zzhj(String str, @Nullable IOException iOException, zzgv zzgvVar, int i, int i2) {
        super(str, iOException, zzb(i, i2));
        this.zzb = zzgvVar;
        this.zzc = i2;
    }

    public static zzhj zza(IOException iOException, zzgv zzgvVar, int i) {
        String message = iOException.getMessage();
        int i2 = 2001;
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else if (message != null && zzftf.zza(message).matches("cleartext.*not permitted.*")) {
            i2 = 2007;
        }
        return i2 == 2007 ? new zzhi(iOException, zzgvVar) : new zzhj(iOException, zzgvVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        return i == 2000 ? i2 != 1 ? 2000 : 2001 : i;
    }
}
