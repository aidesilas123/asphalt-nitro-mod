package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zzfjv {
    public static zzfjw zza(Context context, int i) {
        boolean zBooleanValue;
        if (zzfkk.zza()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        zBooleanValue = ((Boolean) zzbeo.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        zBooleanValue = ((Boolean) zzbeo.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        zBooleanValue = ((Boolean) zzbeo.zzb.zze()).booleanValue();
                        break;
                }
            } else {
                zBooleanValue = ((Boolean) zzbeo.zze.zze()).booleanValue();
            }
            if (zBooleanValue) {
                return new zzfjy(context, i);
            }
        }
        return new zzfkt();
    }

    public static zzfjw zzb(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        zzfjw zzfjwVarZza = zza(context, i);
        if (zzfjwVarZza instanceof zzfjy) {
            zzfjwVarZza.zzh();
            zzfjwVarZza.zzm(i2);
            if (zzfkg.zze(zzlVar.zzp)) {
                zzfjwVarZza.zze(zzlVar.zzp);
            }
        }
        return zzfjwVarZza;
    }
}
