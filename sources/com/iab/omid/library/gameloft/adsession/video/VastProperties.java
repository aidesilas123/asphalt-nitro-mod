package com.iab.omid.library.gameloft.adsession.video;

import com.iab.omid.library.gameloft.d.c;
import com.iab.omid.library.gameloft.d.e;
import com.json.o2;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class VastProperties {
    private static final String TAG = "VastProperties: ";
    private final boolean isAutoPlay;
    private final boolean isSkippable;
    private final Position position;
    private final Float skipOffset;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.isSkippable = z;
        this.skipOffset = f2;
        this.isAutoPlay = z2;
        this.position = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableVideo(boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableVideo(float f2, boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f2), z, position);
    }

    JSONObject toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.isSkippable);
            if (this.isSkippable) {
                jSONObject.put("skipOffset", this.skipOffset);
            }
            jSONObject.put("autoPlay", this.isAutoPlay);
            jSONObject.put(o2.h.L, this.position);
        } catch (JSONException e2) {
            c.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }
}
