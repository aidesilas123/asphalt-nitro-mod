package com.json.mediationsdk.demandOnly;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.json.e1;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes4.dex */
public class ISDemandOnlyBannerLayout extends FrameLayout {
    private View a;
    private ISBannerSize b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Activity f6261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e1 f6263f;

    class a implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ FrameLayout.LayoutParams b;

        a(View view, FrameLayout.LayoutParams layoutParams) {
            this.a = view;
            this.b = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            ISDemandOnlyBannerLayout.this.removeAllViews();
            ViewParent parent = this.a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.a);
            }
            ISDemandOnlyBannerLayout.this.a = this.a;
            ISDemandOnlyBannerLayout.this.addView(this.a, 0, this.b);
        }
    }

    public ISDemandOnlyBannerLayout(Activity activity, ISBannerSize iSBannerSize) {
        super(activity);
        this.f6262e = false;
        this.f6261d = activity;
        this.b = iSBannerSize == null ? ISBannerSize.BANNER : iSBannerSize;
        this.f6263f = new e1();
    }

    protected void b() {
        this.f6262e = true;
        this.f6261d = null;
        this.b = null;
        this.c = null;
        this.a = null;
        removeBannerListener();
    }

    void c(View view, FrameLayout.LayoutParams layoutParams) {
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(view, layoutParams));
    }

    public Activity getActivity() {
        return this.f6261d;
    }

    public ISDemandOnlyBannerListener getBannerDemandOnlyListener() {
        return this.f6263f.a();
    }

    public View getBannerView() {
        return this.a;
    }

    public e1 getListener() {
        return this.f6263f;
    }

    public String getPlacementName() {
        return this.c;
    }

    public ISBannerSize getSize() {
        return this.b;
    }

    public boolean isDestroyed() {
        return this.f6262e;
    }

    public void removeBannerListener() {
        IronLog.API.info();
        this.f6263f.a((Object) null);
    }

    public void setBannerDemandOnlyListener(ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
        IronLog.API.info();
        this.f6263f.a(iSDemandOnlyBannerListener);
    }

    public void setPlacementName(String str) {
        this.c = str;
    }
}
