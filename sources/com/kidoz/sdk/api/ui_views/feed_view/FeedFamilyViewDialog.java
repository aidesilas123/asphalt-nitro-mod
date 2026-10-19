package com.kidoz.sdk.api.ui_views.feed_view;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kidoz.events.EventManager;
import com.kidoz.events.a;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.dialogs.AboutKidozDialog;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.BaseDialog;
import com.kidoz.sdk.api.general.ContentExecutionHandler;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.interfaces.AnotherInterface;
import com.kidoz.sdk.api.interfaces.IOnFeedViewEventListener;
import com.kidoz.sdk.api.structure.ContentData;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView;
import com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter;
import com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class FeedFamilyViewDialog extends BaseDialog {
    public static final String TAG = FeedFamilyViewDialog.class.getSimpleName();
    private int assentsCnt;
    private boolean dataSet;
    private boolean gifReady;
    private AssetView mAboutButton;
    private boolean mAllowClickHandling;
    private AssetView mAnimation;
    private View.OnClickListener mCloseBtnClickListener;
    private ContentData mContentData;
    private AssetView mExitButton;
    private boolean mIsAutomaticInvocation;
    private LoadingProgressView mLoadingProgressView;
    private AssetView mNextButton;
    private IOnFeedViewEventListener mOnInterstitialViewEventListener;
    public OneItemFamilyView mOneItemFamilyView;
    private AssetView mParentalLockButton;
    private AssetView mPreviousButton;
    protected JSONObject mProperties;
    private RelativeLayout mRootView;
    private String mStyleId;
    private RelativeLayout mViewContainer;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$10, reason: invalid class name */
    class AnonymousClass10 implements View.OnClickListener {
        AnonymousClass10() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedFamilyViewDialog.this.mParentalLockButton.setClickable(false);
            GenAnimator.clickItemAnimation(FeedFamilyViewDialog.this.mParentalLockButton, 150, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.10.1
                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationEnd() {
                    FeedFamilyViewDialog.this.mParentalLockButton.setClickable(true);
                    ParentalLockDialog.startParentalDialog(FeedFamilyViewDialog.this.getContext(), false, 0.5f, 0.5f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.10.1.1
                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onCloseDialog() {
                            FeedFamilyViewDialog.this.updateLockIcon();
                        }

                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onInputPass(boolean z) {
                            FeedFamilyViewDialog.this.updateLockIcon();
                        }
                    });
                }

                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationStart() {
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$20, reason: invalid class name */
    static /* synthetic */ class AnonymousClass20 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction;

        static {
            int[] iArr = new int[OneItemFamilyView.OneItemAction.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction = iArr;
            try {
                iArr[OneItemFamilyView.OneItemAction.STOP_ANY_ANIMATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction[OneItemFamilyView.OneItemAction.RESTART_ANY_ANIMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FeedFamilyViewDialog(Context context, IOnFeedViewEventListener iOnFeedViewEventListener, boolean z, JSONObject jSONObject) {
        super(context, R.style.Theme.Translucent.NoTitleBar.Fullscreen, true);
        this.mCloseBtnClickListener = null;
        this.mAllowClickHandling = true;
        this.mIsAutomaticInvocation = false;
        this.mStyleId = null;
        this.assentsCnt = 0;
        this.gifReady = false;
        this.dataSet = false;
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.mContentData = null;
        this.mProperties = jSONObject;
        this.mStyleId = jSONObject.optString(StyleParser.STYLE_ID);
        this.mIsAutomaticInvocation = z;
        this.mOnInterstitialViewEventListener = iOnFeedViewEventListener;
        initDialog();
    }

    private void animateOpen() {
        GenAnimator.playGrowAnimation(this.mViewContainer, 500L, 0L, new DecelerateInterpolator(1.5f), new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.19
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void applayViewContainerParams() {
        int screenSize = ScreenUtils.getScreenSize(getContext(), true);
        int screenSize2 = ScreenUtils.getScreenSize(getContext(), false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        if (ScreenUtils.getIsTablet(getContext())) {
            if (getContext().getResources().getConfiguration().orientation == 1) {
                int statusBarHeight = (screenSize - ScreenUtils.getStatusBarHeight(getContext())) - ScreenUtils.getNavigationBarHeight(getContext());
                layoutParams.width = statusBarHeight;
                layoutParams.height = statusBarHeight;
            } else {
                int statusBarHeight2 = (screenSize2 - ScreenUtils.getStatusBarHeight(getContext())) - ScreenUtils.getNavigationBarHeight(getContext());
                layoutParams.width = statusBarHeight2;
                layoutParams.height = statusBarHeight2;
            }
        } else if (getContext().getResources().getConfiguration().orientation == 1) {
            int statusBarHeight3 = screenSize - ScreenUtils.getStatusBarHeight(getContext());
            layoutParams.width = statusBarHeight3;
            layoutParams.height = statusBarHeight3;
        } else {
            int statusBarHeight4 = screenSize2 - ScreenUtils.getStatusBarHeight(getContext());
            layoutParams.width = statusBarHeight4;
            layoutParams.height = statusBarHeight4;
        }
        this.mViewContainer.setLayoutParams(layoutParams);
    }

    private void applyAnimationLayoutParams() {
        float f2;
        float f3;
        int i = this.mViewContainer.getLayoutParams().width;
        if (ScreenUtils.getIsTablet(getContext())) {
            f2 = i;
            f3 = 0.357f;
        } else {
            f2 = i;
            f3 = 0.366f;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, (int) (f2 * f3));
        layoutParams.addRule(10);
        this.mAnimation.setLayoutParams(layoutParams);
    }

    private void applyLoadingViewLayoutParams() {
        int iMin = (int) (Math.min(this.mViewContainer.getLayoutParams().width, this.mViewContainer.getLayoutParams().height) * 0.35f);
        this.mLoadingProgressView.setCircleWidthRelativeToSize(iMin);
        this.mLoadingProgressView.setLayoutParams(new LinearLayout.LayoutParams(iMin, iMin));
    }

    private void applyNextButtonLayoutParams() {
        float f2 = this.mViewContainer.getLayoutParams().width;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (0.17f * f2), (int) (0.25f * f2));
        layoutParams.addRule(11);
        layoutParams.topMargin = (int) (f2 * 0.43f);
        this.mNextButton.setLayoutParams(layoutParams);
    }

    private void applyPreviousButtonLayoutParams() {
        float f2 = this.mViewContainer.getLayoutParams().width;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (0.17f * f2), (int) (0.25f * f2));
        layoutParams.addRule(9);
        layoutParams.topMargin = (int) (f2 * 0.43f);
        this.mPreviousButton.setLayoutParams(layoutParams);
    }

    private void applyViewPagerLayoutParams() {
        int iDpTOpx = Utils.dpTOpx(getContext(), 20.0f);
        int iDpTOpx2 = Utils.dpTOpx(getContext(), 24.0f);
        int i = this.mViewContainer.getLayoutParams().width - (iDpTOpx * 2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, (int) ((i * 3.0f) / 4.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = iDpTOpx2;
        this.mOneItemFamilyView.setLayoutParams(layoutParams);
    }

    private void initAboutKidozButton() {
        AssetView assetView = new AssetView(getContext());
        this.mAboutButton = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mAboutButton.setId(Utils.generateViewId());
        String strOptString = this.mProperties.optString(StyleParser.ABOUT_KIDOZ_ANIMATION);
        if (strOptString != null && strOptString.equals(GenAnimator.PRESS_IN_OUT)) {
            this.mAboutButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedFamilyViewDialog.this.mAboutButton.setClickable(false);
                    GenAnimator.clickItemAnimation(FeedFamilyViewDialog.this.mAboutButton, 150, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.13.1
                        @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                        public void onAnimationEnd() {
                            FeedFamilyViewDialog.this.mAboutButton.setClickable(true);
                            new AboutKidozDialog(FeedFamilyViewDialog.this.getContext(), new int[]{(int) (ScreenUtils.getScreenSize(FeedFamilyViewDialog.this.getContext(), true) * 0.5f), (int) (ScreenUtils.getScreenSize(FeedFamilyViewDialog.this.getContext(), false) * 0.5f)}).openDialog();
                        }

                        @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                        public void onAnimationStart() {
                        }
                    });
                }
            });
        }
        int iMax = Math.max(ScreenUtils.getScreenSize(getContext(), true) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())), ScreenUtils.getScreenSize(getContext(), false) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())));
        File assetFile = AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.ABOUT_KIDOZ));
        if (assetFile == null || !assetFile.exists()) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(assetFile.getAbsolutePath(), options);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 10.0f, getContext().getResources().getDisplayMetrics());
        int i = (int) (iMax * 0.06f);
        int[] scaledDimension = ScreenUtils.getScaledDimension(options.outWidth, options.outHeight, i, i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(scaledDimension[0], scaledDimension[1]);
        layoutParams.addRule(9);
        layoutParams.addRule(12);
        layoutParams.leftMargin = iApplyDimension;
        layoutParams.bottomMargin = iApplyDimension;
        this.mRootView.addView(this.mAboutButton, layoutParams);
        this.mAboutButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.ABOUT_KIDOZ)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.14
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                FeedFamilyViewDialog.this.openDialog();
            }
        });
    }

    private void initAnimation() {
        AssetView assetView = new AssetView(getContext());
        this.mAnimation = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mAnimation.setId(Utils.generateViewId());
        this.mViewContainer.addView(this.mAnimation);
        this.mAnimation.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.PROMOTION_ANIMATION)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.7
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                FeedFamilyViewDialog.this.gifReady = true;
                FeedFamilyViewDialog.this.openDialog();
            }
        });
    }

    private void initDialog() {
        initRootView();
        initFamilyOneItemView();
        initLoadingProgressView();
        initNextAndPreviousButtons();
        initAnimation();
        initParentalLockButton();
        initAboutKidozButton();
        initExitButton();
        initKidozText();
        applayViewContainerParams();
        applyViewPagerLayoutParams();
        applyNextButtonLayoutParams();
        applyPreviousButtonLayoutParams();
        applyAnimationLayoutParams();
        applyLoadingViewLayoutParams();
        this.mOneItemFamilyView.showLoadingProgressView(true);
    }

    private void initExitButton() {
        AssetView assetView = new AssetView(getContext());
        this.mExitButton = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mExitButton.setId(Utils.generateViewId());
        String strOptString = this.mProperties.optString(StyleParser.X_BUTTON_ANIMATION);
        if (strOptString != null && strOptString.equals(GenAnimator.PRESS_IN_OUT)) {
            this.mExitButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedFamilyViewDialog.this.mExitButton.setClickable(false);
                    GenAnimator.clickItemAnimation(FeedFamilyViewDialog.this.mExitButton, 150, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.8.1
                        @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                        public void onAnimationEnd() {
                            FeedFamilyViewDialog.this.mExitButton.setClickable(true);
                            if (FeedFamilyViewDialog.this.mCloseBtnClickListener != null) {
                                FeedFamilyViewDialog.this.mCloseBtnClickListener.onClick(null);
                            }
                        }

                        @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                        public void onAnimationStart() {
                        }
                    });
                }
            });
        }
        int iMax = Math.max(ScreenUtils.getScreenSize(getContext(), true) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())), ScreenUtils.getScreenSize(getContext(), false) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())));
        File assetFile = AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.X_BUTTON));
        if (assetFile == null || !assetFile.exists()) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(assetFile.getAbsolutePath(), options);
        int i = (int) (iMax * 0.08f);
        int[] scaledDimension = ScreenUtils.getScaledDimension(options.outWidth, options.outHeight, i, i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(scaledDimension[0], scaledDimension[1]);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        this.mRootView.addView(this.mExitButton, layoutParams);
        this.mExitButton.loadAsset(assetFile, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.9
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                FeedFamilyViewDialog.this.openDialog();
            }
        });
    }

    private void initFamilyOneItemView() {
        OneItemFamilyView oneItemFamilyView = new OneItemFamilyView(getContext(), WidgetType.WIDGET_TYPE_FEED.getStringValue(), this.mStyleId, this.mProperties, new OneItemFamilyView.IOnOneItemActionListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.15
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.IOnOneItemActionListener
            public void onAction(OneItemFamilyView.OneItemAction oneItemAction) {
                int i = AnonymousClass20.$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction[oneItemAction.ordinal()];
                if (i == 1) {
                    FeedFamilyViewDialog.this.mAnimation.stopGifAnim();
                } else {
                    if (i != 2) {
                        return;
                    }
                    FeedFamilyViewDialog.this.mAnimation.startGifAnim();
                }
            }
        });
        this.mOneItemFamilyView = oneItemFamilyView;
        oneItemFamilyView.setOnRefreshDrawRequestListener(new OneItemFamilyView.IOnRefreshListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.16
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.IOnRefreshListener
            public void onRefreshDrawRequest() {
                FeedFamilyViewDialog.this.mViewContainer.requestFocus();
                FeedFamilyViewDialog.this.mViewContainer.bringToFront();
            }
        });
        this.mOneItemFamilyView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, Utils.dpTOpx(getContext(), 2.0f), 0, Utils.dpTOpx(getContext(), -2.0f));
        this.mViewContainer.addView(this.mOneItemFamilyView, layoutParams);
        this.mOneItemFamilyView.setViewPagerItemClickListener(new ItemViewPagerAdapter.ViewPagerItemClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.17
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.ViewPagerItemClickListener
            public void onClickEnd(ContentItem contentItem, int i) {
                if (FeedFamilyViewDialog.this.mAllowClickHandling) {
                    FeedFamilyViewDialog.this.mAllowClickHandling = false;
                    ContentExecutionHandler.handleContentItemClick(FeedFamilyViewDialog.this.getContext(), contentItem, WidgetType.WIDGET_TYPE_FEED.getStringValue(), FeedFamilyViewDialog.this.mStyleId, i, true, new ContentExecutionHandler.IOnHandleClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.17.1
                        @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnHandleClickListener
                        public void onRestoreClick() {
                            FeedFamilyViewDialog.this.mAllowClickHandling = true;
                        }
                    });
                }
            }
        });
        this.mOneItemFamilyView.setOneItemEnableState(true);
        setAnotherInterface();
    }

    private void initKidozText() {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        float fSpTOpx = Utils.spTOpx(getContext(), 10.0f);
        float fSpTOpx2 = Utils.spTOpx(getContext(), 4.0f);
        if (!ScreenUtils.getIsTablet(getContext())) {
            fSpTOpx = fSpTOpx2;
        }
        textView.setTextSize(fSpTOpx);
        int iDpTOpx = Utils.dpTOpx(getContext(), 5.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = iDpTOpx;
        layoutParams.rightMargin = iDpTOpx;
        layoutParams.bottomMargin = iDpTOpx;
        layoutParams.addRule(1, this.mAboutButton.getId());
        layoutParams.addRule(0, this.mParentalLockButton.getId());
        layoutParams.addRule(12);
        this.mRootView.addView(textView, layoutParams);
        try {
            textView.setText(this.mProperties.optString(StyleParser.LABEL_TEXT));
            textView.setTextColor(Color.parseColor(this.mProperties.optString(StyleParser.LABEL_TEXT_COLOR).trim()));
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to load label: " + e2.getMessage());
        }
    }

    private void initLoadingProgressView() {
        LoadingProgressView loadingProgressView = new LoadingProgressView(getContext());
        this.mLoadingProgressView = loadingProgressView;
        loadingProgressView.setVisibility(8);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        linearLayout.addView(this.mLoadingProgressView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(5, this.mOneItemFamilyView.getId());
        layoutParams.addRule(6, this.mOneItemFamilyView.getId());
        layoutParams.addRule(7, this.mOneItemFamilyView.getId());
        layoutParams.addRule(8, this.mOneItemFamilyView.getId());
        this.mViewContainer.addView(linearLayout, layoutParams);
    }

    private void initNextAndPreviousButtons() {
        AssetView assetView = new AssetView(getContext());
        this.mNextButton = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mNextButton.setId(Utils.generateViewId());
        String strOptString = this.mProperties.optString(StyleParser.NEXT_BUTTON_ANIMATION);
        if (strOptString != null) {
            if (strOptString.equals(GenAnimator.PRESS_LEFT)) {
                this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        FeedFamilyViewDialog.this.mNextButton.setClickable(false);
                        GenAnimator.playPressLeftAnimation(FeedFamilyViewDialog.this.mNextButton, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.1.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                FeedFamilyViewDialog.this.mNextButton.setClickable(true);
                                FeedFamilyViewDialog.this.mOneItemFamilyView.nextPagerItem();
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }
                        });
                    }
                });
            } else if (strOptString.equals(GenAnimator.PRESS_IN_OUT)) {
                this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        FeedFamilyViewDialog.this.mNextButton.setClickable(false);
                        GenAnimator.clickItemAnimation(FeedFamilyViewDialog.this.mNextButton, 150, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.2.1
                            @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                            public void onAnimationEnd() {
                                FeedFamilyViewDialog.this.mNextButton.setClickable(true);
                                FeedFamilyViewDialog.this.mOneItemFamilyView.nextPagerItem();
                            }

                            @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                            public void onAnimationStart() {
                            }
                        });
                    }
                });
            }
        }
        this.mViewContainer.addView(this.mNextButton);
        this.mNextButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.NEXT_BUTTON)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.3
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                FeedFamilyViewDialog.this.openDialog();
            }
        });
        AssetView assetView2 = new AssetView(getContext());
        this.mPreviousButton = assetView2;
        assetView2.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mPreviousButton.setId(Utils.generateViewId());
        String strOptString2 = this.mProperties.optString(StyleParser.PREVIOUS_BUTTON_ANIMATION);
        if (strOptString2 != null) {
            if (strOptString2.equals(GenAnimator.PRESS_RIGHT)) {
                this.mPreviousButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        FeedFamilyViewDialog.this.mPreviousButton.setClickable(false);
                        GenAnimator.playPressRightAnimation(FeedFamilyViewDialog.this.mPreviousButton, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.4.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                FeedFamilyViewDialog.this.mPreviousButton.setClickable(true);
                                FeedFamilyViewDialog.this.mOneItemFamilyView.previousItem();
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }
                        });
                    }
                });
            } else if (strOptString2.equals(GenAnimator.PRESS_IN_OUT)) {
                this.mPreviousButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        FeedFamilyViewDialog.this.mPreviousButton.setClickable(false);
                        GenAnimator.clickItemAnimation(FeedFamilyViewDialog.this.mPreviousButton, 150, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.5.1
                            @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                            public void onAnimationEnd() {
                                FeedFamilyViewDialog.this.mPreviousButton.setClickable(true);
                                FeedFamilyViewDialog.this.mOneItemFamilyView.previousItem();
                            }

                            @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                            public void onAnimationStart() {
                            }
                        });
                    }
                });
            }
        }
        this.mViewContainer.addView(this.mPreviousButton);
        this.mPreviousButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.PREVIOUS_BUTTON)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.6
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                FeedFamilyViewDialog.this.openDialog();
            }
        });
    }

    private void initParentalLockButton() {
        AssetView assetView = new AssetView(getContext());
        this.mParentalLockButton = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mParentalLockButton.setId(Utils.generateViewId());
        String strOptString = this.mProperties.optString(StyleParser.LOCK_ANIMATION);
        if (strOptString != null && strOptString.equals(GenAnimator.PRESS_IN_OUT)) {
            this.mParentalLockButton.setOnClickListener(new AnonymousClass10());
        }
        int iMax = Math.max(ScreenUtils.getScreenSize(getContext(), true) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())), ScreenUtils.getScreenSize(getContext(), false) - (ScreenUtils.getStatusBarHeight(getContext()) + ScreenUtils.getNavigationBarHeight(getContext())));
        File assetFile = AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.LOCK_ACTIVE));
        if (assetFile == null || !assetFile.exists()) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(assetFile.getAbsolutePath(), options);
        int i = (int) (iMax * 0.08f);
        int[] scaledDimension = ScreenUtils.getScaledDimension(options.outWidth, options.outHeight, i, i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(scaledDimension[0], scaledDimension[1]);
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        this.mRootView.addView(this.mParentalLockButton, layoutParams);
        updateLockIcon();
    }

    private void initRootView() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.mRootView = relativeLayout;
        relativeLayout.setBackgroundColor(Color.parseColor(this.mProperties.optString(StyleParser.BACKGROUND_ROOT_COLOR, "#CC261304")));
        setContentView(this.mRootView, new ViewGroup.MarginLayoutParams(-1, -1));
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        this.mViewContainer = relativeLayout2;
        this.mRootView.addView(relativeLayout2);
    }

    private void setAnotherInterface() {
        try {
            this.mOneItemFamilyView.setAnotherInterface(new AnotherInterface() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.18
                @Override // com.kidoz.sdk.api.interfaces.AnotherInterface
                public void toggleWidgetState(boolean z) {
                    FeedFamilyViewDialog.this.mExitButton.setClickable(z);
                    FeedFamilyViewDialog.this.mParentalLockButton.setClickable(z);
                    FeedFamilyViewDialog.this.mAboutButton.setClickable(z);
                    FeedFamilyViewDialog.this.mNextButton.setClickable(z);
                    FeedFamilyViewDialog.this.mPreviousButton.setClickable(z);
                    FeedFamilyViewDialog feedFamilyViewDialog = FeedFamilyViewDialog.this;
                    feedFamilyViewDialog.mOneItemFamilyView.mViewPager.mIsBlocked = !z;
                    feedFamilyViewDialog.setCancelable(z);
                }
            });
        } catch (Exception unused) {
        }
    }

    private void showLoadingProgressView(boolean z) {
        if (z) {
            this.mLoadingProgressView.setVisibility(0);
            this.mLoadingProgressView.startLoadingAnimation();
        } else {
            this.mLoadingProgressView.stopLoadingAnimation();
            this.mLoadingProgressView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLockIcon() {
        try {
            if (ParentalLockDialog.isParentalLockActive(getContext())) {
                this.mParentalLockButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.LOCK_ACTIVE)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.11
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z) {
                        FeedFamilyViewDialog.this.openDialog();
                    }
                });
            } else {
                this.mParentalLockButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.LOCK_NOT_ACTIVE)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.12
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z) {
                        FeedFamilyViewDialog.this.openDialog();
                    }
                });
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to load parental lock image: " + e2.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public void closeDialog() {
        this.gifReady = false;
        this.mIsWaitingToOpen = false;
        this.assentsCnt = 0;
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView != null) {
            oneItemFamilyView.invokeWidgetClose();
        }
        super.closeDialog();
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public boolean getIsCanOpen() {
        AssetView assetView = this.mParentalLockButton;
        return (assetView != null && this.mAboutButton != null && this.mExitButton != null && this.mAnimation != null && this.mNextButton != null && this.mPreviousButton != null && this.gifReady && assetView.getIsAssetLoaded() && this.mAboutButton.getIsAssetLoaded() && this.mExitButton.getIsAssetLoaded() && this.mAnimation.getIsAssetLoaded() && this.mNextButton.getIsAssetLoaded() && this.mPreviousButton.getIsAssetLoaded()) && this.gifReady;
    }

    public boolean isWaitingToOpen() {
        return this.mIsWaitingToOpen;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        getMyHandlerInstance().removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
        this.mIsWaitingToOpen = false;
        this.gifReady = false;
        this.assentsCnt = 0;
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogFocusChange(boolean z) {
        super.onDialogFocusChange(z);
        if (z) {
            this.mAllowClickHandling = true;
        } else {
            this.mAllowClickHandling = false;
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogWindowVisibilityChange(boolean z) {
        super.onDialogWindowVisibilityChange(z);
        this.mOneItemFamilyView.handleVisibilityChange(!z ? 4 : 0);
        this.mAllowClickHandling = true;
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public synchronized void openDialog() {
        this.mIsWaitingToOpen = true;
        if (KidozSDK.isInitialised() && !isShowing() && this.mIsWaitingToOpen && getIsCanOpen()) {
            super.openDialog();
            animateOpen();
            a aVar = new a();
            if (this.mIsAutomaticInvocation) {
                aVar.d("Open Type", "0");
            } else {
                aVar.d("Open Type", "1");
            }
            EventManager.getInstance(this.mCallingActivity).h(this.mCallingActivity, WidgetType.WIDGET_TYPE_FEED.getStringValue(), this.mStyleId, EventManager.a, aVar, "Sponsored Content", "Widget View", "Feed View");
            OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
            if (oneItemFamilyView != null) {
                oneItemFamilyView.invokeWidgetOpen();
            }
        }
    }

    public void pauseAction(boolean z) {
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView != null) {
            oneItemFamilyView.stopPlaybackAction(z);
        }
        AssetView assetView = this.mAnimation;
        if (assetView != null) {
            assetView.stopGifAnim();
        }
    }

    public void resumeAction(boolean z) {
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView == null || !z) {
            return;
        }
        oneItemFamilyView.startPlaybackAction();
    }

    public void setContentData(ContentData contentData) {
        this.mOneItemFamilyView.setContent(contentData.getContentDataItems());
        this.mOneItemFamilyView.showLoadingProgressView(false);
    }

    public void setOnCloseButtonClickListener(View.OnClickListener onClickListener) {
        this.mCloseBtnClickListener = onClickListener;
    }

    public void setOnInterstitialViewEventListener(IOnFeedViewEventListener iOnFeedViewEventListener) {
        if (iOnFeedViewEventListener != null) {
            this.mOnInterstitialViewEventListener = iOnFeedViewEventListener;
        }
    }
}
