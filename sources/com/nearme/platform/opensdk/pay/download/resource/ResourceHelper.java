package com.nearme.platform.opensdk.pay.download.resource;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes4.dex */
public class ResourceHelper {
    public static final int getDp(Context context, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static final int getPx(Context context, float f2) {
        return (int) TypedValue.applyDimension(0, f2, context.getResources().getDisplayMetrics());
    }
}
