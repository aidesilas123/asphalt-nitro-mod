package com.applovin.impl.mediation.debugger.ui.testmode;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.mediation.MaxAdFormat;

/* JADX INFO: loaded from: classes.dex */
public class AdControlButton extends RelativeLayout implements View.OnClickListener {
    private final com.applovin.impl.adview.a aqM;
    private final GradientDrawable atK;
    private final Button atL;
    private b atM;
    private a atN;
    private MaxAdFormat format;

    public interface a {
        void onClick(AdControlButton adControlButton);
    }

    public enum b {
        LOAD,
        LOADING,
        SHOW
    }

    public AdControlButton(Context context) {
        this(context, null, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.atK = gradientDrawable;
        Button button = new Button(getContext());
        this.atL = button;
        com.applovin.impl.adview.a aVar = new com.applovin.impl.adview.a(getContext(), 20, R.attr.progressBarStyleSmall);
        this.aqM = aVar;
        b bVar = b.LOAD;
        this.atM = bVar;
        setBackgroundColor(0);
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1, 17));
        button.setOnClickListener(this);
        frameLayout.addView(button, new FrameLayout.LayoutParams(-1, -1, 17));
        gradientDrawable.setCornerRadius(20.0f);
        button.setBackground(gradientDrawable);
        xd();
        aVar.setColor(-1);
        addView(aVar, new FrameLayout.LayoutParams(-1, -1, 17));
        a(bVar);
    }

    private void a(b bVar) {
        if (b.LOADING == bVar) {
            setEnabled(false);
            this.aqM.qN();
        } else {
            setEnabled(true);
            this.aqM.qO();
        }
        this.atL.setText(b(bVar));
        this.atK.setColor(c(bVar));
    }

    private String b(b bVar) {
        return b.LOAD == bVar ? "Load" : b.LOADING == bVar ? "" : "Show";
    }

    private int c(b bVar) {
        if (b.LOAD != bVar && b.LOADING != bVar) {
            return com.applovin.impl.sdk.utils.g.a(com.applovin.sdk.R.color.applovin_sdk_adControlbutton_brightBlueColor, getContext());
        }
        return com.applovin.impl.sdk.utils.g.a(com.applovin.sdk.R.color.applovin_sdk_brand_color, getContext());
    }

    private void xd() {
        this.atL.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, new int[0]}, new int[]{com.applovin.impl.sdk.utils.g.a(com.applovin.sdk.R.color.applovin_sdk_highlightTextColor, getContext()), -1}));
    }

    public b getControlState() {
        return this.atM;
    }

    public MaxAdFormat getFormat() {
        return this.format;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = this.atN;
        if (aVar != null) {
            aVar.onClick(this);
        }
    }

    public void setControlState(b bVar) {
        if (this.atM != bVar) {
            a(bVar);
        }
        this.atM = bVar;
    }

    public void setFormat(MaxAdFormat maxAdFormat) {
        this.format = maxAdFormat;
    }

    public void setOnClickListener(a aVar) {
        this.atN = aVar;
    }
}
