package com.bytedance.sdk.openadsdk.h.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.openadsdk.core.x;
import org.json.JSONObject;

/* JADX INFO: compiled from: PlayableEndCardOverlayMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends com.bytedance.sdk.component.a.e<JSONObject, JSONObject> {
    private final x a;

    public f(x xVar) {
        this.a = xVar;
    }

    public static void a(r rVar, x xVar) {
        rVar.a("overlayRenderFinish", new f(xVar));
    }

    @Override // com.bytedance.sdk.component.a.e
    @Nullable
    public JSONObject a(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.a.f fVar) throws Exception {
        this.a.n();
        return null;
    }
}
