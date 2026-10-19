package com.json.mediationsdk;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.json.f1;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.BannerListener;
import com.json.mediationsdk.sdk.LevelPlayBannerListener;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceBannerLayout extends FrameLayout {
    private View a;
    private ISBannerSize b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Activity f6225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f6228g;

    public interface b {
        void onWindowFocusChanged(boolean z);
    }

    public IronSourceBannerLayout(Activity activity, ISBannerSize iSBannerSize) {
        super(activity);
        this.f6226e = false;
        this.f6227f = false;
        this.f6225d = activity;
        this.b = iSBannerSize == null ? ISBannerSize.BANNER : iSBannerSize;
    }

    protected void a() {
        this.f6226e = true;
        this.f6225d = null;
        this.b = null;
        this.c = null;
        this.a = null;
        this.f6228g = null;
        removeBannerListener();
    }

    protected IronSourceBannerLayout b() {
        IronSourceBannerLayout ironSourceBannerLayout = new IronSourceBannerLayout(this.f6225d, this.b);
        ironSourceBannerLayout.setPlacementName(this.c);
        return ironSourceBannerLayout;
    }

    public Activity getActivity() {
        return this.f6225d;
    }

    public BannerListener getBannerListener() {
        return f1.a().c();
    }

    public LevelPlayBannerListener getLevelPlayBannerListener() {
        return f1.a().b();
    }

    public String getPlacementName() {
        return this.c;
    }

    public ISBannerSize getSize() {
        return this.b;
    }

    public b getWindowFocusChangedListener() {
        return this.f6228g;
    }

    public boolean isDestroyed() {
        return this.f6226e;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        b bVar = this.f6228g;
        if (bVar != null) {
            bVar.onWindowFocusChanged(z);
        }
    }

    public void removeBannerListener() {
        IronLog.API.info();
        f1.a().a((BannerListener) null);
        f1.a().a((LevelPlayBannerListener) null);
    }

    public void setBannerListener(BannerListener bannerListener) {
        IronLog.API.info();
        f1.a().a(bannerListener);
    }

    public void setLevelPlayBannerListener(LevelPlayBannerListener levelPlayBannerListener) {
        IronLog.API.info();
        f1.a().a(levelPlayBannerListener);
    }

    public void setPlacementName(String str) {
        this.c = str;
    }

    public void setWindowFocusChangedListener(b bVar) {
        this.f6228g = bVar;
    }
}
