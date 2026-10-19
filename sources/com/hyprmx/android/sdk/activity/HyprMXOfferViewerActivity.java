package com.hyprmx.android.sdk.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;", "<init>", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXOfferViewerActivity extends AppCompatActivity implements HyprMXBaseViewController.a {
    public HyprMXBaseViewController a;

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController.a
    public final void a(int i) {
        setRequestedOrientation(i);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            BuildersKt__Builders_commonKt.launch$default(hyprMXBaseViewController, null, null, new m(hyprMXBaseViewController, i, i2, intent, null), 3, null);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            hyprMXBaseViewController.n.g();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            Intrinsics.checkNotNullParameter(newConfig, "newConfig");
            hyprMXBaseViewController.t.getWebView().scrollTo(0, 0);
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        HyprMXBaseViewController hyprMXBaseViewControllerA;
        super.onCreate(bundle);
        HyprMXLog.d("onCreate");
        overridePendingTransition(0, 0);
        if (a.a == null) {
            HyprMXLog.w("Cancelling ad. Cannot recreate HyprMXOfferViewerActivity.");
            finish();
            return;
        }
        getWindow().getDecorView().setSystemUiVisibility(5380);
        b bVar = a.a;
        if (bVar == null || (hyprMXBaseViewControllerA = bVar.a(this, bundle, this)) == null) {
            hyprMXBaseViewControllerA = null;
        } else {
            hyprMXBaseViewControllerA.W();
            getLifecycle().addObserver(hyprMXBaseViewControllerA);
            getLifecycle().addObserver(hyprMXBaseViewControllerA.f4440e);
        }
        this.a = hyprMXBaseViewControllerA;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        HyprMXLog.d("onDestroy");
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            hyprMXBaseViewController.X();
        }
        this.a = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        HyprMXBaseViewController hyprMXBaseViewController;
        HyprMXLog.d(o2.h.t0);
        super.onPause();
        HyprMXBaseViewController hyprMXBaseViewController2 = this.a;
        if (hyprMXBaseViewController2 != null) {
            hyprMXBaseViewController2.Y();
        }
        if (!isFinishing() || (hyprMXBaseViewController = this.a) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(hyprMXBaseViewController, null, null, new l(hyprMXBaseViewController, null), 3, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i, permissions, grantResults);
        ArrayList arrayList = new ArrayList();
        int length = permissions.length;
        for (int i2 = 0; i2 < length; i2++) {
            arrayList.add(new com.hyprmx.android.sdk.utility.l0(permissions[i2], grantResults[i2] == 0));
        }
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            hyprMXBaseViewController.a(arrayList, i);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        HyprMXLog.d(o2.h.u0);
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            hyprMXBaseViewController.Z();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        HyprMXLog.d("onStart");
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            Intrinsics.checkNotNullParameter("onStart", NotificationCompat.CATEGORY_EVENT);
            hyprMXBaseViewController.o.i("onStart");
            if (!hyprMXBaseViewController.n.P()) {
                hyprMXBaseViewController.j.a(hyprMXBaseViewController);
            }
            RelativeLayout relativeLayout = hyprMXBaseViewController.q;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
                relativeLayout = null;
            }
            relativeLayout.getViewTreeObserver().addOnGlobalLayoutListener(hyprMXBaseViewController);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        HyprMXLog.d("onStop");
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        if (hyprMXBaseViewController != null) {
            hyprMXBaseViewController.a0();
        }
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        if (z) {
            getWindow().getDecorView().setSystemUiVisibility(5380);
        }
    }
}
