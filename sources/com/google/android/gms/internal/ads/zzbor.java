package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbor {
    private static final Charset zzc = Charset.forName(C.UTF8_NAME);
    public static final zzboo zza = new zzboq();
    public static final zzbom zzb = new zzbom() { // from class: com.google.android.gms.internal.ads.zzbop
        @Override // com.google.android.gms.internal.ads.zzbom
        public final Object zza(JSONObject jSONObject) {
            return zzbor.zza(jSONObject);
        }
    };

    static /* synthetic */ InputStream zza(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
