package com.gameloft.glads;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class GLAdsV3 {
    public static void Initialize(Activity activity, ViewGroup viewGroup) {
        Utils.SetActivity(activity);
        Utils.SetParentView(viewGroup);
    }

    public static boolean onActivityResult(int i, int i2, Intent intent) {
        return WebViewFileChooser.onActivityResult(i, i2, intent);
    }
}
