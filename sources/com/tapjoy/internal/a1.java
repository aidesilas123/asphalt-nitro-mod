package com.tapjoy.internal;

import android.opengl.GLSurfaceView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class a1 implements u3 {
    @Override // com.tapjoy.internal.u3
    public final boolean a(Runnable runnable) {
        WeakReference weakReference = h.a.a;
        GLSurfaceView gLSurfaceView = (GLSurfaceView) (weakReference != null ? weakReference.get() : null);
        if (gLSurfaceView == null) {
            return false;
        }
        gLSurfaceView.queueEvent(runnable);
        return true;
    }
}
