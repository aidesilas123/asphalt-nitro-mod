package com.applovin.impl.mediation.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.applovin.impl.adview.s;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class a extends FrameLayout implements View.OnClickListener {
    private InterfaceC0059a auo;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.a.a$a, reason: collision with other inner class name */
    interface InterfaceC0059a {
        void a(a aVar);
    }

    public a(c cVar, Context context) {
        super(context);
        setOnClickListener(this);
        s sVar = new s(context);
        int iDpToPx = AppLovinSdkUtils.dpToPx(context, cVar.xp());
        sVar.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx, iDpToPx, 17));
        sVar.fZ(iDpToPx);
        addView(sVar);
        int iDpToPx2 = AppLovinSdkUtils.dpToPx(context, cVar.xp() + (cVar.xq() * 2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPx2, iDpToPx2, 8388661);
        int iDpToPx3 = AppLovinSdkUtils.dpToPx(context, cVar.xn());
        int iDpToPx4 = AppLovinSdkUtils.dpToPx(context, cVar.xo());
        layoutParams.setMargins(iDpToPx4, iDpToPx3, iDpToPx4, 0);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.auo.a(this);
    }

    public void setListener(InterfaceC0059a interfaceC0059a) {
        this.auo = interfaceC0059a;
    }
}
