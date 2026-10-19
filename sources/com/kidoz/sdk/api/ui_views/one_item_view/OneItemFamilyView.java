package com.kidoz.sdk.api.ui_views.one_item_view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.ViewPager;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardView;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.interfaces.AnotherInterface;
import com.kidoz.sdk.api.server_connect.BaseConnectionClient;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface;
import com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog;
import com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView;
import com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter;
import com.kidoz.sdk.api.ui_views.panel_view.OneContentItemView;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class OneItemFamilyView extends RelativeLayout {
    protected static final int ITEM_CONTAINER_STROKE_WIDTH = 4;
    protected static final float LOADING_PROGRESS_DEFAULT_RATIO = 0.35f;
    protected int AUTO_SCROLL_DELAY;
    protected ItemViewPagerAdapter mAdapter;
    private AnotherInterface mAnotherInterface;
    protected HashMap<String, Integer> mContentDisplayed;
    protected ContentItem mCurrentItemInView;
    protected int mCurrentViewPagerIndexInFocus;
    protected int mHeight;
    protected HtmlViewWrapper mHtmlDefaultView;
    protected HtmlViewWrapper mHtmlSpecialView;
    protected boolean mIsEnabled;
    protected LoadingProgressView mLoadingProgressView;
    private Lock mLock;
    protected AssetView mMaximizeBtn;
    protected String mMaximizeBtnUrl;
    protected MaximizedViewDialog mMaximizedViewDialog;
    protected IOnOneItemActionListener mOneItemActionListener;
    protected PlaybackState mPlaybackState;
    protected int mPreviousViewPagerIndexInFocus;
    protected JSONObject mProperties;
    private IOnRefreshListener mRefreshListener;
    protected String mStyleId;
    protected int mThumbContainerBgColor;
    public AutoScrollViewPager mViewPager;
    public KidozCardView mViewPagerCardContainerView;
    protected ItemViewPagerAdapter.ViewPagerItemClickListener mViewPagerItemClickListener;
    protected String mWidgetType;
    protected int mWidth;
    private Utils.StaticHandler staticHandler;

    public interface IOnOneItemActionListener {
        void onAction(OneItemAction oneItemAction);
    }

    public interface IOnRefreshListener {
        void onRefreshDrawRequest();
    }

    public enum OneItemAction {
        STOP_ANY_ANIMATION,
        RESTART_ANY_ANIMATION,
        ON_RESET_AUTO_LAUNCH
    }

    public enum PlaybackState {
        PLAYING,
        STOPED
    }

    public OneItemFamilyView(Context context, String str, String str2, JSONObject jSONObject, IOnOneItemActionListener iOnOneItemActionListener) {
        super(context);
        this.AUTO_SCROLL_DELAY = 12000;
        this.mContentDisplayed = new HashMap<>();
        this.mIsEnabled = false;
        this.mPlaybackState = PlaybackState.STOPED;
        this.mCurrentViewPagerIndexInFocus = 0;
        this.mPreviousViewPagerIndexInFocus = -1;
        this.staticHandler = new Utils.StaticHandler(Looper.getMainLooper());
        this.mLock = new ReentrantLock();
        this.mProperties = jSONObject;
        this.mWidgetType = str;
        this.mStyleId = str2;
        this.mOneItemActionListener = iOnOneItemActionListener;
        applyStyleProperties();
        initView();
        Utils.setOnGlobalLayoutFinishListener(this, new Utils.OnGlobalLayoutFinishedListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.1
            @Override // com.kidoz.sdk.api.general.utils.Utils.OnGlobalLayoutFinishedListener
            public void onLayoutFinished() {
                OneItemFamilyView oneItemFamilyView = OneItemFamilyView.this;
                oneItemFamilyView.mWidth = oneItemFamilyView.getMeasuredWidth();
                OneItemFamilyView oneItemFamilyView2 = OneItemFamilyView.this;
                oneItemFamilyView2.mHeight = oneItemFamilyView2.getMeasuredHeight();
                OneItemFamilyView oneItemFamilyView3 = OneItemFamilyView.this;
                oneItemFamilyView3.mAdapter = new ItemViewPagerAdapter(oneItemFamilyView3.mProperties, oneItemFamilyView3.mWidth, oneItemFamilyView3.mHeight);
                OneItemFamilyView oneItemFamilyView4 = OneItemFamilyView.this;
                oneItemFamilyView4.mAdapter.setViewPagerItemClickListener(oneItemFamilyView4.mViewPagerItemClickListener);
                OneItemFamilyView oneItemFamilyView5 = OneItemFamilyView.this;
                oneItemFamilyView5.mViewPager.setAdapter(oneItemFamilyView5.mAdapter);
                OneItemFamilyView.this.mAdapter.setContent(new ArrayList<>());
                OneItemFamilyView.this.mAdapter.notifyDataSetChanged();
                OneItemFamilyView.this.mAdapter.setOnItemInstantiateFinishListener(new ItemViewPagerAdapter.IOnItemInstaniateFinishListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.1.1
                    @Override // com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.IOnItemInstaniateFinishListener
                    public void onFirstItemReady() {
                        if (OneItemFamilyView.this.mWidgetType.equals(WidgetType.WIDGET_TYPE_FEED.getStringValue())) {
                            OneItemFamilyView.this.refreshNextViewItem(0);
                        }
                    }
                });
                int i = (int) (r0.mWidth * 0.22f);
                OneItemFamilyView.this.mMaximizeBtn.getLayoutParams().width = i;
                OneItemFamilyView.this.mMaximizeBtn.getLayoutParams().height = i;
            }
        });
    }

    private void applyListenerToDefaultHtmlView() {
        HtmlViewWrapper htmlViewWrapper = this.mHtmlDefaultView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.setHtmlWebViewListener(new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.2
                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onDonePlayBack() {
                    OneItemFamilyView.this.startAutoScroll();
                    OneItemFamilyView.this.nextPagerItem();
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onHtmlFinishedLoading() {
                    super.onHtmlFinishedLoading();
                    OneItemFamilyView.this.staticHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (OneItemFamilyView.this.mRefreshListener != null) {
                                OneItemFamilyView.this.mRefreshListener.onRefreshDrawRequest();
                            }
                        }
                    }, 100L);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onOpenMaximized() {
                    OneItemFamilyView oneItemFamilyView = OneItemFamilyView.this;
                    oneItemFamilyView.openMaximizedDialogVew(oneItemFamilyView.mCurrentItemInView);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void toggleWidgetState(boolean z) {
                    if (OneItemFamilyView.this.mAnotherInterface != null) {
                        OneItemFamilyView.this.mAnotherInterface.toggleWidgetState(z);
                    }
                }
            });
        }
    }

    private void applyListenerToSpecialHtmlView() {
        HtmlViewWrapper htmlViewWrapper = this.mHtmlSpecialView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.setHtmlWebViewListener(new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.3
                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onHtmlFinishedLoading() {
                    if (OneItemFamilyView.this.mHtmlSpecialView.getVisibility() == 0) {
                        OneItemFamilyView.this.mHtmlSpecialView.hideLoadingProgressView();
                    }
                    ContentItem contentItem = OneItemFamilyView.this.mCurrentItemInView;
                    if (contentItem != null) {
                        if (contentItem.getShouldDisplayMaximizeButton()) {
                            OneItemFamilyView.this.mMaximizeBtn.setVisibility(0);
                        } else {
                            OneItemFamilyView.this.mMaximizeBtn.setVisibility(4);
                        }
                    }
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onHtmlStartLoading() {
                    if (OneItemFamilyView.this.mHtmlSpecialView.getVisibility() == 0) {
                        OneItemFamilyView.this.mHtmlSpecialView.showLoadingProgressView();
                    }
                    OneItemFamilyView.this.mMaximizeBtn.setVisibility(4);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void toggleWidgetState(boolean z) {
                    if (OneItemFamilyView.this.mAnotherInterface != null) {
                        OneItemFamilyView.this.mAnotherInterface.toggleWidgetState(z);
                    }
                }
            });
        }
    }

    private void initHtmlDefaultWebView() {
    }

    private void initHtmlSpecialWebView() {
        HtmlViewWrapper htmlViewWrapper = new HtmlViewWrapper(getContext(), false);
        this.mHtmlSpecialView = htmlViewWrapper;
        htmlViewWrapper.setInFocusActivityContext(getContext());
        this.mHtmlSpecialView.setWidgetType(this.mWidgetType);
        this.mHtmlSpecialView.setStyleID(this.mStyleId);
        applyListenerToSpecialHtmlView();
        this.mHtmlSpecialView.setVisibility(8);
    }

    private void initLoadingProgressView() {
        LoadingProgressView loadingProgressView = new LoadingProgressView(getContext());
        this.mLoadingProgressView = loadingProgressView;
        loadingProgressView.setVisibility(8);
        Point screenSize = Utils.getScreenSize(getContext());
        int iMin = (int) (Math.min(screenSize.x, screenSize.y) * LOADING_PROGRESS_DEFAULT_RATIO);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        linearLayout.addView(this.mLoadingProgressView, new LinearLayout.LayoutParams(iMin, iMin));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(5, this.mViewPagerCardContainerView.getId());
        layoutParams.addRule(7, this.mViewPagerCardContainerView.getId());
        addView(linearLayout, layoutParams);
    }

    private void initMaximizeButton() {
        this.mMaximizeBtn = new AssetView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(7, this.mViewPagerCardContainerView.getId());
        layoutParams.addRule(8, this.mViewPagerCardContainerView.getId());
        layoutParams.setMargins(0, 0, Utils.dpTOpx(getContext(), 5.0f), Utils.dpTOpx(getContext(), 5.0f));
        addView(this.mMaximizeBtn, layoutParams);
        this.mMaximizeBtn.setVisibility(4);
        this.mMaximizeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.clickItemAnimation(view, 70, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.4.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        OneItemFamilyView oneItemFamilyView = OneItemFamilyView.this;
                        oneItemFamilyView.openMaximizedDialogVew(oneItemFamilyView.mCurrentItemInView);
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
        this.mMaximizeBtn.loadAsset(AssetUtil.getAssetFile(getContext(), this.mMaximizeBtnUrl), (AssetView.IOnAssetLoadedListener) null);
    }

    private void initPagerContainerCard() {
        KidozCardView kidozCardView = new KidozCardView(getContext());
        this.mViewPagerCardContainerView = kidozCardView;
        kidozCardView.setId(Utils.generateViewId());
        this.mViewPagerCardContainerView.setRadius(Utils.dpTOpx(getContext(), 4.0f));
        this.mViewPagerCardContainerView.setCardBackgroundColor(this.mThumbContainerBgColor);
        addView(this.mViewPagerCardContainerView, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void initViewPager() {
        AutoScrollViewPager autoScrollViewPager = new AutoScrollViewPager(getContext());
        this.mViewPager = autoScrollViewPager;
        autoScrollViewPager.setInterval(this.AUTO_SCROLL_DELAY);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.6
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f2, int i2) {
                if (OneItemFamilyView.this.mRefreshListener != null) {
                    OneItemFamilyView.this.mRefreshListener.onRefreshDrawRequest();
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (OneItemFamilyView.this.mAdapter.getRealCount() > 0) {
                    OneItemFamilyView.this.mAdapter.toggleIsClickable(false);
                    OneItemFamilyView.this.staticHandler.removeCallbacks(null);
                    OneItemFamilyView.this.staticHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            OneItemFamilyView.this.mAdapter.toggleIsClickable(true);
                        }
                    }, 750L);
                    OneItemFamilyView.this.refreshNextViewItem(i);
                }
            }
        });
        this.mViewPager.setId(Utils.generateViewId());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.mViewPager.setPageMargin(Utils.dpTOpx(getContext(), 3.0f));
        this.mViewPager.setClipToPadding(false);
        int iDpTOpx = Utils.dpTOpx(getContext(), 4.0f);
        this.mViewPagerCardContainerView.setContentPadding(iDpTOpx, iDpTOpx, iDpTOpx, iDpTOpx);
        this.mViewPagerCardContainerView.addView(this.mViewPager, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshNextViewItem(int i) {
        if (this.mAdapter.getRealCount() > 0) {
            int realCount = i % this.mAdapter.getRealCount();
            if (this.mIsEnabled) {
                stopAutoScroll();
                this.mCurrentViewPagerIndexInFocus = i;
                sendImpressionLog(realCount);
                int i2 = this.mPreviousViewPagerIndexInFocus;
                if (i2 != -1 && i2 != this.mCurrentViewPagerIndexInFocus) {
                    ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
                    ContentItem contentItem = itemViewPagerAdapter.getContentItem(i2 % itemViewPagerAdapter.getRealCount());
                    if (contentItem != null && contentItem.getContentType() == ContentType.HTML) {
                        if (contentItem.getIsNonDefaultHtml()) {
                            this.mHtmlSpecialView.clearHtmlView();
                        } else {
                            this.mHtmlDefaultView.requestFocusOff();
                        }
                    }
                    View viewFindViewWithTag = this.mViewPager.findViewWithTag(Integer.valueOf(this.mPreviousViewPagerIndexInFocus));
                    if (viewFindViewWithTag != null) {
                        ((OneContentItemView) viewFindViewWithTag).clearActiveWebView();
                    }
                    this.mPreviousViewPagerIndexInFocus = -1;
                }
                ContentItem contentItem2 = this.mAdapter.getContentItem(realCount);
                this.mCurrentItemInView = contentItem2;
                if (contentItem2 == null || contentItem2.getContentType() != ContentType.HTML) {
                    startAutoScroll();
                    HtmlViewWrapper htmlViewWrapper = this.mHtmlDefaultView;
                    if (htmlViewWrapper != null) {
                        htmlViewWrapper.setVisibility(4);
                    }
                    this.mHtmlSpecialView.setVisibility(4);
                    this.mMaximizeBtn.setVisibility(4);
                    IOnOneItemActionListener iOnOneItemActionListener = this.mOneItemActionListener;
                    if (iOnOneItemActionListener != null) {
                        iOnOneItemActionListener.onAction(OneItemAction.RESTART_ANY_ANIMATION);
                        return;
                    }
                    return;
                }
                View viewFindViewWithTag2 = this.mViewPager.findViewWithTag(Integer.valueOf(this.mCurrentViewPagerIndexInFocus));
                if (viewFindViewWithTag2 != null) {
                    OneContentItemView oneContentItemView = (OneContentItemView) viewFindViewWithTag2;
                    if (this.mCurrentItemInView.getIsNonDefaultHtml()) {
                        oneContentItemView.setActiveWebView(this.mHtmlSpecialView);
                        this.mHtmlDefaultView.setVisibility(4);
                        this.mHtmlSpecialView.setVisibility(0);
                        this.mHtmlSpecialView.clearHtmlView();
                        this.mHtmlSpecialView.setData(this.mCurrentItemInView);
                        this.mHtmlSpecialView.reloadHtml();
                        IOnOneItemActionListener iOnOneItemActionListener2 = this.mOneItemActionListener;
                        if (iOnOneItemActionListener2 != null) {
                            iOnOneItemActionListener2.onAction(OneItemAction.RESTART_ANY_ANIMATION);
                        }
                    } else {
                        this.mHtmlSpecialView.setVisibility(4);
                        HtmlViewWrapper htmlViewWrapper2 = this.mHtmlDefaultView;
                        if (htmlViewWrapper2 != null) {
                            htmlViewWrapper2.setData(this.mCurrentItemInView);
                            oneContentItemView.setActiveWebView(this.mHtmlDefaultView);
                            this.mHtmlDefaultView.setVisibility(0);
                            this.staticHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.5
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (OneItemFamilyView.this.mRefreshListener != null) {
                                        OneItemFamilyView.this.mRefreshListener.onRefreshDrawRequest();
                                    }
                                    OneItemFamilyView.this.mHtmlDefaultView.requestFocusOn(false);
                                }
                            }, 100L);
                        }
                        IOnOneItemActionListener iOnOneItemActionListener3 = this.mOneItemActionListener;
                        if (iOnOneItemActionListener3 != null) {
                            iOnOneItemActionListener3.onAction(OneItemAction.STOP_ANY_ANIMATION);
                        }
                    }
                    if (this.mCurrentItemInView.getShouldDisplayMaximizeButton()) {
                        this.mMaximizeBtn.setVisibility(0);
                    } else {
                        this.mMaximizeBtn.setVisibility(4);
                    }
                    this.mPreviousViewPagerIndexInFocus = this.mCurrentViewPagerIndexInFocus;
                }
            }
        }
    }

    private void sendImpressionLog(int i) {
        HashMap<String, Integer> map;
        ContentItem contentItem = this.mAdapter.getContentItem(i);
        if (contentItem == null || (map = this.mContentDisplayed) == null || map.containsKey(contentItem.getId()) || contentItem.getIsAvoidAutoImpression()) {
            return;
        }
        if (contentItem.isPromoted()) {
            EventManager.getInstance(getContext()).n(getContext(), this.mWidgetType, this.mStyleId, "Impression", contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
        } else {
            EventManager.getInstance(getContext()).l(getContext(), this.mWidgetType, this.mStyleId, "Impression", contentItem.getName(), contentItem.getId(), i);
        }
        this.mContentDisplayed.put(contentItem.getId(), Integer.valueOf(i));
        if (contentItem.getThirdPartyImpressionBeacon() != null) {
            BaseConnectionClient.makeAsyncGet(contentItem.getThirdPartyImpressionBeacon(), null);
        }
    }

    protected void applyStyleProperties() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            this.mMaximizeBtnUrl = jSONObject.optString(StyleParser.HTML_MAXIMIZE_BTN, null);
            this.AUTO_SCROLL_DELAY = this.mProperties.optInt(StyleParser.SWAP_CONTENT_REFRESH_RATE_SECONDS, 12) * 1000;
            this.mThumbContainerBgColor = Color.parseColor(this.mProperties.optString(StyleParser.THUMBNAIL_BG_COLOR, "#ccffffff"));
        }
    }

    public void clearContent() {
        this.mContentDisplayed.clear();
        ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
        if (itemViewPagerAdapter != null) {
            itemViewPagerAdapter.clearContent();
        }
    }

    public synchronized void handleVisibilityChange(int i) {
        if (i == 0) {
            this.mHtmlSpecialView.setInFocusActivityContext(getContext());
            this.mHtmlDefaultView.setInFocusActivityContext(getContext());
            startPlaybackAction();
        } else {
            try {
                stopPlaybackAction(true);
                this.staticHandler.removeCallbacksAndMessages(null);
            } catch (Exception unused) {
            }
        }
    }

    protected void initView() {
        initPagerContainerCard();
        initViewPager();
        initHtmlDefaultWebView();
        initHtmlSpecialWebView();
        initLoadingProgressView();
        initMaximizeButton();
    }

    public void invokeWidgetClose() {
        HtmlViewWrapper htmlViewWrapper = this.mHtmlDefaultView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.requestWidgetClose(this.mWidgetType);
        }
    }

    public void invokeWidgetOpen() {
        HtmlViewWrapper htmlViewWrapper = this.mHtmlDefaultView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.requestWidgetOpen(this.mWidgetType);
        }
    }

    public boolean isEmpty() {
        ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
        if (itemViewPagerAdapter == null) {
            return true;
        }
        return itemViewPagerAdapter.isAdapterEmpty();
    }

    public void nextPagerItem() {
        AutoScrollViewPager autoScrollViewPager = this.mViewPager;
        autoScrollViewPager.setCurrentItem(autoScrollViewPager.getCurrentItem() + 1);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (EventBus.getDefault().i(this)) {
            return;
        }
        EventBus.getDefault().o(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (EventBus.getDefault().i(this)) {
            EventBus.getDefault().q(this);
        }
        HtmlViewWrapper htmlViewWrapper = this.mHtmlSpecialView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.stopAndReleaseWebView();
        }
        this.staticHandler.removeCallbacksAndMessages(null);
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage == null || eventMessage.getMessageType() != EventMessage.MessageType.HTML_FULL_VIEW_CLOSE || eventMessage.getAdditionalParam() == null || !eventMessage.getAdditionalParam().equals(this.mWidgetType)) {
            return;
        }
        onMaximizedScreenPlayerViewClosed();
    }

    protected void onMaximizedScreenPlayerViewClosed() {
        IOnOneItemActionListener iOnOneItemActionListener;
        if (this.mCurrentItemInView.getIsNonDefaultHtml()) {
            applyListenerToSpecialHtmlView();
            this.mHtmlSpecialView.reloadHtml();
            IOnOneItemActionListener iOnOneItemActionListener2 = this.mOneItemActionListener;
            if (iOnOneItemActionListener2 != null) {
                iOnOneItemActionListener2.onAction(OneItemAction.RESTART_ANY_ANIMATION);
                return;
            }
            return;
        }
        applyListenerToDefaultHtmlView();
        int i = this.mCurrentViewPagerIndexInFocus;
        if (i == -1) {
            IOnOneItemActionListener iOnOneItemActionListener3 = this.mOneItemActionListener;
            if (iOnOneItemActionListener3 != null) {
                iOnOneItemActionListener3.onAction(OneItemAction.RESTART_ANY_ANIMATION);
                return;
            }
            return;
        }
        View viewFindViewWithTag = this.mViewPager.findViewWithTag(Integer.valueOf(i));
        if (viewFindViewWithTag != null) {
            ((OneContentItemView) viewFindViewWithTag).setActiveWebView(this.mHtmlDefaultView);
            this.mHtmlDefaultView.requestMinimize();
            ContentItem contentItem = this.mCurrentItemInView;
            if (contentItem == null || contentItem.getContentType() == ContentType.HTML || (iOnOneItemActionListener = this.mOneItemActionListener) == null) {
                return;
            }
            iOnOneItemActionListener.onAction(OneItemAction.RESTART_ANY_ANIMATION);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int iMin = (int) (Math.min(i, i2) * LOADING_PROGRESS_DEFAULT_RATIO);
        this.mLoadingProgressView.getLayoutParams().height = iMin;
        this.mLoadingProgressView.getLayoutParams().width = iMin;
        this.mLoadingProgressView.setCircleWidthRelativeToSize(i);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        handleVisibilityChange(i);
    }

    protected void openMaximizedDialogVew(ContentItem contentItem) {
        stopAutoScroll();
        if (contentItem != null) {
            if (contentItem.getIsNonDefaultHtml()) {
                this.mMaximizedViewDialog = new MaximizedViewDialog(getContext(), this.mWidgetType, this.mStyleId, this.mHtmlSpecialView);
            } else {
                this.mMaximizedViewDialog = new MaximizedViewDialog(getContext(), this.mWidgetType, this.mStyleId, this.mHtmlDefaultView);
            }
            this.mMaximizedViewDialog.loadHtmlView(contentItem);
            this.mMaximizedViewDialog.openDialog();
        }
        IOnOneItemActionListener iOnOneItemActionListener = this.mOneItemActionListener;
        if (iOnOneItemActionListener != null) {
            iOnOneItemActionListener.onAction(OneItemAction.STOP_ANY_ANIMATION);
        }
    }

    public void previousItem() {
        this.mViewPager.setCurrentItem(r0.getCurrentItem() - 1);
    }

    public void setAnotherInterface(AnotherInterface anotherInterface) {
        this.mAnotherInterface = anotherInterface;
    }

    public void setContent(ArrayList<ContentItem> arrayList) {
        if (this.mLock.tryLock()) {
            this.mCurrentViewPagerIndexInFocus = 0;
            this.mPreviousViewPagerIndexInFocus = -1;
            try {
                this.mContentDisplayed.clear();
                ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
                if (itemViewPagerAdapter != null) {
                    itemViewPagerAdapter.setContent(arrayList);
                    this.mViewPager.setCurrentItem(0);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.mLock.unlock();
                throw th;
            }
            this.mLock.unlock();
        }
    }

    public void setOnRefreshDrawRequestListener(IOnRefreshListener iOnRefreshListener) {
        this.mRefreshListener = iOnRefreshListener;
    }

    public void setOneItemEnableState(boolean z) {
        this.mIsEnabled = z;
    }

    public void setViewPagerItemClickListener(ItemViewPagerAdapter.ViewPagerItemClickListener viewPagerItemClickListener) {
        this.mViewPagerItemClickListener = viewPagerItemClickListener;
        this.mHtmlDefaultView.setViewPagerItemClickListener(viewPagerItemClickListener);
        this.mHtmlSpecialView.setViewPagerItemClickListener(this.mViewPagerItemClickListener);
    }

    public void showLoadingProgressView(boolean z) {
        if (z) {
            this.mLoadingProgressView.startLoadingAnimation();
        } else {
            this.mLoadingProgressView.stopLoadingAnimation();
        }
    }

    public void startAutoScroll() {
        if (this.mViewPager.isAutoScrollOn()) {
            return;
        }
        this.mViewPager.startAutoScroll(this.AUTO_SCROLL_DELAY);
    }

    public synchronized void startPlaybackAction() {
        if (getVisibility() == 0 && this.mIsEnabled && this.mPlaybackState == PlaybackState.STOPED) {
            this.mPlaybackState = PlaybackState.PLAYING;
            ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
            if (itemViewPagerAdapter != null && itemViewPagerAdapter.getRealCount() > 0) {
                refreshNextViewItem(this.mCurrentViewPagerIndexInFocus);
            }
        }
    }

    public void stopAutoScroll() {
        this.mViewPager.stopAutoScroll();
    }

    public synchronized void stopPlaybackAction(boolean z) {
        stopAutoScroll();
        if (this.mIsEnabled && this.mPlaybackState == PlaybackState.PLAYING) {
            this.mPlaybackState = PlaybackState.STOPED;
            ItemViewPagerAdapter itemViewPagerAdapter = this.mAdapter;
            if (itemViewPagerAdapter != null && itemViewPagerAdapter.getRealCount() > 0) {
                ItemViewPagerAdapter itemViewPagerAdapter2 = this.mAdapter;
                ContentItem contentItem = itemViewPagerAdapter2.getContentItem(this.mCurrentViewPagerIndexInFocus % itemViewPagerAdapter2.getRealCount());
                if (contentItem != null && contentItem.getContentType() == ContentType.HTML) {
                    if (contentItem.getIsNonDefaultHtml()) {
                        this.mHtmlSpecialView.clearHtmlView();
                    } else if (z) {
                        this.mHtmlDefaultView.requestFocusOff();
                    }
                }
            }
        }
    }
}
