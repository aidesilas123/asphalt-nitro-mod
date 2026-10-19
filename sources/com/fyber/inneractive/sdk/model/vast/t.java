package com.fyber.inneractive.sdk.model.vast;

import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum t {
    EVENT_FINAL_RETURN("finalReturn"),
    EVENT_IMPRESSION("impression"),
    EVENT_START("start"),
    EVENT_FIRSTQ("firstQuartile"),
    EVENT_MID(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT),
    EVENT_THIRDQ("thirdQuartile"),
    EVENT_COMPLETE(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE),
    EVENT_MUTE(CampaignEx.JSON_NATIVE_VIDEO_MUTE),
    EVENT_UNMUTE(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE),
    EVENT_PAUSE(CampaignEx.JSON_NATIVE_VIDEO_PAUSE),
    EVENT_RESUME(CampaignEx.JSON_NATIVE_VIDEO_RESUME),
    EVENT_FULLSCREEN(WebPreferenceConstants.FULL_SCREEN),
    EVENT_EXIT_FULLSCREEN("exitFullscreen"),
    EVENT_CREATIVE_VIEW("creativeView"),
    EVENT_CLICK(CampaignEx.JSON_NATIVE_VIDEO_CLICK),
    EVENT_ERROR("error"),
    EVENT_REWIND("rewind"),
    EVENT_CLOSE("close"),
    EVENT_VERIFICATION_NOT_EXECUTED("verificationNotExecuted"),
    EVENT_EXPAND("expand"),
    EVENT_COLLAPSE("collapse"),
    EVENT_CLOSE_LINEAR("closeLinear"),
    EVENT_PROGRESS("progress"),
    UNKNOWN("UnkownEvent");

    private static final Map<String, t> sEventsMap = new HashMap();
    private final String mKey;

    static {
        for (t tVar : values()) {
            sEventsMap.put(tVar.mKey, tVar);
        }
    }

    t(String str) {
        this.mKey = str;
    }

    public static t a(String str) {
        Map<String, t> map = sEventsMap;
        return map.containsKey(str) ? map.get(str) : UNKNOWN;
    }

    public String e() {
        return this.mKey;
    }
}
