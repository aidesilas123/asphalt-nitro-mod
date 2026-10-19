package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhq extends zzgk {
    private final Resources zza;
    private final String zzb;

    @Nullable
    private Uri zzc;

    @Nullable
    private AssetFileDescriptor zzd;

    @Nullable
    private InputStream zze;
    private long zzf;
    private boolean zzg;

    public zzhq(Context context) {
        super(false);
        this.zza = context.getResources();
        this.zzb = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    @Override // com.google.android.gms.internal.ads.zzt
    public final int zza(byte[] bArr, int i, int i2) throws zzhp {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzf;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new zzhp(null, e2, 2000);
            }
        }
        InputStream inputStream = this.zze;
        int i3 = zzfs.zza;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            if (this.zzf == -1) {
                return -1;
            }
            throw new zzhp("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.zzf;
        if (j2 != -1) {
            this.zzf = j2 - ((long) i4);
        }
        zzg(i4);
        return i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzb(com.google.android.gms.internal.ads.zzgv r18) throws com.google.android.gms.internal.ads.zzhp {
        /*
            Method dump skipped, instruction units count: 403
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhq.zzb(com.google.android.gms.internal.ads.zzgv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    @Nullable
    public final Uri zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zzd() throws zzhp {
        this.zzc = null;
        try {
            try {
                try {
                    InputStream inputStream = this.zze;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    this.zze = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzd;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzd = null;
                        if (this.zzg) {
                            this.zzg = false;
                            zzh();
                        }
                    } catch (IOException e2) {
                        throw new zzhp(null, e2, 2000);
                    }
                } catch (IOException e3) {
                    throw new zzhp(null, e3, 2000);
                }
            } catch (Throwable th) {
                this.zzd = null;
                if (this.zzg) {
                    this.zzg = false;
                    zzh();
                }
                throw th;
            }
        } catch (Throwable th2) {
            this.zze = null;
            try {
                AssetFileDescriptor assetFileDescriptor2 = this.zzd;
                if (assetFileDescriptor2 != null) {
                    assetFileDescriptor2.close();
                }
                this.zzd = null;
                if (this.zzg) {
                    this.zzg = false;
                    zzh();
                }
                throw th2;
            } catch (IOException e4) {
                throw new zzhp(null, e4, 2000);
            }
        }
    }
}
