package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhg {
    private final Map zza;

    zzhg(Map map) {
        this.zza = map;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        if (uri == null) {
            return null;
        }
        Map map = (Map) this.zza.get(uri.toString());
        if (map == null) {
            return null;
        }
        return (String) map.get("".concat(String.valueOf(str3)));
    }
}
