package com.kidoz.sdk.api.ui_views.html_view;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class HtmlManager {
    private static final String ERROR_ILLEGAL_AD_TYPE = "Error: Kidoz HtmlManager got an unknown adType.";
    private static final String TAG = "KidozHtmlManager";
    private static Map<String, HtmlViewWrapper> htmlViewsMap = new HashMap();

    public static HtmlViewWrapper getIntrstDefaultHtmlView(String str) {
        return htmlViewsMap.remove(str);
    }

    public static HtmlViewWrapper initIntrstDefaultHtmlView(Context context, String str) {
        HtmlViewWrapper htmlViewWrapper = new HtmlViewWrapper(context, false);
        htmlViewsMap.put(str, htmlViewWrapper);
        return htmlViewWrapper;
    }
}
