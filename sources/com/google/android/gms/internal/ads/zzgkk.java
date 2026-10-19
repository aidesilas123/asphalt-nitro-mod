package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgkk {
    public static final zzgoq zza = new zzgkj(null);

    public static zzgow zza(zzgdk zzgdkVar) {
        zzgcr zzgcrVar;
        zzgos zzgosVar = new zzgos();
        zzgosVar.zzb(zzgdkVar.zzb());
        Iterator it = zzgdkVar.zzd().iterator();
        while (it.hasNext()) {
            for (zzgdg zzgdgVar : (List) it.next()) {
                int iZzh = zzgdgVar.zzh() - 2;
                if (iZzh == 1) {
                    zzgcrVar = zzgcr.zza;
                } else if (iZzh == 2) {
                    zzgcrVar = zzgcr.zzb;
                } else {
                    if (iZzh != 3) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    zzgcrVar = zzgcr.zzc;
                }
                int iZza = zzgdgVar.zza();
                String strZzf = zzgdgVar.zzf();
                if (strZzf.startsWith("type.googleapis.com/google.crypto.")) {
                    strZzf = strZzf.substring(34);
                }
                zzgosVar.zza(zzgcrVar, iZza, strZzf, zzgdgVar.zzc().name());
            }
        }
        if (zzgdkVar.zza() != null) {
            zzgosVar.zzc(zzgdkVar.zza().zza());
        }
        try {
            return zzgosVar.zzd();
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
