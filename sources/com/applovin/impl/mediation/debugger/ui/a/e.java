package com.applovin.impl.mediation.debugger.ui.a;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class e extends Dialog {
    private Activity ahM;
    private RelativeLayout ahP;
    private ViewGroup aqG;
    private AppLovinSdkUtils.Size aqH;

    public e(ViewGroup viewGroup, AppLovinSdkUtils.Size size, Activity activity) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        this.aqG = viewGroup;
        this.aqH = size;
        this.ahM = activity;
        requestWindowFeature(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(View view) {
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.ahP.removeView(this.aqG);
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this.ahM, this.aqH.getWidth()), AppLovinSdkUtils.dpToPx(this.ahM, this.aqH.getHeight()));
        layoutParams.addRule(13);
        this.aqG.setLayoutParams(layoutParams);
        int iDpToPx = AppLovinSdkUtils.dpToPx(this.ahM, 60);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        ImageButton imageButton = new ImageButton(this.ahM);
        imageButton.setLayoutParams(layoutParams2);
        imageButton.setImageDrawable(this.ahM.getResources().getDrawable(com.applovin.sdk.R.drawable.applovin_ic_x_mark));
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setColorFilter(-1);
        imageButton.setBackground(null);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.a.o(view);
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(this.ahM);
        this.ahP = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.ahP.setBackgroundColor(Integer.MIN_VALUE);
        this.ahP.addView(imageButton);
        this.ahP.addView(this.aqG);
        this.ahP.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.a.p(view);
            }
        });
        setContentView(this.ahP);
    }
}
