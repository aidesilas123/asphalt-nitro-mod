package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Hex;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfpi {

    @VisibleForTesting
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfpi(@NonNull Context context, int i) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfpj.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfpj.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        StringBuilder sb = new StringBuilder();
        sb.append("FBAMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    private final String zzf() {
        StringBuilder sb = new StringBuilder();
        sb.append("LATMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zza(@androidx.annotation.NonNull com.google.android.gms.internal.ads.zzavc r8, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzfpo r9) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpi.zza(com.google.android.gms.internal.ads.zzavc, com.google.android.gms.internal.ads.zzfpo):boolean");
    }

    @Nullable
    @VisibleForTesting
    final zzavf zzb(int i) {
        String string = i == 1 ? this.zzc.getString(zzf(), null) : this.zzc.getString(zze(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] bArrStringToBytes = Hex.stringToBytes(string);
            zzgve zzgveVar = zzgve.zzb;
            zzavf zzavfVarZzh = zzavf.zzh(zzgve.zzv(bArrStringToBytes, 0, bArrStringToBytes.length));
            String strZzk = zzavfVarZzh.zzk();
            File fileZzb = zzfpj.zzb(strZzk, "pcam.jar", zzd());
            if (!fileZzb.exists()) {
                fileZzb = zzfpj.zzb(strZzk, "pcam", zzd());
            }
            File fileZzb2 = zzfpj.zzb(strZzk, "pcbc", zzd());
            if (fileZzb.exists()) {
                if (fileZzb2.exists()) {
                    return zzavfVarZzh;
                }
            }
        } catch (zzgwy unused) {
        }
        return null;
    }

    @Nullable
    public final zzfph zzc(int i) {
        zzavf zzavfVarZzb = zzb(1);
        if (zzavfVarZzb == null) {
            return null;
        }
        String strZzk = zzavfVarZzb.zzk();
        File fileZzb = zzfpj.zzb(strZzk, "pcam.jar", zzd());
        if (!fileZzb.exists()) {
            fileZzb = zzfpj.zzb(strZzk, "pcam", zzd());
        }
        return new zzfph(zzavfVarZzb, fileZzb, zzfpj.zzb(strZzk, "pcbc", zzd()), zzfpj.zzb(strZzk, "pcopt", zzd()));
    }
}
