package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class de extends cx {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static WebView m625(List<Object> list) {
        int iIntValue;
        Activity activity = (Activity) cx.m592(list, 0, Activity.class);
        List arrayList = new ArrayList();
        String str = null;
        if (list.size() > 1) {
            iIntValue = ((Integer) cx.m592(list, 1, Integer.class)).intValue();
            if (list.size() > 2) {
                str = (String) cx.m592(list, 2, String.class);
                if (list.size() > 3) {
                    arrayList = (List) cx.m592(list, 3, List.class);
                }
            }
        } else {
            iIntValue = -1;
        }
        return (WebView) ka.m1010(activity, WebView.class, iIntValue, (List<String>) arrayList, str);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static View m626(List<Object> list) {
        return ka.m1006((Activity) cx.m592(list, 0, Activity.class));
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static boolean m627(List<Object> list) {
        return ka.m1012((View) cx.m592(list, 0, View.class));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static <E extends View> E m628(List<Object> list) {
        return (E) ka.m1008((View) cx.m592(list, 0, View.class), (Class) cx.m592(list, 1, Class.class), ((Boolean) cx.m592(list, 2, Boolean.class)).booleanValue());
    }
}
