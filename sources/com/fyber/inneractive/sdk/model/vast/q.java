package com.fyber.inneractive.sdk.model.vast;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum q {
    MEDIA_TYPE_MP4(MimeTypes.VIDEO_MP4),
    MEDIA_TYPE_3GPP(MimeTypes.VIDEO_H263),
    MEDIA_TYPE_WEBM("video/webm"),
    MEDIA_TYPE_X_MPEG(MimeTypes.APPLICATION_M3U8),
    UNKNOWN("unknown");

    private static final Map<String, q> sMediaTypeMap = new HashMap();
    public final String mimeType;

    static {
        for (q qVar : values()) {
            sMediaTypeMap.put(qVar.mimeType, qVar);
        }
    }

    q(String str) {
        this.mimeType = str;
    }

    public static q a(String str) {
        Map<String, q> map = sMediaTypeMap;
        return map.containsKey(str) ? map.get(str) : UNKNOWN;
    }
}
