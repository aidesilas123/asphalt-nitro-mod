package com.json;

import android.app.Activity;
import android.os.Handler;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.testSuite.TestSuiteActivity;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u001b¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002J\u000e\u0010\u0005\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\fJ\u000e\u0010\t\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\fJ&\u0010\u0005\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0005\u001a\u00020\fR\"\u0010\u001a\u001a\u0010\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00020\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010!¨\u0006&"}, d2 = {"Lcom/ironsource/xb;", "", "Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;", "activity", "Landroid/widget/RelativeLayout;", "a", "", "marginPercentageFromTop", "Landroid/widget/FrameLayout$LayoutParams;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/dc;", "loadAdConfig", "", "", "c", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "", "description", "", "width", "height", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "mTestSuiteActivityWeakReference", "Landroid/os/Handler;", "Landroid/os/Handler;", "mHandler", "Landroid/widget/RelativeLayout;", "mBannerContainer", "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", "mBannerLayout", "handler", "<init>", "(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Landroid/os/Handler;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class xb {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final WeakReference<TestSuiteActivity> mTestSuiteActivityWeakReference;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Handler mHandler;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private RelativeLayout mBannerContainer;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private IronSourceBannerLayout mBannerLayout;

    public xb(TestSuiteActivity activity, Handler handler) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.mTestSuiteActivityWeakReference = new WeakReference<>(activity);
        this.mHandler = handler;
    }

    private final RelativeLayout a(TestSuiteActivity activity) {
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(xb this$0) {
        RelativeLayout container;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RelativeLayout relativeLayout = this$0.mBannerContainer;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
        TestSuiteActivity testSuiteActivityG = this$0.g();
        if (testSuiteActivityG != null && (container = testSuiteActivityG.getContainer()) != null) {
            container.removeView(this$0.mBannerContainer);
        }
        this$0.mBannerContainer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(xb this$0, TestSuiteActivity testSuiteActivity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RelativeLayout relativeLayout = this$0.mBannerContainer;
        if (relativeLayout != null) {
            relativeLayout.addView(this$0.mBannerLayout);
        }
        testSuiteActivity.getContainer().addView(this$0.mBannerContainer);
    }

    private final FrameLayout.LayoutParams d(double d2) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = (int) (((double) fc.a.a()) * d2);
        return layoutParams;
    }

    private final TestSuiteActivity g() {
        return this.mTestSuiteActivityWeakReference.get();
    }

    public final void a() {
        IronSourceBannerLayout ironSourceBannerLayout = this.mBannerLayout;
        if (ironSourceBannerLayout != null) {
            fc.a.a(ironSourceBannerLayout);
        }
        this.mHandler.post(new Runnable() { // from class: com.ironsource.j8
            @Override // java.lang.Runnable
            public final void run() {
                xb.b(this.a);
            }
        });
        this.mBannerLayout = null;
    }

    public final void a(double marginPercentageFromTop) {
        if (this.mBannerContainer == null) {
            IronSourceBannerLayout ironSourceBannerLayout = this.mBannerLayout;
            if (ironSourceBannerLayout != null) {
                ironSourceBannerLayout.setLayoutParams(d(marginPercentageFromTop));
            }
            final TestSuiteActivity testSuiteActivityG = g();
            if (testSuiteActivityG != null) {
                this.mBannerContainer = a(testSuiteActivityG);
                this.mHandler.post(new Runnable() { // from class: com.ironsource.ia
                    @Override // java.lang.Runnable
                    public final void run() {
                        xb.c(this.a, testSuiteActivityG);
                    }
                });
            }
        }
    }

    public final void a(dc loadAdConfig) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        fc fcVar = fc.a;
        fcVar.a(IronSource.AD_UNIT.INTERSTITIAL, loadAdConfig);
        fcVar.g();
    }

    public final void a(dc loadAdConfig, String description, int width, int height) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        Intrinsics.checkNotNullParameter(description, "description");
        a();
        fc fcVar = fc.a;
        fcVar.a(IronSource.AD_UNIT.BANNER, loadAdConfig);
        TestSuiteActivity testSuiteActivityG = g();
        if (testSuiteActivityG != null) {
            IronSourceBannerLayout ironSourceBannerLayoutA = fcVar.a(testSuiteActivityG, fcVar.a(description, width, height));
            this.mBannerLayout = ironSourceBannerLayoutA;
            fcVar.b(ironSourceBannerLayoutA);
        }
    }

    public final void b(dc loadAdConfig) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        fc fcVar = fc.a;
        fcVar.a(IronSource.AD_UNIT.REWARDED_VIDEO, loadAdConfig);
        fcVar.h();
    }

    public final boolean c() {
        return fc.a.e();
    }

    public final boolean d() {
        return fc.a.f();
    }

    public final void e() {
        fc.a.a((Activity) this.mTestSuiteActivityWeakReference.get());
    }

    public final void f() {
        fc.a.b((Activity) this.mTestSuiteActivityWeakReference.get());
    }
}
