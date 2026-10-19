package com.kidoz.sdk.api;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.interfaces.AnotherInterface;
import com.kidoz.sdk.api.interfaces.IOnPanelViewEventListener;
import com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper;
import com.kidoz.sdk.api.interfaces.KidozPlayerListener;
import com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView;
import com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView;
import com.kidoz.sdk.api.ui_views.panel_view.HANDLE_POSITION;
import com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class PanelView extends RelativeLayout {
    public static final String TAG = PanelView.class.getSimpleName();
    private AbstractPanelView mAbstractPanelView;
    private HANDLE_POSITION mHandlePosition;
    private IOnPanelViewEventListener mIOnPanelViewEventListener;
    private KidozPlayerEventHelper mKidozPlayerEventHelper;
    private KidozPlayerListener mKidozPlayerListener;
    private PANEL_TYPE mPanelType;
    private boolean mVisibilityRequest;
    private Lock raceConditionLock;

    public PanelView(Context context) {
        super(context);
        this.mPanelType = PANEL_TYPE.BOTTOM;
        this.mHandlePosition = HANDLE_POSITION.START;
        this.mIOnPanelViewEventListener = null;
        this.raceConditionLock = new ReentrantLock();
        this.mVisibilityRequest = true;
        initView();
    }

    public PanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPanelType = PANEL_TYPE.BOTTOM;
        this.mHandlePosition = HANDLE_POSITION.START;
        this.mIOnPanelViewEventListener = null;
        this.raceConditionLock = new ReentrantLock();
        this.mVisibilityRequest = true;
        initView();
    }

    public PanelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPanelType = PANEL_TYPE.BOTTOM;
        this.mHandlePosition = HANDLE_POSITION.START;
        this.mIOnPanelViewEventListener = null;
        this.raceConditionLock = new ReentrantLock();
        this.mVisibilityRequest = true;
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildPanelView() {
        HANDLE_POSITION handle_position;
        JSONObject jSONObjectLoadProperties = ServerConfigStorage.getInstance().loadProperties(TAG);
        if (jSONObjectLoadProperties != null) {
            FamilyPanelView familyPanelView = new FamilyPanelView(getContext(), jSONObjectLoadProperties);
            this.mAbstractPanelView = familyPanelView;
            PANEL_TYPE panel_type = this.mPanelType;
            if (panel_type != null && (handle_position = this.mHandlePosition) != null) {
                familyPanelView.setPanelConfiguration(panel_type, handle_position);
            }
            IOnPanelViewEventListener iOnPanelViewEventListener = this.mIOnPanelViewEventListener;
            if (iOnPanelViewEventListener != null) {
                this.mAbstractPanelView.setOnPanelViewEventListener(iOnPanelViewEventListener);
            }
            this.mAbstractPanelView.setPanelEnabled(this.mVisibilityRequest);
        }
        KidozPlayerEventHelper kidozPlayerEventHelper = this.mKidozPlayerEventHelper;
        if (kidozPlayerEventHelper != null) {
            kidozPlayerEventHelper.register();
        }
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        if (abstractPanelView != null) {
            addView(abstractPanelView);
            setAnotherInterface();
        }
    }

    private void initView() {
        if (!EventBus.getDefault().i(this)) {
            EventBus.getDefault().o(this);
        }
        setBackgroundColor(0);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (KidozSDK.isInitialised()) {
            validateLayoutAndAssets();
        }
        this.mKidozPlayerEventHelper = new KidozPlayerEventHelper(new KidozPlayerEventHelper.IPlayerListener() { // from class: com.kidoz.sdk.api.PanelView.1
            @Override // com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper.IPlayerListener
            public void onClose(boolean z) {
                if (PanelView.this.mKidozPlayerListener != null) {
                    PanelView.this.mKidozPlayerListener.onPlayerClose();
                }
                if (PanelView.this.mAbstractPanelView == null || !(PanelView.this.mAbstractPanelView instanceof FamilyPanelView)) {
                    return;
                }
                ((FamilyPanelView) PanelView.this.mAbstractPanelView).resumeAction(z);
            }

            @Override // com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper.IPlayerListener
            public void onOpen(boolean z) {
                if (PanelView.this.mKidozPlayerListener != null) {
                    PanelView.this.mKidozPlayerListener.onPlayerOpen();
                }
                if (PanelView.this.mAbstractPanelView == null || !(PanelView.this.mAbstractPanelView instanceof FamilyPanelView)) {
                    return;
                }
                ((FamilyPanelView) PanelView.this.mAbstractPanelView).pauseAction(z);
            }
        }, WidgetType.WIDGET_TYPE_PANEL);
    }

    private void setAnotherInterface() {
        try {
            this.mAbstractPanelView.mOneItemFamilyView.setAnotherInterface(new AnotherInterface() { // from class: com.kidoz.sdk.api.PanelView.3
                @Override // com.kidoz.sdk.api.interfaces.AnotherInterface
                public void toggleWidgetState(boolean z) {
                    PanelView.this.mAbstractPanelView.mAboutKidozButton.setClickable(z);
                    PanelView.this.mAbstractPanelView.mParentalLockButton.setClickable(z);
                    ((FamilyPanelView) PanelView.this.mAbstractPanelView).mNextButton.setClickable(z);
                    PanelView.this.mAbstractPanelView.mOneItemFamilyView.mViewPager.mIsBlocked = !z;
                    PanelView.this.mAbstractPanelView.mPanelHandle.setEnabled(z);
                }
            });
        } catch (Exception unused) {
        }
    }

    private void validateLayoutAndAssets() {
        if (EventBus.getDefault().i(this)) {
            EventBus.getDefault().q(this);
        }
        if (this.raceConditionLock.tryLock()) {
            try {
                AssetUtil.parseStyleAsync(getContext(), new AssetUtil.ParserAsyncTask.IOnStyleParseListener() { // from class: com.kidoz.sdk.api.PanelView.2
                    @Override // com.kidoz.sdk.api.general.assets_handling.AssetUtil.ParserAsyncTask.IOnStyleParseListener
                    public void onParseFinished(boolean z) {
                        if (z) {
                            PanelView.this.buildPanelView();
                        }
                    }
                });
            } finally {
                this.raceConditionLock.unlock();
            }
        }
    }

    public void collapsePanelView() {
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        if (abstractPanelView != null) {
            abstractPanelView.collapsePanelView();
        }
    }

    public void expandPanelView() {
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        if (abstractPanelView != null) {
            abstractPanelView.expandPanelView();
        }
    }

    public boolean getIsPanelViewExpanded() {
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        return abstractPanelView != null && abstractPanelView.getPanelViewState() == AbstractPanelView.PanelViewState.OPEN;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        KidozPlayerEventHelper kidozPlayerEventHelper = this.mKidozPlayerEventHelper;
        if (kidozPlayerEventHelper != null) {
            kidozPlayerEventHelper.register();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            if (EventBus.getDefault().i(this)) {
                EventBus.getDefault().q(this);
            }
        } catch (Exception unused) {
        }
        KidozPlayerEventHelper kidozPlayerEventHelper = this.mKidozPlayerEventHelper;
        if (kidozPlayerEventHelper != null) {
            kidozPlayerEventHelper.unRegister();
        }
        super.onDetachedFromWindow();
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage.getMessageType() == EventMessage.MessageType.INIT_SDK) {
            validateLayoutAndAssets();
        }
    }

    public void setKidozPlayerListener(KidozPlayerListener kidozPlayerListener) {
        this.mKidozPlayerListener = kidozPlayerListener;
    }

    public void setOnPanelViewEventListener(IOnPanelViewEventListener iOnPanelViewEventListener) {
        this.mIOnPanelViewEventListener = iOnPanelViewEventListener;
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        if (abstractPanelView != null) {
            abstractPanelView.setOnPanelViewEventListener(iOnPanelViewEventListener);
        }
    }

    @Deprecated
    public void setPanelAutoExpand(float f2, float f3) {
    }

    @Deprecated
    public void setPanelAutoExpand(float f2, float f3, float f4) {
    }

    @Deprecated
    public void setPanelColor(int i) {
    }

    public void setPanelConfiguration(PANEL_TYPE panel_type, HANDLE_POSITION handle_position) {
        if (panel_type == PANEL_TYPE.LEFT || panel_type == PANEL_TYPE.RIGHT) {
            throw new RuntimeException("Please use PANEL_TYPE.TOP or PANEL_TYPE.BOTTOM (LEFT & RIGHT are deprecated)");
        }
        this.mPanelType = panel_type;
        this.mHandlePosition = handle_position;
        AbstractPanelView abstractPanelView = this.mAbstractPanelView;
        if (abstractPanelView != null) {
            if (panel_type == PANEL_TYPE.TOP || panel_type == PANEL_TYPE.BOTTOM) {
                abstractPanelView.setPanelConfiguration(panel_type, handle_position);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 8) {
            i = 4;
        }
        super.setVisibility(i);
        if (i != 4) {
            AbstractPanelView abstractPanelView = this.mAbstractPanelView;
            if (abstractPanelView != null) {
                abstractPanelView.setPanelEnabled(true);
                return;
            } else {
                this.mVisibilityRequest = true;
                return;
            }
        }
        AbstractPanelView abstractPanelView2 = this.mAbstractPanelView;
        if (abstractPanelView2 == null) {
            this.mVisibilityRequest = false;
        } else {
            abstractPanelView2.setPanelEnabled(false);
            this.mVisibilityRequest = false;
        }
    }
}
