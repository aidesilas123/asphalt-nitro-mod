package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPrivacyPolicy;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyNative {
    public static Object createPlacement(Context context, String str, TJPlacementListener tJPlacementListener) {
        return new TJPlacement(context, str, tJPlacementListener);
    }

    public static Object getPrivacyPolicy() {
        return TJPrivacyPolicy.getInstance();
    }
}
