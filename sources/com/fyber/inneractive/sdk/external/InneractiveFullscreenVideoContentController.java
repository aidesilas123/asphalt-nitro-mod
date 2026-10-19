package com.fyber.inneractive.sdk.external;

import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.g0;
import com.fyber.inneractive.sdk.renderers.m;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveFullscreenVideoContentController extends g0 {
    @Override // com.fyber.inneractive.sdk.flow.x
    public boolean canControl(InneractiveAdSpot inneractiveAdSpot) {
        return inneractiveAdSpot.getAdContent() instanceof f0;
    }

    public void setControlledRenderer(m mVar) {
        new WeakReference(mVar);
    }
}
