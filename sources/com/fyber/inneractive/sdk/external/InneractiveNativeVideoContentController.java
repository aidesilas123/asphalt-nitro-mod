package com.fyber.inneractive.sdk.external;

import com.fyber.inneractive.sdk.flow.g0;
import com.fyber.inneractive.sdk.util.q;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveNativeVideoContentController extends g0 {
    public WeakReference<Renderer> a;

    public interface Renderer {
        void pauseVideo();

        void playVideo();
    }

    @Override // com.fyber.inneractive.sdk.flow.x
    public boolean canControl(InneractiveAdSpot inneractiveAdSpot) {
        return inneractiveAdSpot.getAdContent().isVideoAd();
    }

    public void pauseVideo() {
        if (((Renderer) q.a(this.a)) != null) {
            this.a.get().pauseVideo();
        }
    }

    public void playVideo() {
        Renderer renderer = (Renderer) q.a(this.a);
        if (renderer != null) {
            renderer.playVideo();
        }
    }

    public void setControlledRenderer(Renderer renderer) {
        this.a = new WeakReference<>(renderer);
    }
}
