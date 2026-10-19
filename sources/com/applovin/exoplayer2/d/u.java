package com.applovin.exoplayer2.d;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.drm.WidevineUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    private static long a(Map<String, String> map, String str) {
        if (map == null) {
            return C.TIME_UNSET;
        }
        try {
            String str2 = map.get(str);
            return str2 != null ? Long.parseLong(str2) : C.TIME_UNSET;
        } catch (NumberFormatException unused) {
            return C.TIME_UNSET;
        }
    }

    @Nullable
    public static Pair<Long, Long> b(f fVar) {
        Map<String, String> mapHw = fVar.hw();
        if (mapHw == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(mapHw, WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(a(mapHw, WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
