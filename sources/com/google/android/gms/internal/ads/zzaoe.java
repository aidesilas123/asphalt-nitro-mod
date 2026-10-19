package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.json.b4;
import com.json.o2;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzaoe extends zzana {
    private final Object zza;

    @Nullable
    @GuardedBy("mLock")
    private final zzanf zzb;

    public zzaoe(int i, String str, zzanf zzanfVar, @Nullable zzane zzaneVar) {
        super(i, str, zzaneVar);
        this.zza = new Object();
        this.zzb = zzanfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    protected final zzang zzh(zzamw zzamwVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzamwVar.zzb;
            Map map = zzamwVar.zzc;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get(b4.I)) != null) {
                String[] strArrSplit = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= strArrSplit.length) {
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i].trim().split(o2.i.b, 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals(b4.K)) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzamwVar.zzb);
        }
        return zzang.zzb(str, zzanx.zzb(zzamwVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzana
    /* JADX INFO: renamed from: zzz, reason: merged with bridge method [inline-methods] */
    public void zzo(String str) {
        zzanf zzanfVar;
        synchronized (this.zza) {
            zzanfVar = this.zzb;
        }
        zzanfVar.zza(str);
    }
}
