package com.fyber.inneractive.sdk.flow;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.FyberReportAdActivity;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.global.features.a;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.ui.FyberAdIdentifier;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class e implements FyberAdIdentifier.ClickListener, f {
    public final InneractiveAdRequest a;
    public final com.fyber.inneractive.sdk.response.e b;
    public final FyberAdIdentifier c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f2003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.config.global.s f2004e;

    public e(InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, com.fyber.inneractive.sdk.config.global.s sVar) {
        this.a = inneractiveAdRequest;
        this.b = eVar;
        this.f2004e = sVar;
        FyberAdIdentifier fyberAdIdentifier = new FyberAdIdentifier();
        this.c = fyberAdIdentifier;
        fyberAdIdentifier.a(this);
    }

    @Override // com.fyber.inneractive.sdk.ui.FyberAdIdentifier.ClickListener
    public void a() {
        FyberReportAdActivity.start(this.f2003d, this);
    }

    public void a(ViewGroup viewGroup, FyberAdIdentifier.Corner corner) {
        a.EnumC0152a enumC0152a;
        FyberAdIdentifier fyberAdIdentifier = this.c;
        fyberAdIdentifier.c = corner;
        com.fyber.inneractive.sdk.config.global.s sVar = this.f2004e;
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.fyber_ad_identifier_layout, viewGroup, false);
        fyberAdIdentifier.a = (ImageView) viewGroup2.findViewById(R.id.fyber_identifier_image);
        fyberAdIdentifier.b = viewGroup2.findViewById(R.id.fyber_identifier_text);
        if (sVar != null) {
            com.fyber.inneractive.sdk.config.global.features.a aVar = (com.fyber.inneractive.sdk.config.global.features.a) sVar.a(com.fyber.inneractive.sdk.config.global.features.a.class);
            View view = fyberAdIdentifier.b;
            Integer numB = aVar.b("ad_identifier_text_size_w");
            int iIntValue = numB != null ? numB.intValue() : 55;
            Integer numB2 = aVar.b("ad_identifier_text_size_h");
            com.fyber.inneractive.sdk.util.l.a(view, iIntValue, numB2 != null ? numB2.intValue() : 18);
            ImageView imageView = fyberAdIdentifier.a;
            Integer numB3 = aVar.b("ad_identifier_image_size_w");
            int iIntValue2 = numB3 != null ? numB3.intValue() : 18;
            Integer numB4 = aVar.b("ad_identifier_image_size_h");
            com.fyber.inneractive.sdk.util.l.a(imageView, iIntValue2, numB4 != null ? numB4.intValue() : 18);
            View view2 = fyberAdIdentifier.b;
            Integer numB5 = aVar.b("ad_identifier_text_size");
            int iIntValue3 = numB5 != null ? numB5.intValue() : 8;
            if (view2 instanceof TextView) {
                ((TextView) view2).setTextSize(iIntValue3);
            }
            ImageView imageView2 = fyberAdIdentifier.a;
            String strA = aVar.a("ad_identifier_tint_color", "#75DCDCDC");
            try {
                if ((imageView2 instanceof ImageView) && !TextUtils.isEmpty(strA)) {
                    imageView2.setColorFilter(Color.parseColor(strA));
                }
            } catch (Exception unused) {
                IAlog.a("could not parse color %s", strA);
            }
            String strA2 = aVar.a("identifier_click_action", com.fyber.inneractive.sdk.config.global.features.a.f1958e.mKey);
            a.EnumC0152a[] enumC0152aArrValues = a.EnumC0152a.values();
            int length = enumC0152aArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    enumC0152a = a.EnumC0152a.NONE;
                    break;
                }
                enumC0152a = enumC0152aArrValues[i];
                if (strA2.equalsIgnoreCase(enumC0152a.mKey)) {
                    break;
                } else {
                    i++;
                }
            }
            if (enumC0152a.equals(a.EnumC0152a.OPEN)) {
                fyberAdIdentifier.b.setOnClickListener(fyberAdIdentifier);
            } else {
                fyberAdIdentifier.b.setOnClickListener(null);
            }
            ((TextView) fyberAdIdentifier.b).setText(aVar.a("ad_identifier_text", "Ads by DT"));
            String strA3 = aVar.a("ad_identifier_icon_url", (String) null);
            if (!TextUtils.isEmpty(strA3)) {
                com.fyber.inneractive.sdk.network.h0 h0Var = new com.fyber.inneractive.sdk.network.h0(new com.fyber.inneractive.sdk.ui.a(fyberAdIdentifier), viewGroup.getContext(), new com.fyber.inneractive.sdk.cache.b(strA3));
                IAConfigManager.M.s.a.offer(h0Var);
                h0Var.a(q0.QUEUED);
            }
        }
        FyberAdIdentifier.Corner corner2 = fyberAdIdentifier.c;
        if (corner2 == FyberAdIdentifier.Corner.TOP_LEFT || corner2 == FyberAdIdentifier.Corner.BOTTOM_LEFT) {
            viewGroup2.removeView(fyberAdIdentifier.b);
            viewGroup2.addView(fyberAdIdentifier.b);
        }
        viewGroup2.addOnLayoutChangeListener(new com.fyber.inneractive.sdk.ui.b(fyberAdIdentifier));
        fyberAdIdentifier.a.setOnClickListener(fyberAdIdentifier);
        fyberAdIdentifier.a();
        viewGroup.addView(viewGroup2);
        ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            int i2 = FyberAdIdentifier.a.a[fyberAdIdentifier.c.ordinal()];
            layoutParams2.gravity = i2 != 1 ? i2 != 2 ? i2 != 3 ? 85 : 83 : 53 : 51;
        }
        this.f2003d = viewGroup.getContext();
    }
}
