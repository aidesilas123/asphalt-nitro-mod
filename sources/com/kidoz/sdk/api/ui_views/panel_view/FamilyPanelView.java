package com.kidoz.sdk.api.ui_views.panel_view;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.ContentExecutionHandler;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView;
import com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter;
import com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView;
import com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class FamilyPanelView extends AbstractPanelView {
    private static final int DEFAULT_CORNER_RADIUS = 4;
    public static final float ITEM_HEIGHT = 420.0f;
    public static final float ITEM_WIDTH = 660.0f;
    public static final String TAG = FamilyPanelView.class.getSimpleName();
    protected int mBtnAnimType;
    protected AssetView mGifView;
    public AssetView mNextButton;
    protected int mViewPagerHeight;
    protected int mViewPagerWidth;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE;

        static {
            int[] iArr = new int[HANDLE_POSITION.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION = iArr;
            try {
                iArr[HANDLE_POSITION.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[HANDLE_POSITION.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PANEL_TYPE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE = iArr2;
            try {
                iArr2[PANEL_TYPE.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[PANEL_TYPE.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[OneItemFamilyView.OneItemAction.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction = iArr3;
            try {
                iArr3[OneItemFamilyView.OneItemAction.STOP_ANY_ANIMATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction[OneItemFamilyView.OneItemAction.RESTART_ANY_ANIMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction[OneItemFamilyView.OneItemAction.ON_RESET_AUTO_LAUNCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public FamilyPanelView(Context context, JSONObject jSONObject) {
        super(context, jSONObject);
        this.mBtnAnimType = 1;
        float scaleFactor = ScreenUtils.getScaleFactor(getContext());
        this.mViewPagerWidth = (int) (660.0f * scaleFactor);
        this.mViewPagerHeight = (int) (scaleFactor * 420.0f);
    }

    private void initAnimationView() {
        AssetView assetView = new AssetView(getContext());
        this.mGifView = assetView;
        assetView.setId(Utils.generateViewId());
        this.mGifView.setScaleType(ImageView.ScaleType.FIT_END);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, Utils.dpTOpx(getContext(), 4.0f));
        this.mInnerContainer.addView(this.mGifView, layoutParams);
        this.mGifView.setOnTouchListener(new View.OnTouchListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        loadAnimation();
    }

    private void initNextButton() {
        AssetView assetView = new AssetView(getContext());
        this.mNextButton = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mNextButton.setId(Utils.generateViewId());
        this.mInnerContainer.addView(this.mNextButton, new RelativeLayout.LayoutParams(-2, -1));
        this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FamilyPanelView.this.mNextButton.setClickable(false);
                GenAnimator.clickItemAnimation(view, 80, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.4.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        FamilyPanelView.this.mNextButton.setClickable(true);
                        FamilyPanelView.this.mOneItemFamilyView.nextPagerItem();
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
        this.mNextButton.loadAsset(AssetUtil.getAssetFile(getContext(), this.mWidgetProperties.optString(StyleParser.NEXT_BTN_URL, null)), (AssetView.IOnAssetLoadedListener) null);
    }

    private void loadAnimation() {
        AssetView assetView = this.mGifView;
        if (assetView != null) {
            assetView.loadAsset(AssetUtil.getAssetFile(getContext(), this.mWidgetProperties.optString(StyleParser.MAIN_ANIMATION_URL_NEW, null)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.6
                @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                public void onAssetLoaded(boolean z) {
                    if (z) {
                        return;
                    }
                    FamilyPanelView familyPanelView = FamilyPanelView.this;
                    familyPanelView.mGifView.loadAsset(AssetUtil.getAssetFile(familyPanelView.getContext(), FamilyPanelView.this.mWidgetProperties.optString(StyleParser.MAIN_ANIMATION_URL, null)), (AssetView.IOnAssetLoadedListener) null);
                }
            });
        }
    }

    private void setFamilyColorAndShape(PANEL_TYPE panel_type, HANDLE_POSITION handle_position, int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        float fDpTOpx = Utils.dpTOpx(getContext(), 4.0f);
        if (AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[panel_type.ordinal()] != 1) {
            int i2 = AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[handle_position.ordinal()];
            if (i2 == 1) {
                gradientDrawable.setCornerRadii(new float[]{fDpTOpx, fDpTOpx, fDpTOpx, fDpTOpx, 0.0f, 0.0f, 0.0f, 0.0f});
            } else if (i2 != 2) {
                gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, fDpTOpx, fDpTOpx, 0.0f, 0.0f, 0.0f, 0.0f});
            } else {
                gradientDrawable.setCornerRadii(new float[]{fDpTOpx, fDpTOpx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f});
            }
        } else {
            int i3 = AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[handle_position.ordinal()];
            if (i3 == 1) {
                gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, 0.0f, 0.0f, fDpTOpx, fDpTOpx, fDpTOpx, fDpTOpx});
            } else if (i3 != 2) {
                gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, 0.0f, 0.0f, fDpTOpx, fDpTOpx, 0.0f, 0.0f});
            } else {
                gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, fDpTOpx, fDpTOpx});
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInnerContainer.setBackground(gradientDrawable);
        } else {
            this.mInnerContainer.setBackgroundDrawable(gradientDrawable);
        }
    }

    private void startHandlers() {
        stopHandlers();
        if (getPanelViewState() == AbstractPanelView.PanelViewState.OPEN) {
            this.mOneItemFamilyView.startAutoScroll();
        }
    }

    private void stopHandlers() {
        this.mOneItemFamilyView.stopAutoScroll();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void clearPanelContent() {
        this.mOneItemFamilyView.clearContent();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void initBottomBar() {
        super.initBottomBar();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void initInnerPanelView() {
        OneItemFamilyView oneItemFamilyView = new OneItemFamilyView(getContext(), WidgetType.WIDGET_TYPE_PANEL.getStringValue(), this.mStyleId, this.mWidgetProperties, new OneItemFamilyView.IOnOneItemActionListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.1
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.IOnOneItemActionListener
            public void onAction(OneItemFamilyView.OneItemAction oneItemAction) {
                int i = AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction[oneItemAction.ordinal()];
                if (i == 1) {
                    FamilyPanelView.this.mGifView.stopGifAnim();
                } else if (i == 2) {
                    FamilyPanelView.this.mGifView.startGifAnim();
                } else {
                    if (i != 3) {
                        return;
                    }
                    FamilyPanelView.this.getStaticHandler().removeCallbacksAndMessages(null);
                }
            }
        });
        this.mOneItemFamilyView = oneItemFamilyView;
        oneItemFamilyView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, Utils.dpTOpx(getContext(), 2.0f), 0, Utils.dpTOpx(getContext(), -2.0f));
        this.mInnerContainer.addView(this.mOneItemFamilyView, layoutParams);
        this.mOneItemFamilyView.setViewPagerItemClickListener(new ItemViewPagerAdapter.ViewPagerItemClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.2
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.ViewPagerItemClickListener
            public void onClickEnd(ContentItem contentItem, int i) {
                FamilyPanelView familyPanelView = FamilyPanelView.this;
                if (familyPanelView.mAllowClickHandling) {
                    familyPanelView.mAllowClickHandling = false;
                    ContentExecutionHandler.handleContentItemClick(familyPanelView.getContext(), contentItem, WidgetType.WIDGET_TYPE_PANEL.getStringValue(), FamilyPanelView.this.mStyleId, i, true, new ContentExecutionHandler.IOnHandleClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.2.1
                        @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnHandleClickListener
                        public void onRestoreClick() {
                            FamilyPanelView.this.mAllowClickHandling = true;
                        }
                    });
                }
            }
        });
        this.mOneItemFamilyView.setOneItemEnableState(false);
        this.mOneItemFamilyView.setOnRefreshDrawRequestListener(new OneItemFamilyView.IOnRefreshListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.3
            @Override // com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.IOnRefreshListener
            public void onRefreshDrawRequest() {
                FamilyPanelView.this.bringToFront();
                FamilyPanelView.this.requestFocus();
            }
        });
        initNextButton();
        initAnimationView();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void initPanelViewsRules() {
        int iDpTOpx = (int) ((((double) this.mViewPagerWidth) * 1.5d) + ((double) Utils.dpTOpx(getContext(), 30.0f)));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = iDpTOpx;
        int iDpTOpx2 = Utils.dpTOpx(getContext(), 4.0f);
        this.mInnerContainer.setPadding(0, iDpTOpx2, 0, iDpTOpx2);
        this.mInnerContainer.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mOneItemFamilyView.getLayoutParams();
        layoutParams2.width = this.mViewPagerWidth;
        layoutParams2.height = this.mViewPagerHeight;
        ((RelativeLayout.LayoutParams) this.mOneItemFamilyView.getLayoutParams()).addRule(0, this.mNextButton.getId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(0, this.mOneItemFamilyView.getId());
        layoutParams3.addRule(6, this.mOneItemFamilyView.getId());
        layoutParams3.addRule(8, this.mOneItemFamilyView.getId());
        this.mGifView.setLayoutParams(layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(Utils.dpTOpx(getContext(), 30.0f), -1);
        this.mNextButton.setLayoutParams(layoutParams4);
        layoutParams4.addRule(11);
        layoutParams4.addRule(6, this.mOneItemFamilyView.getId());
        layoutParams4.addRule(8, this.mOneItemFamilyView.getId());
        RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) this.mBottomBarContainer.getLayoutParams();
        layoutParams5.width = iDpTOpx;
        layoutParams5.addRule(3, this.mOneItemFamilyView.getId());
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        this.mShadowView.setLayoutParams(layoutParams6);
        layoutParams6.addRule(5, this.mInnerContainer.getId());
        layoutParams6.addRule(7, this.mInnerContainer.getId());
        layoutParams6.addRule(6, this.mInnerContainer.getId());
        layoutParams6.addRule(8, this.mInnerContainer.getId());
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        this.mPanelHandle.setLayoutParams(layoutParams7);
        this.mPoweredByTextView.setVisibility(0);
        if (this.mPanelState == AbstractPanelView.PanelViewState.OPEN) {
            this.mShadowView.setVisibility(0);
            this.mInnerContainer.setVisibility(0);
        } else {
            this.mShadowView.setVisibility(4);
            this.mInnerContainer.setVisibility(4);
        }
        int iDpTOpx3 = Utils.dpTOpx(getContext(), 10.0f);
        int i = AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[this.mPanelType.ordinal()];
        if (i == 1) {
            layoutParams.addRule(10);
            layoutParams7.addRule(3, this.mInnerContainer.getId());
            layoutParams6.bottomMargin = -iDpTOpx3;
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams7.addRule(2, this.mInnerContainer.getId());
            layoutParams6.topMargin = -iDpTOpx3;
        }
        int iDpTOpx4 = Utils.dpTOpx(getContext(), 6.0f);
        int i2 = AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION[this.mHandlePosition.ordinal()];
        if (i2 == 1) {
            layoutParams7.addRule(14);
            layoutParams.addRule(14);
            int i3 = -iDpTOpx3;
            layoutParams6.leftMargin = i3;
            layoutParams6.rightMargin = i3;
        } else if (i2 != 2) {
            layoutParams7.addRule(5, this.mInnerContainer.getId());
            layoutParams7.leftMargin = iDpTOpx4;
            layoutParams.addRule(9);
            layoutParams6.rightMargin = -iDpTOpx3;
        } else {
            layoutParams7.addRule(7, this.mInnerContainer.getId());
            layoutParams7.rightMargin = iDpTOpx4;
            layoutParams.addRule(11);
            layoutParams6.leftMargin = -iDpTOpx3;
        }
        this.mShadowView.setConfiguration(this.mPanelType, this.mHandlePosition);
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void initShadowView() {
        this.mShadowView = new ShadowView(getContext());
        this.mContainer.addView(this.mShadowView, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onCollapsePanelAnimationEnded() {
        this.mShadowView.setVisibility(4);
        this.mInnerContainer.setVisibility(4);
        this.mOneItemFamilyView.invokeWidgetClose();
        stopHandlers();
        this.mOneItemFamilyView.setOneItemEnableState(false);
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onContentDataLoadEnded() {
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onContentDataLoadFailed() {
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onContentDataLoadStarted() {
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        pauseAction(true);
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onExpandPanelAnimationStarted() {
        this.mOneItemFamilyView.setOneItemEnableState(true);
        this.mShadowView.setVisibility(0);
        this.mInnerContainer.setVisibility(0);
        this.mOneItemFamilyView.invokeWidgetOpen();
        startHandlers();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void onNoOffers() {
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView == null || oneItemFamilyView.isEmpty()) {
            return;
        }
        if (i == 0) {
            startHandlers();
        } else {
            stopHandlers();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            startHandlers();
        } else {
            stopHandlers();
        }
    }

    public void pauseAction(boolean z) {
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView != null) {
            oneItemFamilyView.stopPlaybackAction(z);
        }
        AssetView assetView = this.mGifView;
        if (assetView != null) {
            assetView.stopGifAnim();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void prepareProperties() {
        super.prepareProperties();
        this.mBtnAnimType = this.mWidgetProperties.optInt(StyleParser.NEXT_BTN_ANIMATION_TYPE, 1);
    }

    public void resumeAction(boolean z) {
        OneItemFamilyView oneItemFamilyView = this.mOneItemFamilyView;
        if (oneItemFamilyView == null || !z) {
            return;
        }
        oneItemFamilyView.startPlaybackAction();
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    protected void setContentAndRefresh(ArrayList<ContentItem> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.mOneItemFamilyView.setContent(arrayList);
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    public void setPanelColor(int i) {
        super.setPanelColor(i);
        if (this.mInnerContainer != null) {
            setFamilyColorAndShape(this.mPanelType, this.mHandlePosition, this.mPanelBgColor);
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView
    public void setPanelEnabled(boolean z) {
        this.mOneItemFamilyView.setOneItemEnableState(z);
        this.mOneItemFamilyView.startPlaybackAction();
    }
}
