package org.greenrobot.eventbus.android;

import org.greenrobot.eventbus.Logger;
import org.greenrobot.eventbus.f;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AndroidComponents {
    private static final AndroidComponents a;
    public final Logger b;
    public final f c;

    static {
        a = AndroidDependenciesDetector.isAndroidSDKAvailable() ? AndroidDependenciesDetector.instantiateAndroidComponents() : null;
    }

    public AndroidComponents(Logger logger, f fVar) {
        this.b = logger;
        this.c = fVar;
    }

    public static boolean areAvailable() {
        return a != null;
    }

    public static AndroidComponents get() {
        return a;
    }
}
