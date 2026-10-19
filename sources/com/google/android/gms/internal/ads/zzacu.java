package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacu {
    private static final Pattern zzc = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zza = -1;
    public int zzb = -1;

    private final boolean zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i = zzfs.zza;
            int i2 = Integer.parseInt(strGroup, 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.zza = i2;
            this.zzb = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean zza() {
        return (this.zza == -1 || this.zzb == -1) ? false : true;
    }

    public final boolean zzb(zzcb zzcbVar) {
        for (int i = 0; i < zzcbVar.zza(); i++) {
            zzca zzcaVarZzb = zzcbVar.zzb(i);
            if (zzcaVarZzb instanceof zzafu) {
                zzafu zzafuVar = (zzafu) zzcaVarZzb;
                if ("iTunSMPB".equals(zzafuVar.zzb) && zzc(zzafuVar.zzc)) {
                    return true;
                }
            } else if (zzcaVarZzb instanceof zzagd) {
                zzagd zzagdVar = (zzagd) zzcaVarZzb;
                if ("com.apple.iTunes".equals(zzagdVar.zza) && "iTunSMPB".equals(zzagdVar.zzb) && zzc(zzagdVar.zzc)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
