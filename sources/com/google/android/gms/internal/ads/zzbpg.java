package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbpg implements zzgai {
    private final zzbom zza;
    private final zzbon zzb;
    private final String zzc = "google.afma.activeView.handleUpdate";
    private final h0 zzd;

    zzbpg(h0 h0Var, String str, zzbon zzbonVar, zzbom zzbomVar) {
        this.zzd = h0Var;
        this.zzb = zzbonVar;
        this.zza = zzbomVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgai
    public final h0 zza(Object obj) throws Exception {
        return zzb(obj);
    }

    public final h0 zzb(final Object obj) {
        return zzgbb.zzn(this.zzd, new zzgai() { // from class: com.google.android.gms.internal.ads.zzbpe
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj2) {
                return this.zza.zzc(obj, (zzboh) obj2);
            }
        }, zzcca.zzf);
    }

    final /* synthetic */ h0 zzc(Object obj, zzboh zzbohVar) throws Exception {
        zzccf zzccfVar = new zzccf();
        com.google.android.gms.ads.internal.zzt.zzp();
        String string = UUID.randomUUID().toString();
        zzbkc.zzo.zzc(string, new zzbpf(this, zzccfVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", string);
        jSONObject.put("args", (JSONObject) obj);
        zzbohVar.zzl(this.zzc, jSONObject);
        return zzccfVar;
    }
}
