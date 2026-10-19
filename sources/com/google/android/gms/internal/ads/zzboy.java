package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzboy implements zzbok {
    private final zzbom zza;
    private final zzbon zzb;
    private final zzbog zzc;
    private final String zzd;

    zzboy(zzbog zzbogVar, String str, zzbon zzbonVar, zzbom zzbomVar) {
        this.zzc = zzbogVar;
        this.zzd = str;
        this.zzb = zzbonVar;
        this.zza = zzbomVar;
    }

    static /* bridge */ /* synthetic */ void zzd(zzboy zzboyVar, zzboa zzboaVar, zzboh zzbohVar, Object obj, zzccf zzccfVar) {
        try {
            com.google.android.gms.ads.internal.zzt.zzp();
            String string = UUID.randomUUID().toString();
            zzbkc.zzo.zzc(string, new zzbox(zzboyVar, zzboaVar, zzccfVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", string);
            jSONObject.put("args", zzboyVar.zzb.zzb(obj));
            zzbohVar.zzl(zzboyVar.zzd, jSONObject);
        } catch (Exception e2) {
            try {
                zzccfVar.zzd(e2);
                zzcbn.zzh("Unable to invokeJavascript", e2);
            } finally {
                zzboaVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgai
    public final h0 zza(@Nullable Object obj) throws Exception {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbok
    public final h0 zzb(Object obj) {
        zzccf zzccfVar = new zzccf();
        zzboa zzboaVarZzb = this.zzc.zzb(null);
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise created");
        zzboaVarZzb.zzi(new zzbov(this, zzboaVarZzb, obj, zzccfVar), new zzbow(this, zzccfVar, zzboaVarZzb));
        return zzccfVar;
    }
}
