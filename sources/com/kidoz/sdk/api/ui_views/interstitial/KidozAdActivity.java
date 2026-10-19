package com.kidoz.sdk.api.ui_views.interstitial;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;

/* JADX INFO: loaded from: classes4.dex */
public class KidozAdActivity extends Activity {
    public static final String AD_TYPE_KEY = "ad_type_key";
    public static final String DISABLE_BACK_KEY = "disableBack";
    public static final String STYLE_ID_KEY = "styleId";
    public static final String UNIQUE_PLACEMENT_ID_KEY = "unique_placement_id_key";
    private KidozInterstitial.AD_TYPE mAdType;
    private Handler mHandler;
    protected RelativeLayout mInnerContainer;
    private int mPreviousOrientation;
    protected HtmlViewWrapper mWebView;
    protected int mBgColor = ViewCompat.MEASURED_STATE_MASK;
    private boolean mIsImmersive = true;
    private boolean mIsFirstLaunch = true;
    private boolean mIsBackDisabled = false;
    private String mUniquePlacementId = UniquePlacementId.NO_ID;
    boolean isShowFailed = false;

    private void applyImmersiveMode() {
        int i = Build.VERSION.SDK_INT;
        if (i < 16) {
            getWindow().setFlags(1024, 1024);
        } else {
            if (i < 18) {
                getWindow().getDecorView().setSystemUiVisibility(4);
                return;
            }
            final View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(5894);
            decorView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.2
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i2) {
                    if ((i2 & 4) == 0) {
                        decorView.setSystemUiVisibility(5894);
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mIsBackDisabled) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT < 18) {
            this.mWebView.setVisibility(4);
            this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    KidozAdActivity.this.mWebView.setVisibility(0);
                    KidozAdActivity.this.mWebView.bringToFront();
                }
            }, 500L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008d A[Catch: Exception -> 0x00da, TryCatch #0 {Exception -> 0x00da, blocks: (B:3:0x0003, B:5:0x000d, B:6:0x0014, B:8:0x0038, B:10:0x005d, B:12:0x0067, B:14:0x006b, B:16:0x0071, B:18:0x0083, B:20:0x0098, B:22:0x00a8, B:23:0x00ae, B:19:0x008d, B:24:0x00d2, B:11:0x0064, B:25:0x00d6), top: B:29:0x0003 }] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onCreate(android.os.Bundle r5) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        HtmlViewWrapper htmlViewWrapper = this.mWebView;
        if (htmlViewWrapper != null) {
            try {
                htmlViewWrapper.stopVastAd();
            } catch (Exception unused) {
            }
            this.mWebView.destroy();
            this.mInnerContainer.removeView(this.mWebView);
        }
        if (this.mUniquePlacementId != UniquePlacementId.NO_ID) {
            EventMessage eventMessage = new EventMessage(EventMessage.MessageType.INTERSTITIAL_AD_CLOSE);
            eventMessage.setAdditionalParam(this.mUniquePlacementId);
            EventBus.getDefault().k(eventMessage);
        }
        if (!this.isShowFailed) {
            EventMessage eventMessage2 = new EventMessage(EventMessage.MessageType.CLOSED);
            eventMessage2.setAdditionalParam(this.mUniquePlacementId);
            EventBus.getDefault().k(eventMessage2);
        }
        if (EventBus.getDefault().i(this)) {
            EventBus.getDefault().q(this);
        }
        setRequestedOrientation(this.mPreviousOrientation);
        this.mWebView = null;
        setContentView(new View(this));
        this.mInnerContainer = null;
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
        super.onDestroy();
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage.getMessageType() != EventMessage.MessageType.CLOSE_FULL_SCREEN_AD) {
            if (eventMessage.getMessageType() == EventMessage.MessageType.PARENTAL_DIALOG_CLOSE) {
                onResume();
            }
        } else {
            this.isShowFailed = eventMessage.isFlag();
            this.mHandler.removeCallbacksAndMessages(null);
            if (isFinishing()) {
                return;
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mHandler.removeCallbacksAndMessages(null);
        HtmlViewWrapper htmlViewWrapper = this.mWebView;
        if (htmlViewWrapper != null) {
            try {
                htmlViewWrapper.pauseVastAd();
            } catch (Exception unused) {
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mPreviousOrientation = getRequestedOrientation();
        HtmlViewWrapper htmlViewWrapper = this.mWebView;
        if (htmlViewWrapper != null) {
            if (this.mIsFirstLaunch) {
                this.mIsFirstLaunch = false;
                this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        KidozAdActivity.this.mWebView.startAd();
                    }
                }, 100L);
            } else {
                htmlViewWrapper.resumeVastAd();
            }
            if (Build.VERSION.SDK_INT >= 18) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.5
                    @Override // java.lang.Runnable
                    public void run() {
                        KidozAdActivity.this.mWebView.bringToFront();
                    }
                }, 200L);
            } else {
                this.mWebView.setVisibility(4);
                this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        KidozAdActivity.this.mWebView.setVisibility(0);
                        KidozAdActivity.this.mWebView.bringToFront();
                    }
                }, 500L);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.mIsImmersive) {
            applyImmersiveMode();
        }
    }
}
