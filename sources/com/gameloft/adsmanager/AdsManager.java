package com.gameloft.adsmanager;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class AdsManager {
    static Activity mainActivity;
    static ViewGroup parentViewGroup;
    static RelativeLayout relativeLayout;

    public static void Init(Activity activity, ViewGroup viewGroup) {
        parentViewGroup = viewGroup;
        mainActivity = activity;
        JavaUtils.AdsManagerLogInfo("AdsManager.java", "Init", "MainAcitivity and ParentViewGroup set");
        parentViewGroup.post(new Runnable() { // from class: com.gameloft.adsmanager.AdsManager.1
            @Override // java.lang.Runnable
            public void run() {
                AdsManager.relativeLayout = new RelativeLayout(AdsManager.parentViewGroup.getContext());
                AdsManager.parentViewGroup.addView(AdsManager.relativeLayout, new ViewGroup.LayoutParams(-1, -1));
            }
        });
        JavaUtils.Init();
    }

    public static void SetActivity(Activity activity) {
        mainActivity = activity;
        JavaUtils.Init();
    }

    public static void SetView(ViewGroup viewGroup) {
        parentViewGroup = viewGroup;
        viewGroup.post(new Runnable() { // from class: com.gameloft.adsmanager.AdsManager.2
            @Override // java.lang.Runnable
            public void run() {
                AdsManager.relativeLayout = new RelativeLayout(AdsManager.parentViewGroup.getContext());
                AdsManager.parentViewGroup.addView(AdsManager.relativeLayout, new ViewGroup.LayoutParams(-1, -1));
            }
        });
    }
}
