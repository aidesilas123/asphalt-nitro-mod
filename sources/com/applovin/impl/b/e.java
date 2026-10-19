package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.utils.y;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static final List<String> aXk = Arrays.asList(MimeTypes.VIDEO_MP4, "video/webm", MimeTypes.VIDEO_H263, "video/x-matroska");
    private final JSONObject aXm;
    private final JSONObject awB;
    private final com.applovin.impl.sdk.n sdk;
    private final com.applovin.impl.sdk.ad.b source;
    protected List<y> aXl = new ArrayList();
    private final long createdAtMillis = System.currentTimeMillis();

    public e(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.aXm = jSONObject;
        this.awB = jSONObject2;
        this.source = bVar;
    }

    public JSONObject FR() {
        return this.awB;
    }

    public int GE() {
        return u.U(this.aXm);
    }

    public int Mr() {
        return this.aXl.size();
    }

    public List<y> Ms() {
        return this.aXl;
    }

    public JSONObject Mt() {
        return this.aXm;
    }

    public List<String> Mu() {
        List<String> listExplode = CollectionUtils.explode(JsonUtils.getString(this.aXm, "vast_preferred_video_types", null));
        return !listExplode.isEmpty() ? listExplode : aXk;
    }

    public long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    public com.applovin.impl.sdk.ad.b getSource() {
        return this.source;
    }
}
