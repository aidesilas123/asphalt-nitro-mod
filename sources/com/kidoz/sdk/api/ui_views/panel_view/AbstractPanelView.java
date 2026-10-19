package com.kidoz.sdk.api.ui_views.panel_view;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.kidoz.events.EventManager;
import com.kidoz.events.a;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.dialogs.AboutKidozDialog;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.ContentLogicLoader;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.SdkCookieManager;
import com.kidoz.sdk.api.general.utils.StorageLife;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.interfaces.IOnPanelViewEventListener;
import com.kidoz.sdk.api.structure.ContentData;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView;
import com.kidoz.sdk.api.ui_views.interstitial.LocalIntrst;
import com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView;
import com.kidoz.sdk.api.ui_views.panel_view.PanelHandle;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractPanelView extends RelativeLayout {
    private static final String FIRST_TIME_LAST_LAUNCH_KEY = "fistTimeLastLounch";
    private static final String PANEL_SHARED_PREFERENCES = "panel_shared_pref";
    private static final String TAG = AbstractPanelView.class.getSimpleName();
    private static final int TIME_MULT_FACTOR = 3600000;
    public AssetView mAboutKidozButton;
    protected boolean mAllowClickHandling;
    protected RelativeLayout mBottomBarContainer;
    protected String mBtnCloseBgUrl;
    protected String mBtnCloseFrgUrl;
    protected String mBtnOpenBgUrl;
    protected String mBtnOpenFrgUrl;
    protected float mBtnScaleSize;
    protected RelativeLayout mContainer;
    protected ArrayList<ContentItem> mContentItems;
    protected ContentLogicLoader mContentLogicLoader;
    protected float mFirstLaunchOpenPeriod;
    protected float mFirstLaunchOpenRepeatTimeFarme;
    protected float mFirstLaunchStartDelay;
    protected HANDLE_POSITION mHandlePosition;
    protected IOnPanelViewEventListener mIOnPanelViewEventListener;
    protected RelativeLayout mInnerContainer;
    protected LocalIntrst mInterstitial;
    protected boolean mIsAnimationRunning;
    protected boolean mIsClicksBlocked;
    protected boolean mIsPanelPrepared;
    protected int mLabelColor;
    protected String mLabelText;
    private long mLastInterceptTS;
    protected String mLegacyBtnCloseUrl;
    protected String mLegacyBtnOpenSponsoredUrl;
    protected String mLegacyBtnOpenUrl;
    public OneItemFamilyView mOneItemFamilyView;
    protected int mPanelBgColor;
    public PanelHandle mPanelHandle;
    protected PanelViewState mPanelState;
    protected PANEL_TYPE mPanelType;
    public AssetView mParentalLockButton;
    protected TextView mPoweredByTextView;
    protected ShadowView mShadowView;
    protected SharedPreferences mSharedPreferences;
    protected Utils.StaticHandler mStaticHandler;
    protected String mStyleId;
    protected JSONObject mWidgetProperties;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AbstractPanelView.this.mIsClicksBlocked) {
                return;
            }
            GenAnimator.clickItemAnimation(view, 80, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.3.1
                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationEnd() {
                    AbstractPanelView abstractPanelView = AbstractPanelView.this;
                    abstractPanelView.mIsClicksBlocked = true;
                    ParentalLockDialog.startParentalDialog(abstractPanelView.getContext(), false, 0.5f, 0.5f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.3.1.1
                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onCloseDialog() {
                            AbstractPanelView.this.setParentalLocIConkState(ParentalLockDialog.isParentalLockActive(AbstractPanelView.this.getContext()));
                            AbstractPanelView.this.mIsClicksBlocked = false;
                        }

                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onInputPass(boolean z) {
                            AbstractPanelView.this.setParentalLocIConkState(ParentalLockDialog.isParentalLockActive(AbstractPanelView.this.getContext()));
                        }
                    });
                }

                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationStart() {
                }
            });
        }
    }

    public enum PanelViewState {
        OPEN,
        CLOSED
    }

    public AbstractPanelView(Context context, JSONObject jSONObject) {
        super(context);
        this.mPanelType = PANEL_TYPE.BOTTOM;
        this.mHandlePosition = HANDLE_POSITION.START;
        this.mContentItems = new ArrayList<>();
        this.mPanelState = PanelViewState.CLOSED;
        this.mAllowClickHandling = true;
        this.mIsPanelPrepared = false;
        this.mLastInterceptTS = 0L;
        this.mLegacyBtnCloseUrl = null;
        this.mLegacyBtnOpenUrl = null;
        this.mLegacyBtnOpenSponsoredUrl = null;
        this.mBtnCloseBgUrl = null;
        this.mBtnCloseFrgUrl = null;
        this.mBtnOpenBgUrl = null;
        this.mBtnOpenFrgUrl = null;
        this.mBtnScaleSize = 0.15f;
        this.mPanelBgColor = -1;
        this.mLabelText = "";
        this.mLabelColor = ViewCompat.MEASURED_STATE_MASK;
        this.mFirstLaunchOpenPeriod = -1.0f;
        this.mFirstLaunchOpenRepeatTimeFarme = -1.0f;
        this.mFirstLaunchStartDelay = -1.0f;
        this.mStyleId = null;
        this.mWidgetProperties = jSONObject;
        prepareProperties();
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandPanelViewInternal(boolean z) {
        if (!this.mIsAnimationRunning && this.mPanelState == PanelViewState.CLOSED && getVisibility() == 0) {
            a aVar = new a();
            if (z) {
                aVar.d("Open Type", "1");
            } else {
                aVar.d("Open Type", "0");
            }
            aVar.b("Panel Type", this.mPanelType.ordinal());
            EventManager.getInstance(getContext()).h(getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), this.mStyleId, EventManager.a, aVar, "Sponsored Content", "Widget View", "Panel View");
            setParentalLocIConkState(ParentalLockDialog.isParentalLockActive(getContext()));
            RelativeLayout relativeLayout = this.mContainer;
            if (relativeLayout != null) {
                GenAnimator.openPanelView(relativeLayout, this.mInnerContainer, this.mPanelType, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.7
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AbstractPanelView abstractPanelView = AbstractPanelView.this;
                        abstractPanelView.mIsAnimationRunning = false;
                        abstractPanelView.mPanelState = PanelViewState.OPEN;
                        IOnPanelViewEventListener iOnPanelViewEventListener = abstractPanelView.mIOnPanelViewEventListener;
                        if (iOnPanelViewEventListener != null) {
                            iOnPanelViewEventListener.onPanelViewExpanded();
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        AbstractPanelView.this.mPanelHandle.setPanelButtonState(PanelHandle.PANEL_HANDLE_VIEW_STATE.OPENED);
                        GenAnimator.animateHandleOpen(AbstractPanelView.this.mPanelHandle, null);
                        AbstractPanelView.this.onExpandPanelAnimationStarted();
                    }
                });
            }
        }
    }

    private void initAboutKidozButton() {
        AssetView assetView = new AssetView(getContext());
        this.mAboutKidozButton = assetView;
        assetView.setId(Utils.generateViewId());
        this.mAboutKidozButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mAboutKidozButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.clickItemAnimation(view, 80, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.4.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        new AboutKidozDialog(AbstractPanelView.this.getContext(), new int[]{(int) (ScreenUtils.getScreenSize(AbstractPanelView.this.getContext(), true) * 0.5f), (int) (ScreenUtils.getScreenSize(AbstractPanelView.this.getContext(), false) * 0.5f)}).openDialog();
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
        this.mAboutKidozButton.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.setMargins(Utils.dpTOpx(getContext(), 1.0f), 0, 0, 0);
        this.mBottomBarContainer.addView(this.mAboutKidozButton, layoutParams);
        this.mAboutKidozButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mWidgetProperties.optString(StyleParser.KIDOZ_LOGO_ICON)), (AssetView.IOnAssetLoadedListener) null);
    }

    private void initPanelContainer() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.mContainer = relativeLayout;
        relativeLayout.setBackgroundColor(0);
        this.mContainer.setId(Utils.generateViewId());
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        initShadowView();
        addView(this.mContainer, new RelativeLayout.LayoutParams(-2, -2));
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        this.mInnerContainer = relativeLayout2;
        relativeLayout2.setId(Utils.generateViewId());
        this.mInnerContainer.setBackgroundColor(-1);
        this.mContainer.addView(this.mInnerContainer, new RelativeLayout.LayoutParams(-2, -2));
        this.mInnerContainer.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.mInnerContainer.setSoundEffectsEnabled(false);
    }

    private void initPanelHandleBtn() {
        Point screenSize = Utils.getScreenSize(getContext());
        PanelHandle panelHandle = new PanelHandle(getContext(), this.mPanelType, (int) (Math.min(screenSize.x, screenSize.y) * this.mBtnScaleSize), new PanelHandle.IOnPanelHandleClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.2
            @Override // com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.IOnPanelHandleClickListener
            public void onHandleClick() {
                JSONObject jSONObject;
                LocalIntrst localIntrst;
                AbstractPanelView.this.toggleAnimation();
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                if (abstractPanelView.mPanelState != PanelViewState.CLOSED || (jSONObject = abstractPanelView.mWidgetProperties) == null || jSONObject.optInt(StyleParser.LAUNCH_INTERSTITIAL_ON_OPEN, 0) != 1 || (localIntrst = AbstractPanelView.this.mInterstitial) == null) {
                    return;
                }
                localIntrst.loadAd();
            }
        });
        this.mPanelHandle = panelHandle;
        if (this.mBtnScaleSize == 0.0f) {
            panelHandle.setVisibility(8);
        }
        this.mPanelHandle.setId(Utils.generateViewId());
        this.mContainer.addView(this.mPanelHandle, new RelativeLayout.LayoutParams(-2, -2));
    }

    private void initParentalLockButton() {
        AssetView assetView = new AssetView(getContext());
        this.mParentalLockButton = assetView;
        assetView.setId(Utils.generateViewId());
        this.mParentalLockButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mParentalLockButton.setOnClickListener(new AnonymousClass3());
        this.mParentalLockButton.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(15);
        this.mBottomBarContainer.addView(this.mParentalLockButton, layoutParams);
        setParentalLocIConkState(ParentalLockDialog.isParentalLockActive(getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPanelForDefinedAmountOfTime() {
        final long j = this.mSharedPreferences.getLong(FIRST_TIME_LAST_LAUNCH_KEY, -1L);
        if (this.mFirstLaunchStartDelay < 0.0f || getVisibility() != 0) {
            return;
        }
        getStaticHandler().postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.10
            @Override // java.lang.Runnable
            public void run() {
                float f2 = AbstractPanelView.this.mFirstLaunchOpenRepeatTimeFarme;
                if (f2 != -1.0f) {
                    long j2 = j;
                    if (j2 != -1 && j2 + (f2 * 3600000.0f) <= System.currentTimeMillis()) {
                        return;
                    }
                }
                AbstractPanelView.this.expandPanelViewInternal(false);
                SharedPreferences.Editor editorEdit = AbstractPanelView.this.mSharedPreferences.edit();
                editorEdit.putLong(AbstractPanelView.FIRST_TIME_LAST_LAUNCH_KEY, System.currentTimeMillis());
                editorEdit.apply();
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                if (abstractPanelView.mFirstLaunchOpenPeriod > 0.0f) {
                    abstractPanelView.getStaticHandler().postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AbstractPanelView.this.collapsePanelView();
                        }
                    }, (long) (AbstractPanelView.this.mFirstLaunchOpenPeriod * 1000.0f));
                }
            }
        }, (long) (this.mFirstLaunchStartDelay * 1000.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareHandle(String str) {
        LocalAssetHelper localAssetHelper = new LocalAssetHelper();
        localAssetHelper.legacyBtnCloseAsset = AssetUtil.getAssetFile(getContext(), this.mLegacyBtnCloseUrl);
        localAssetHelper.legacyBtnOpenAsset = AssetUtil.getAssetFile(getContext(), this.mLegacyBtnOpenUrl);
        localAssetHelper.legacyBtnDefaultOpenSponsoredAsset = AssetUtil.getAssetFile(getContext(), this.mLegacyBtnOpenSponsoredUrl);
        localAssetHelper.openBtnAssetBg = AssetUtil.getAssetFile(getContext(), this.mBtnOpenBgUrl);
        localAssetHelper.openBtnAssetFrg = AssetUtil.getAssetFile(getContext(), this.mBtnOpenFrgUrl);
        localAssetHelper.closeBtnAssetBg = AssetUtil.getAssetFile(getContext(), this.mBtnCloseBgUrl);
        localAssetHelper.closeBtnAssetFrg = AssetUtil.getAssetFile(getContext(), this.mBtnCloseFrgUrl);
        this.mPanelHandle.loadAssets(localAssetHelper, new PanelHandle.IonPanelHandlePreparedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.8
            @Override // com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.IonPanelHandlePreparedListener
            public void onPanelPrepared() {
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                abstractPanelView.mIsPanelPrepared = true;
                GenAnimator.playGrowAnimation(abstractPanelView.mPanelHandle, 350L, 0L, null, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.8.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AbstractPanelView abstractPanelView2 = AbstractPanelView.this;
                        abstractPanelView2.mIsAnimationRunning = false;
                        abstractPanelView2.requestFocus();
                        AbstractPanelView.this.bringToFront();
                        AbstractPanelView abstractPanelView3 = AbstractPanelView.this;
                        abstractPanelView3.mPanelState = PanelViewState.CLOSED;
                        if (abstractPanelView3.getVisibility() == 0) {
                            AbstractPanelView.this.openPanelForDefinedAmountOfTime();
                        }
                        IOnPanelViewEventListener iOnPanelViewEventListener = AbstractPanelView.this.mIOnPanelViewEventListener;
                        if (iOnPanelViewEventListener != null) {
                            iOnPanelViewEventListener.onPanelReady();
                        }
                        EventManager.getInstance(AbstractPanelView.this.getContext()).i(AbstractPanelView.this.getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), AbstractPanelView.this.mStyleId, EventManager.a, "SDK", "Button View", "Panel Button View");
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        AbstractPanelView.this.mPanelHandle.setPanelButtonState(PanelHandle.PANEL_HANDLE_VIEW_STATE.CLOSED);
                        AbstractPanelView.this.requestFocus();
                        AbstractPanelView.this.bringToFront();
                    }
                });
            }
        });
    }

    private void preparePanel() {
        setPanelColor(this.mPanelBgColor);
        this.mPanelState = PanelViewState.CLOSED;
        this.mIsAnimationRunning = true;
        Utils.setOnGlobalLayoutFinishListener(this, new Utils.OnGlobalLayoutFinishedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.9
            @Override // com.kidoz.sdk.api.general.utils.Utils.OnGlobalLayoutFinishedListener
            public void onLayoutFinished() {
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                GenAnimator.closePanelView(abstractPanelView.mContainer, 0L, abstractPanelView.mInnerContainer, abstractPanelView.mPanelType, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.9.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AbstractPanelView.this.clearPanelContent();
                        AbstractPanelView.this.onContentDataLoadStarted();
                        AbstractPanelView abstractPanelView2 = AbstractPanelView.this;
                        abstractPanelView2.mContentLogicLoader.loadContent(abstractPanelView2.getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), AbstractPanelView.this.mStyleId);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        GenAnimator.animateHandleClose(AbstractPanelView.this.mPanelHandle, null);
                        AbstractPanelView.this.requestFocus();
                        AbstractPanelView.this.bringToFront();
                    }
                });
            }
        });
    }

    private void resetPanelState() {
        initPanelViewsRules();
        if (this.mIsPanelPrepared && this.mPanelState == PanelViewState.CLOSED) {
            GenAnimator.closePanelView(this.mContainer, 0L, this.mInnerContainer, this.mPanelType, null);
            requestFocus();
            bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setParentalLocIConkState(boolean z) {
        if (z) {
            this.mParentalLockButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mWidgetProperties.optString(StyleParser.BTN_LOCK_CLOSED)), (AssetView.IOnAssetLoadedListener) null);
        } else {
            this.mParentalLockButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mWidgetProperties.optString(StyleParser.BTN_LOCK_OPEN)), (AssetView.IOnAssetLoadedListener) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleAnimation() {
        if (this.mPanelState == PanelViewState.OPEN) {
            collapsePanelView();
        } else {
            expandPanelViewInternal(true);
        }
    }

    protected abstract void clearPanelContent();

    public void collapsePanelView() {
        RelativeLayout relativeLayout;
        if (!KidozSDK.isInitialised() || this.mIsAnimationRunning || this.mPanelState != PanelViewState.OPEN || (relativeLayout = this.mContainer) == null) {
            return;
        }
        GenAnimator.closePanelView(relativeLayout, 200L, this.mInnerContainer, this.mPanelType, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.6
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AbstractPanelView.this.mPanelHandle.setPanelButtonState(PanelHandle.PANEL_HANDLE_VIEW_STATE.CLOSED);
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                abstractPanelView.mIsAnimationRunning = false;
                abstractPanelView.onCollapsePanelAnimationEnded();
                AbstractPanelView abstractPanelView2 = AbstractPanelView.this;
                abstractPanelView2.mPanelState = PanelViewState.CLOSED;
                IOnPanelViewEventListener iOnPanelViewEventListener = abstractPanelView2.mIOnPanelViewEventListener;
                if (iOnPanelViewEventListener != null) {
                    iOnPanelViewEventListener.onPanelViewCollapsed();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                GenAnimator.animateHandleClose(AbstractPanelView.this.mPanelHandle, null);
                AbstractPanelView.this.onContentDataLoadStarted();
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                abstractPanelView.mContentLogicLoader.loadContent(abstractPanelView.getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), AbstractPanelView.this.mStyleId);
            }
        });
    }

    public void expandPanelView() {
        if (KidozSDK.isInitialised()) {
            expandPanelViewInternal(true);
        }
    }

    public PanelViewState getPanelViewState() {
        return this.mPanelState;
    }

    protected Utils.StaticHandler getStaticHandler() {
        if (this.mStaticHandler == null) {
            this.mStaticHandler = new Utils.StaticHandler(Looper.getMainLooper());
        }
        return this.mStaticHandler;
    }

    protected void initBottomBar() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.mBottomBarContainer = relativeLayout;
        relativeLayout.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        int iDpTOpx = Utils.dpTOpx(getContext(), 3.0f);
        layoutParams.setMargins(iDpTOpx, 0, iDpTOpx, iDpTOpx);
        this.mInnerContainer.addView(this.mBottomBarContainer, layoutParams);
        initParentalLockButton();
        initAboutKidozButton();
        int scaleFactor = (int) (ScreenUtils.getScaleFactor(getContext()) * 70.0f);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mParentalLockButton.getLayoutParams();
        layoutParams2.width = scaleFactor;
        layoutParams2.height = scaleFactor;
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.mAboutKidozButton.getLayoutParams();
        layoutParams3.width = scaleFactor;
        layoutParams3.height = scaleFactor;
        TextView textView = new TextView(getContext());
        this.mPoweredByTextView = textView;
        textView.setText(this.mLabelText);
        this.mPoweredByTextView.setTextColor(this.mLabelColor);
        this.mPoweredByTextView.setTextSize(2, 12.0f);
        this.mPoweredByTextView.setLines(1);
        this.mPoweredByTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.mPoweredByTextView.setGravity(83);
        this.mPoweredByTextView.setShadowLayer(3.0f, 2.0f, 2.0f, Color.parseColor("#44000000"));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(8, this.mAboutKidozButton.getId());
        layoutParams4.addRule(0, this.mParentalLockButton.getId());
        layoutParams4.addRule(1, this.mAboutKidozButton.getId());
        layoutParams4.setMargins(Utils.dpTOpx(getContext(), 3.0f), 0, Utils.dpTOpx(getContext(), 4.0f), 0);
        this.mBottomBarContainer.addView(this.mPoweredByTextView, layoutParams4);
    }

    protected void initContentLogicLoader() {
        this.mContentLogicLoader = new ContentLogicLoader(new ContentLogicLoader.IOnContentDataReadyCallback() { // from class: com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.5
            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onDataReady(ContentData contentData) {
                AbstractPanelView.this.onContentDataLoadEnded();
                if (contentData == null || !contentData.isHasContentToShow()) {
                    return;
                }
                SdkCookieManager.resetStorage(AbstractPanelView.this.getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), StorageLife.WIDGET);
                AbstractPanelView.this.mContentItems.clear();
                AbstractPanelView.this.clearPanelContent();
                AbstractPanelView.this.mContentItems.addAll(contentData.getContentDataItems());
                AbstractPanelView abstractPanelView = AbstractPanelView.this;
                abstractPanelView.setContentAndRefresh(abstractPanelView.mContentItems);
                AbstractPanelView abstractPanelView2 = AbstractPanelView.this;
                if (abstractPanelView2.mIsPanelPrepared) {
                    return;
                }
                abstractPanelView2.prepareHandle(null);
            }

            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onLoadContentFailed() {
                AbstractPanelView.this.onContentDataLoadFailed();
            }

            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onNoContentOffers() {
                AbstractPanelView.this.onNoOffers();
            }
        });
    }

    protected abstract void initInnerPanelView();

    protected abstract void initPanelViewsRules();

    protected abstract void initShadowView();

    protected void initView() {
        initPanelContainer();
        initPanelHandleBtn();
        initInnerPanelView();
        initBottomBar();
        initPanelViewsRules();
        initContentLogicLoader();
        preparePanel();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    protected abstract void onCollapsePanelAnimationEnded();

    protected abstract void onContentDataLoadEnded();

    protected abstract void onContentDataLoadFailed();

    protected abstract void onContentDataLoadStarted();

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        getStaticHandler().removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    protected abstract void onExpandPanelAnimationStarted();

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (System.currentTimeMillis() - this.mLastInterceptTS > 1000) {
            this.mLastInterceptTS = System.currentTimeMillis();
            getStaticHandler().removeCallbacksAndMessages(null);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    protected abstract void onNoOffers();

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (KidozSDK.isInitialised() && i != 0 && !isInEditMode() && (i == 8 || i == 4)) {
            getStaticHandler().removeCallbacksAndMessages(null);
        }
        this.mAllowClickHandling = true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.mAllowClickHandling = true;
        } else {
            this.mAllowClickHandling = false;
        }
    }

    protected void prepareProperties() {
        this.mStyleId = this.mWidgetProperties.optString(StyleParser.STYLE_ID, null);
        this.mLegacyBtnCloseUrl = this.mWidgetProperties.optString(StyleParser.LEGACY_BTN_CLOSE_URL, null);
        this.mLegacyBtnOpenUrl = this.mWidgetProperties.optString(StyleParser.LEGACY_BTN_OPEN_URL, null);
        this.mLegacyBtnOpenSponsoredUrl = this.mWidgetProperties.optString(StyleParser.LEGACY_DEFAULT_OPEN_BTN_SPOSORED_URL, null);
        this.mBtnScaleSize = (float) this.mWidgetProperties.optDouble(StyleParser.BTN_SCALE_SIZE, 0.15000000596046448d);
        this.mLabelText = this.mWidgetProperties.optString(StyleParser.LABEL_TEXT, "");
        this.mFirstLaunchOpenPeriod = (float) this.mWidgetProperties.optDouble(StyleParser.FIRST_LAUNCH_STAY_OPEN_PERIOD_SECONDS, -1.0d);
        this.mFirstLaunchStartDelay = (float) this.mWidgetProperties.optDouble(StyleParser.FIRST_LAUNCH_OPEN_START_DELAY_SECONDS, -1.0d);
        this.mFirstLaunchOpenRepeatTimeFarme = (float) this.mWidgetProperties.optDouble(StyleParser.FIRST_LAUNCH_OPEN_PANEL_EVEY_X_HOURS, -1.0d);
        this.mBtnCloseBgUrl = this.mWidgetProperties.optString(StyleParser.BTN_CLOSE_BG_URL, null);
        this.mBtnCloseFrgUrl = this.mWidgetProperties.optString(StyleParser.BTN_CLOSE_FRG_URL, null);
        this.mBtnOpenBgUrl = this.mWidgetProperties.optString(StyleParser.BTN_OPEN_BG_URL, null);
        this.mBtnOpenFrgUrl = this.mWidgetProperties.optString(StyleParser.BTN_OPEN_FRG_URL, null);
        try {
            this.mPanelBgColor = Color.parseColor(this.mWidgetProperties.optString(StyleParser.PANEL_BG_COLOR, "#FFFFFF"));
        } catch (Exception unused) {
            this.mPanelBgColor = -1;
        }
        try {
            this.mLabelColor = Color.parseColor(this.mWidgetProperties.optString(StyleParser.LABEL_TEXT_COLOR, "#000000"));
        } catch (Exception unused2) {
            this.mLabelColor = ViewCompat.MEASURED_STATE_MASK;
        }
        this.mSharedPreferences = getContext().getSharedPreferences(PANEL_SHARED_PREFERENCES, 0);
        if (this.mWidgetProperties.optInt(StyleParser.LAUNCH_INTERSTITIAL_ON_OPEN, 0) == 1) {
            Context context = getContext();
            if (context == null || !(context instanceof Activity)) {
                SDKLogger.printErrorLog("Context is null or not an Activity");
            } else if (this.mInterstitial == null) {
                this.mInterstitial = new LocalIntrst((Activity) context, KidozInterstitial.AD_TYPE.INTERSTITIAL);
            }
        }
    }

    protected abstract void setContentAndRefresh(ArrayList<ContentItem> arrayList);

    public void setOnPanelViewEventListener(IOnPanelViewEventListener iOnPanelViewEventListener) {
        this.mIOnPanelViewEventListener = iOnPanelViewEventListener;
    }

    public void setPanelColor(int i) {
        if (i != 0) {
            this.mPanelBgColor = i;
        }
        RelativeLayout relativeLayout = this.mInnerContainer;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(this.mPanelBgColor);
        }
        PanelHandle panelHandle = this.mPanelHandle;
        if (panelHandle != null) {
            panelHandle.setBaseColor(this.mPanelBgColor);
        }
    }

    public void setPanelConfiguration(PANEL_TYPE panel_type, HANDLE_POSITION handle_position) {
        if (KidozSDK.isInitialised()) {
            this.mPanelType = panel_type;
            this.mHandlePosition = handle_position;
            this.mPanelHandle.setPanelType(panel_type);
            resetPanelState();
            if (this.mHandlePosition == HANDLE_POSITION.NONE) {
                this.mPanelHandle.setVisibility(4);
            } else if (this.mBtnScaleSize != 0.0f) {
                this.mPanelHandle.setVisibility(0);
            }
        }
    }

    public abstract void setPanelEnabled(boolean z);
}
