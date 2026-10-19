package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfnk extends zzfng {
    public zzfnk(zzfmz zzfmzVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfmzVar, hashSet, jSONObject, j);
    }

    private final void zzc(String str) {
        zzflx zzflxVarZza = zzflx.zza();
        if (zzflxVarZza != null) {
            for (zzflj zzfljVar : zzflxVarZza.zzc()) {
                if (((zzfng) this).zza.contains(zzfljVar.zzh())) {
                    zzfljVar.zzg().zzd(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfnh, android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        zzc(str);
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfnh
    /* JADX INFO: renamed from: zza */
    public final void onPostExecute(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}
