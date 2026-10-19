package com.kidoz.sdk.api.ads.banner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener;

/* JADX INFO: loaded from: classes4.dex */
public class KidozBannerView extends RelativeLayout {
    private static final String ACTIVITY_CONTEXT_REQUIRED = "KidozBanner | Kidoz requires Activity context to show a banner.";
    private static final int BANNER_BACKGROUND_COLOR = 0;
    private static final float BANNER_RATIO = 6.4f;
    private static final String ERROR_REQUESTED_LOAD_EMPTY_URL = "KidozBanner | Kidoz banner requested to load empty url.";
    private static final String TAG = KidozBannerView.class.getSimpleName();
    private static final String VIEW_HIERARCHY_MODE_WITHOUT_FLAG = "Unable to add overlay banner. If you're trying to add this banner to your view hierarchy, please call setLayoutWithoutShowing() first.";
    private FrameLayout frameLayout;
    private Activity mActivity;
    private Position mBannerPosition;
    private BannerAdCallback mCallback;
    private HtmlViewWrapper mHtmlViewWrapper;
    private KidozBannerPresenter mKidozBannerPresenter;
    private boolean mLayoutWithoutShowing;
    private boolean mSmartBanner;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ads.banner.KidozBannerView$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position;

        static {
            int[] iArr = new int[Position.values().length];
            $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position = iArr;
            try {
                iArr[Position.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.BOTTOM_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.TOP_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.TOP_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.BOTTOM_LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[Position.BOTTOM_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum Position {
        CENTER,
        TOP_LEFT,
        TOP_CENTER,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        BOTTOM_CENTER
    }

    public KidozBannerView(Context context) {
        super(context);
        init(context);
    }

    public KidozBannerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public KidozBannerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @SuppressLint({"NewApi"})
    public KidozBannerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void createBannerPresenter() {
        this.mKidozBannerPresenter = new KidozBannerPresenter(this);
    }

    private void createBannerWebView() {
        this.mHtmlViewWrapper = new HtmlViewWrapper(this.mActivity, true);
        this.frameLayout = new FrameLayout(this.mActivity);
        this.mHtmlViewWrapper.setInFocusActivityContext(this.mActivity);
        this.mHtmlViewWrapper.setAllowJSResize(false);
        setHtmlViewWrapperLPs();
        this.mHtmlViewWrapper.setHtmlWebViewListener(this.mKidozBannerPresenter.getHtmlWebViewInterface());
        setBannerBackground();
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerView.2
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (KidozBannerView.this.mSmartBanner) {
                    KidozBannerView.this.setHtmlViewWrapperLPs();
                }
            }
        });
    }

    private Point getBannerDimensions() {
        Point screenSizeTemp = Utils.getScreenSizeTemp(this.mActivity, true);
        int iMin = Math.min(screenSizeTemp.x, screenSizeTemp.y);
        return new Point(iMin, (int) (iMin / BANNER_RATIO));
    }

    private Point getRealBannerDimensions() {
        return new Point((int) ScreenUtils.convertDpToPixel(320.0f), (int) ScreenUtils.convertDpToPixel(50.0f));
    }

    private Point getSmartBannerDimensions() {
        int i = Utils.getScreenSizeTemp(this.mActivity, true).x;
        int iMax = (int) (i / BANNER_RATIO);
        int densityDpi = (int) ScreenUtils.getDensityDpi(getContext());
        if (densityDpi <= 400) {
            iMax = 32;
        }
        if (densityDpi > 400 && densityDpi <= 720) {
            iMax = 50;
        }
        if (densityDpi > 720) {
            iMax = 90;
        }
        double deviceScreenSizeInInches = ScreenUtils.getDeviceScreenSizeInInches(getContext());
        int screenOrientation = ScreenUtils.getScreenOrientation((Activity) getContext());
        if (ScreenUtils.getIsTablet(getContext())) {
            if (screenOrientation == 1) {
                if (deviceScreenSizeInInches >= 7.0d && ((deviceScreenSizeInInches >= 7.0d && deviceScreenSizeInInches < 10.0d) || deviceScreenSizeInInches >= 10.0d)) {
                    iMax = Math.max(90, iMax);
                }
            } else if (screenOrientation == 2 && deviceScreenSizeInInches >= 7.0d) {
                if (deviceScreenSizeInInches >= 7.0d && deviceScreenSizeInInches < 10.0d) {
                    iMax = Math.max(50, iMax);
                } else if (deviceScreenSizeInInches >= 10.0d) {
                    iMax = Math.max(90, iMax);
                }
            }
        } else if (screenOrientation == 1) {
            iMax = Math.max(50, iMax);
        } else if (screenOrientation == 2) {
            iMax = Math.max(32, iMax);
        }
        return new Point(i, (int) ScreenUtils.convertDpToPixel(iMax));
    }

    private void init(Context context) {
        if (!(context instanceof Activity)) {
            SDKLogger.printErrorLog(ACTIVITY_CONTEXT_REQUIRED);
            return;
        }
        this.mActivity = (Activity) context;
        this.mLayoutWithoutShowing = false;
        createBannerPresenter();
        createBannerWebView();
        this.mKidozBannerPresenter.init();
    }

    private void layout() {
        removeAllViews();
        addView(this.frameLayout);
        ViewGroup viewGroup = (ViewGroup) this.mHtmlViewWrapper.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mHtmlViewWrapper);
        }
        this.frameLayout.addView(this.mHtmlViewWrapper, -1, -1);
    }

    private void setBannerBackground() {
        this.mHtmlViewWrapper.setBackgroundColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHtmlViewWrapperLPs() {
        RelativeLayout.LayoutParams layoutParams;
        Point smartBannerDimensions = this.mSmartBanner ? getSmartBannerDimensions() : getRealBannerDimensions();
        int i = smartBannerDimensions.x;
        int i2 = smartBannerDimensions.y;
        if (((RelativeLayout.LayoutParams) this.frameLayout.getLayoutParams()) != null) {
            layoutParams = (RelativeLayout.LayoutParams) this.frameLayout.getLayoutParams();
            layoutParams.addRule(10, 0);
            layoutParams.addRule(12, 0);
            layoutParams.addRule(15, 0);
            layoutParams.addRule(9, 0);
            layoutParams.addRule(11, 0);
            layoutParams.width = i;
            layoutParams.height = i2;
        } else {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
        }
        layoutParams.addRule(14);
        Position position = this.mBannerPosition;
        if (position != null) {
            switch (AnonymousClass3.$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[position.ordinal()]) {
                case 1:
                    layoutParams.addRule(15);
                    break;
                case 2:
                    layoutParams.addRule(10);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    break;
                case 4:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 5:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
                case 6:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
                case 7:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
            }
        }
        this.frameLayout.setLayoutParams(layoutParams);
    }

    private void setHtmlViewWrapperLPs2() {
        RelativeLayout.LayoutParams layoutParams;
        Point smartBannerDimensions = this.mSmartBanner ? getSmartBannerDimensions() : getRealBannerDimensions();
        int i = smartBannerDimensions.x;
        int i2 = smartBannerDimensions.y;
        if (((RelativeLayout.LayoutParams) this.mHtmlViewWrapper.getLayoutParams()) != null) {
            layoutParams = (RelativeLayout.LayoutParams) this.mHtmlViewWrapper.getLayoutParams();
            layoutParams.addRule(10, 0);
            layoutParams.addRule(12, 0);
            layoutParams.addRule(15, 0);
            layoutParams.addRule(9, 0);
            layoutParams.addRule(11, 0);
            layoutParams.width = i;
            layoutParams.height = i2;
        } else {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
        }
        layoutParams.addRule(14);
        Position position = this.mBannerPosition;
        if (position != null) {
            switch (AnonymousClass3.$SwitchMap$com$kidoz$sdk$api$ads$banner$KidozBannerView$Position[position.ordinal()]) {
                case 1:
                    layoutParams.addRule(15);
                    break;
                case 2:
                    layoutParams.addRule(10);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    break;
                case 4:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 5:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
                case 6:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
                case 7:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
            }
        }
        this.mHtmlViewWrapper.setLayoutParams(layoutParams);
    }

    public synchronized void destroy() {
        this.mHtmlViewWrapper.destroy();
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public synchronized void hide() {
        hideInternal();
        this.mKidozBannerPresenter.developerCalledHide(this.mHtmlViewWrapper);
    }

    protected void hideInternal() {
        SDKLogger.printDebugLog("KidozBannerPresenter | hideInternal() 0");
        if (this.mLayoutWithoutShowing) {
            return;
        }
        SDKLogger.printDebugLog("KidozBannerPresenter | hideInternal() 1");
        ViewParent parent = getParent();
        if (parent != null) {
            SDKLogger.printDebugLog("KidozBannerPresenter | hideInternal() 2");
            ((ViewGroup) parent).removeView(this);
        }
        ViewGroup viewGroup = (ViewGroup) this.mHtmlViewWrapper.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mHtmlViewWrapper);
        }
        this.mActivity.addContentView(this.mHtmlViewWrapper, new ViewGroup.LayoutParams(0, 0));
    }

    public void invokeUrlInWebView(String str, HtmlViewWrapper.BannerInvokeUrlInterface bannerInvokeUrlInterface) {
        this.mHtmlViewWrapper.invokeUrl(str, bannerInvokeUrlInterface);
    }

    public synchronized boolean isShowing() {
        return this.mKidozBannerPresenter.isShowing();
    }

    public synchronized void load() {
        HtmlViewWrapper htmlViewWrapper = this.mHtmlViewWrapper;
        if (htmlViewWrapper.webViewInitialized) {
            this.mKidozBannerPresenter.load(htmlViewWrapper);
        } else {
            BannerAdCallback bannerAdCallback = this.mCallback;
            if (bannerAdCallback != null) {
                bannerAdCallback.onAdFailedToLoad(new KidozError(KidozError.Type.loadFailedWebViewInit));
            }
        }
    }

    protected void nativeShow() {
        SDKLogger.printDebugLog("KidozBannerPresenter | nativeShow() 0");
        if (!this.mLayoutWithoutShowing) {
            SDKLogger.printDebugLog("KidozBannerPresenter | nativeShow() 1");
            try {
                SDKLogger.printDebugLog("KidozBannerPresenter | nativeShow() 2");
                this.mActivity.addContentView(this, new ViewGroup.LayoutParams(-1, -1));
            } catch (IllegalStateException unused) {
                SDKLogger.printDebugLog("KidozBannerPresenter | nativeShow() 3");
                SDKLogger.printErrorLog(TAG, VIEW_HIERARCHY_MODE_WITHOUT_FLAG);
            }
        }
        layout();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        layout();
    }

    public synchronized void setBannerPosition(Position position) {
        this.mBannerPosition = position;
        setHtmlViewWrapperLPs();
    }

    public synchronized void setKidozBannerListener(final BannerAdCallback bannerAdCallback) {
        this.mCallback = bannerAdCallback;
        this.mKidozBannerPresenter.setBannerListener(new KidozBannerListener() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerView.1
            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerClose() {
                bannerAdCallback.onAdClosed();
            }

            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerError(KidozError kidozError) {
                bannerAdCallback.onAdFailedToLoad(kidozError);
            }

            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerImpression() {
                bannerAdCallback.onAdImpression();
            }

            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerReady() {
                bannerAdCallback.onAdLoaded();
            }

            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerShowFailed(KidozError kidozError) {
                bannerAdCallback.onAdFailedToShow(kidozError);
            }

            @Override // com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener
            public void onBannerShowSuccess() {
                bannerAdCallback.onAdShown();
            }
        });
    }

    public void setLayoutWithoutShowing() {
        this.mLayoutWithoutShowing = true;
    }

    public synchronized void setSmartBanner(boolean z) {
        this.mSmartBanner = z;
    }

    public synchronized void show() {
        this.mKidozBannerPresenter.show(this.mHtmlViewWrapper);
    }

    public void startBannerWebLogic(String str) {
        if (TextUtils.isEmpty(str)) {
            SDKLogger.printErrorLog(ERROR_REQUESTED_LOAD_EMPTY_URL);
        } else {
            this.mHtmlViewWrapper.setWidgetType(WidgetType.WIDGET_TYPE_BANNER.getStringValue());
            this.mHtmlViewWrapper.loadHtml(str);
        }
    }

    public synchronized void stopLoading() {
        this.mHtmlViewWrapper.mWebView.stopLoading();
    }
}
