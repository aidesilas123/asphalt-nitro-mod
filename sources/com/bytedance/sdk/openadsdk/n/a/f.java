package com.bytedance.sdk.openadsdk.n.a;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.y;

/* JADX INFO: compiled from: PAGMrcVisibilityTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static boolean a(View view, int i) {
        return a(view, false, i);
    }

    public static boolean a(View view, boolean z, int i) {
        if (view == null) {
            return false;
        }
        return y.a(view, z ? 30 : 50, i);
    }
}
