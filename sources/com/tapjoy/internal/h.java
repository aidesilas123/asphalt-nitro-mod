package com.tapjoy.internal;

import android.opengl.GLSurfaceView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h {
    public static final c8 a = new c8();
    public static final c8 b = new c8();
    public static final a1 c = new a1();

    public static Thread a() {
        WeakReference weakReference = b.a;
        return (Thread) (weakReference != null ? weakReference.get() : null);
    }

    public static void a(GLSurfaceView gLSurfaceView) {
        a.a(gLSurfaceView);
        gLSurfaceView.queueEvent(new n1());
    }
}
