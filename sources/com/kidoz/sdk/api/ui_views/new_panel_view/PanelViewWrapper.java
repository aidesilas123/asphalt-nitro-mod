package com.kidoz.sdk.api.ui_views.new_panel_view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes4.dex */
public class PanelViewWrapper extends LinearLayout {
    private static final int DEFAULT_PANEL_COLOR = -5592355;
    private static final String DEFAULT_RECOMMENDED_BY_TEXT = "Recommended by KIDOZ";
    private static final int DEFAULT_RECOMMENDED_BY_TEXT_COLOR = -197380;
    private static final int PANEL_HANDLE_RIGHT_ID = 1001;
    private static final float RECCOMENDED_TEXT_SIZE_MULTIPLIER = 0.009f;
    private LinearLayout mFooterLinearLayout;
    private boolean mLayoutOnce;
    private LogoView mLogoView;
    private PanelShape mPanelShape;
    private PanelShapeHandle mPanelShapeHandle;
    private PanelShapeHandleDecoration mPanelShapeHandleDecoration;
    private ParentalLockView mParentalLockView;
    private TextView mRecommendedTV;
    private int mViewHeight;
    private int mViewWidth;

    public PanelViewWrapper(Context context) {
        super(context);
        init(context);
    }

    public PanelViewWrapper(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public PanelViewWrapper(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public PanelViewWrapper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void addLogoView(Context context) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 0.1f;
        LogoView logoView = new LogoView(context);
        this.mLogoView = logoView;
        logoView.setLayoutParams(layoutParams);
        this.mLogoView.setBackgroundColor(SupportMenu.CATEGORY_MASK);
        this.mFooterLinearLayout.addView(this.mLogoView);
    }

    private void addMainPanelShape(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        relativeLayout.setLayoutParams(layoutParams);
        layoutParams.weight = 0.875f;
        addView(relativeLayout);
        this.mPanelShape = new PanelShape(getContext(), DEFAULT_PANEL_COLOR);
        this.mPanelShape.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.addView(this.mPanelShape);
        this.mPanelShapeHandle = new PanelShapeHandle(getContext(), DEFAULT_PANEL_COLOR);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(200, 200);
        this.mPanelShapeHandle.setLayoutParams(layoutParams2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(9);
        this.mPanelShapeHandle.setId(1001);
        relativeLayout.addView(this.mPanelShapeHandle);
        this.mPanelShapeHandleDecoration = new PanelShapeHandleDecoration(getContext(), -5033119);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(360, 360);
        this.mPanelShapeHandleDecoration.setLayoutParams(layoutParams3);
        layoutParams3.addRule(12);
        layoutParams3.addRule(1, 1001);
        relativeLayout.addView(this.mPanelShapeHandleDecoration);
    }

    private void addPanelFooter(Context context) {
        this.mFooterLinearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 0.125f;
        this.mFooterLinearLayout.setLayoutParams(layoutParams);
        this.mFooterLinearLayout.setBackgroundColor(DEFAULT_PANEL_COLOR);
        this.mFooterLinearLayout.setOrientation(0);
        this.mFooterLinearLayout.setWeightSum(1.0f);
        addView(this.mFooterLinearLayout);
        addLogoView(context);
        addRecommendedByView(context);
        addParentalView(context);
    }

    private void addParentalView(Context context) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 0.2f;
        ParentalLockView parentalLockView = new ParentalLockView(context);
        this.mParentalLockView = parentalLockView;
        parentalLockView.setLayoutParams(layoutParams);
        this.mFooterLinearLayout.addView(this.mParentalLockView);
    }

    private void addRecommendedByView(Context context) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 0.7f;
        TextView textView = new TextView(context);
        this.mRecommendedTV = textView;
        textView.setLayoutParams(layoutParams);
        this.mRecommendedTV.setText(DEFAULT_RECOMMENDED_BY_TEXT);
        this.mRecommendedTV.setTextColor(DEFAULT_RECOMMENDED_BY_TEXT_COLOR);
        this.mRecommendedTV.setGravity(16);
        this.mRecommendedTV.setTextSize(Math.min(this.mViewHeight, this.mViewWidth) * RECCOMENDED_TEXT_SIZE_MULTIPLIER);
        this.mFooterLinearLayout.addView(this.mRecommendedTV);
    }

    private void allowPanelTransparency() {
        setLayerType(2, null);
        setBackgroundColor(0);
    }

    private void init(Context context) {
        this.mLayoutOnce = false;
        setMainLayoutDefs();
        allowPanelTransparency();
    }

    private void layout(Context context) {
        addMainPanelShape(context);
        addPanelFooter(context);
    }

    private void loadContent() {
    }

    private void setMainLayoutDefs() {
        setWeightSum(1.0f);
        setOrientation(1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mViewWidth = getWidth();
        int height = getHeight();
        this.mViewHeight = height;
        if (this.mLayoutOnce || this.mViewWidth <= 0 || height <= 0) {
            return;
        }
        this.mLayoutOnce = true;
        layout(getContext());
    }

    protected void setPanelColor(int i) {
        this.mPanelShape.setPanelColor(i);
        this.mFooterLinearLayout.setBackgroundColor(i);
    }

    public void show(Activity activity) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, TypedValues.Custom.TYPE_INT);
        layoutParams.gravity = 80;
        activity.addContentView(this, layoutParams);
    }
}
