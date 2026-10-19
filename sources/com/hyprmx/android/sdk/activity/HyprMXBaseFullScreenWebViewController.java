package com.hyprmx.android.sdk.activity;

import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXBaseFullScreenWebViewController;", "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXBaseFullScreenWebViewController extends HyprMXBaseViewController {
    public final com.hyprmx.android.sdk.analytics.b A;
    public RelativeLayout B;
    public RelativeLayout C;
    public final com.hyprmx.android.sdk.api.data.a z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HyprMXBaseFullScreenWebViewController(AppCompatActivity activity, Bundle bundle, com.hyprmx.android.sdk.api.data.a ad, HyprMXBaseViewController.a hyprMXBaseViewControllerListener, com.hyprmx.android.sdk.webview.s webViewFactory, com.hyprmx.android.sdk.analytics.b clientErrorController, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.om.g gVar, com.hyprmx.android.sdk.powersavemode.a powerSaveMode, ThreadAssert threadAssert, CoroutineScope scope, com.hyprmx.android.sdk.network.i networkConnectionMonitor, com.hyprmx.android.sdk.utility.h0 internetConnectionDialog, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.fullscreen.e fullScreenSharedConnector) {
        super(activity, bundle, hyprMXBaseViewControllerListener, activityResultListener, powerSaveMode, webViewFactory, gVar, ad, scope, threadAssert, null, networkConnectionMonitor, internetConnectionDialog, eventPublisher, fullScreenSharedConnector, 484352);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(hyprMXBaseViewControllerListener, "hyprMXBaseViewControllerListener");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(powerSaveMode, "powerSaveMode");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(networkConnectionMonitor, "networkConnectionMonitor");
        Intrinsics.checkNotNullParameter(internetConnectionDialog, "internetConnectionDialog");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        this.z = ad;
        this.A = clientErrorController;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void a(Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        if (this.n.P()) {
            if (this.n.n() != null) {
                HyprMXLog.d("loading thank you url");
                String strN = this.n.n();
                if (strN != null) {
                    this.t.a(strN, (String) null);
                    return;
                }
                return;
            }
            this.A.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeSDKInternalError, "thank you url cannot be null, when payout is complete.", 4);
        }
        T();
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.d
    public final void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        this.t.a("javascript:".concat(script), (String) null);
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void b0() {
        super.b0();
        RelativeLayout relativeLayout = new RelativeLayout(this.a);
        Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
        this.B = relativeLayout;
        relativeLayout.setId(R.id.hyprmx_offer_container);
        RelativeLayout relativeLayout2 = this.B;
        RelativeLayout.LayoutParams layoutParams = null;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("offerContainer");
            relativeLayout2 = null;
        }
        relativeLayout2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout relativeLayoutU = U();
        RelativeLayout relativeLayout3 = this.B;
        if (relativeLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("offerContainer");
            relativeLayout3 = null;
        }
        this.h.runningOnMainThread();
        RelativeLayout.LayoutParams layoutParams2 = this.r;
        if (layoutParams2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adViewLayout");
            layoutParams2 = null;
        }
        relativeLayoutU.addView(relativeLayout3, layoutParams2);
        this.t.setId(R.id.hyprmx_primary_web_view);
        this.t.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout relativeLayout4 = this.B;
        if (relativeLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("offerContainer");
            relativeLayout4 = null;
        }
        com.hyprmx.android.sdk.webview.f fVar = this.t;
        this.h.runningOnMainThread();
        RelativeLayout.LayoutParams layoutParams3 = this.r;
        if (layoutParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adViewLayout");
        } else {
            layoutParams = layoutParams3;
        }
        relativeLayout4.addView(fVar, layoutParams);
        RelativeLayout relativeLayout5 = new RelativeLayout(this.a);
        this.C = relativeLayout5;
        Intrinsics.checkNotNull(relativeLayout5);
        relativeLayout5.setId(R.id.hyprmx_full_screen_video_container);
        RelativeLayout relativeLayout6 = this.C;
        Intrinsics.checkNotNull(relativeLayout6);
        relativeLayout6.setVisibility(4);
        RelativeLayout relativeLayout7 = this.C;
        Intrinsics.checkNotNull(relativeLayout7);
        relativeLayout7.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        U().addView(this.C, new RelativeLayout.LayoutParams(-1, -1));
    }
}
