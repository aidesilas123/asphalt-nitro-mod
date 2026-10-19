package com.json.mediationsdk.testSuite;

import android.app.Activity;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.json.a7;
import com.json.ac;
import com.json.gc;
import com.json.kc;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0014J\b\u0010\u000f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0016J\u0006\u0010\u0012\u001a\u00020\u0011R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0004\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;", "Landroid/app/Activity;", "Lcom/ironsource/a7;", "Lorg/json/JSONObject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "a", "Landroid/widget/RelativeLayout$LayoutParams;", "c", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onBackPressed", "onDestroy", "onUIReady", "onClosed", "Landroid/widget/RelativeLayout;", "getContainer", "Landroid/widget/RelativeLayout;", "mContainer", "Lcom/ironsource/kc;", "Lcom/ironsource/kc;", "mWebViewWrapper", "Lcom/ironsource/gc;", "Lcom/ironsource/gc;", "mNativeBridge", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class TestSuiteActivity extends Activity implements a7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private RelativeLayout mContainer;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private kc mWebViewWrapper;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private gc mNativeBridge;

    private final String a() {
        Bundle extras;
        if (getIntent() == null || getIntent().getExtras() == null || (extras = getIntent().getExtras()) == null) {
            return null;
        }
        return extras.getString(ac.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TestSuiteActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final JSONObject c() {
        if (getIntent() != null && getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            String string = extras != null ? extras.getString(ac.a) : null;
            if (!(string == null || string.length() == 0)) {
                return new JSONObject(string);
            }
        }
        return new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TestSuiteActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        kc kcVar = this$0.mWebViewWrapper;
        kc kcVar2 = null;
        if (kcVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            kcVar = null;
        }
        if (kcVar.getMAppWebView().getParent() == null) {
            RelativeLayout relativeLayout = this$0.mContainer;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout = null;
            }
            kc kcVar3 = this$0.mWebViewWrapper;
            if (kcVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                kcVar3 = null;
            }
            relativeLayout.removeView(kcVar3.getMLoadingScreenWebView());
            RelativeLayout relativeLayout2 = this$0.mContainer;
            if (relativeLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout2 = null;
            }
            kc kcVar4 = this$0.mWebViewWrapper;
            if (kcVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                kcVar4 = null;
            }
            relativeLayout2.addView(kcVar4.getMAppWebView(), this$0.e());
            kc kcVar5 = this$0.mWebViewWrapper;
            if (kcVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            } else {
                kcVar2 = kcVar5;
            }
            kcVar2.b();
        }
    }

    private final RelativeLayout.LayoutParams e() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    public final RelativeLayout getContainer() {
        RelativeLayout relativeLayout = this.mContainer;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mContainer");
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.json.a7
    public void onClosed() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.b
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.b(this.a);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.mContainer = relativeLayout;
        setContentView(relativeLayout, e());
        kc kcVar = new kc(this, this, c(), a());
        this.mWebViewWrapper = kcVar;
        gc gcVar = new gc(kcVar);
        this.mNativeBridge = gcVar;
        gcVar.d();
        RelativeLayout relativeLayout2 = this.mContainer;
        kc kcVar2 = null;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout2 = null;
        }
        kc kcVar3 = this.mWebViewWrapper;
        if (kcVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            kcVar2 = kcVar3;
        }
        relativeLayout2.addView(kcVar2.getMLoadingScreenWebView(), e());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        gc gcVar = this.mNativeBridge;
        kc kcVar = null;
        if (gcVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNativeBridge");
            gcVar = null;
        }
        gcVar.a();
        RelativeLayout relativeLayout = this.mContainer;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout = null;
        }
        relativeLayout.removeAllViews();
        kc kcVar2 = this.mWebViewWrapper;
        if (kcVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            kcVar = kcVar2;
        }
        kcVar.a();
        super.onDestroy();
    }

    @Override // com.json.a7
    public void onUIReady() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.a
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.d(this.a);
            }
        });
    }
}
