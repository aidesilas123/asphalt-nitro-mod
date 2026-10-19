package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.json.b4;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcpb implements zzcof {
    private final CookieManager zza;

    public zzcpb(Context context) {
        this.zza = com.google.android.gms.ads.internal.zzt.zzq().zzb(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcof
    public final void zza(Map map) {
        if (this.zza == null) {
            return;
        }
        if (((String) map.get("clear")) == null) {
            String str = (String) map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zza.setCookie((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaM), str);
            return;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaM);
        String cookie = this.zza.getCookie(str2);
        if (cookie != null) {
            List listZzf = zzful.zzc(zzftk.zzc(';')).zzf(cookie);
            for (int i = 0; i < listZzf.size(); i++) {
                CookieManager cookieManager = this.zza;
                Iterator it = zzful.zzc(zzftk.zzc(b4.R)).zzd((String) listZzf.get(i)).iterator();
                Objects.requireNonNull(it);
                if (!it.hasNext()) {
                    throw new IndexOutOfBoundsException("position (0) must be less than the number of elements that remained (0)");
                }
                cookieManager.setCookie(str2, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaw))));
            }
        }
    }
}
