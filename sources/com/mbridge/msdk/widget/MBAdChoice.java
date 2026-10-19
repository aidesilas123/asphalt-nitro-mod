package com.mbridge.msdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.c.c;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.out.Campaign;

/* JADX INFO: loaded from: classes4.dex */
public class MBAdChoice extends MBImageView {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f7626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CampaignEx f7627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.foundation.c.a f7628f;

    public MBAdChoice(Context context) {
        super(context);
        this.a = "";
        this.b = "";
        this.c = "";
        this.f7626d = context;
        a();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = "";
        this.b = "";
        this.c = "";
        this.f7626d = context;
        a();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = "";
        this.b = "";
        this.c = "";
        this.f7626d = context;
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setClickable(true);
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f7628f == null) {
            this.f7628f = new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.widget.MBAdChoice.2
                @Override // com.mbridge.msdk.foundation.c.a
                public final void a() {
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void a(String str) {
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void b() {
                }
            };
        }
        af.a(this.f7627e, this.f7628f, 4, "");
        return true;
    }

    public void setCampaign(Campaign campaign) {
        if (!(campaign instanceof CampaignEx)) {
            this.f7627e = null;
            return;
        }
        CampaignEx campaignEx = (CampaignEx) campaign;
        this.f7627e = campaignEx;
        this.f7627e = campaignEx;
        e eVarB = f.a().b(b.d().h());
        this.f7627e = campaignEx;
        if (campaignEx != null) {
            String privacyUrl = campaignEx.getPrivacyUrl();
            this.c = privacyUrl;
            if (TextUtils.isEmpty(privacyUrl)) {
                CampaignEx.a adchoice = campaignEx.getAdchoice();
                if (adchoice != null) {
                    this.c = adchoice.d();
                }
                if (TextUtils.isEmpty(this.c) && eVarB != null) {
                    this.c = eVarB.al();
                }
                if (TextUtils.isEmpty(this.c)) {
                    this.c = d.a().j;
                }
            }
        } else if (eVarB != null) {
            this.c = eVarB.al();
        }
        this.f7627e = campaignEx;
        if (campaignEx != null) {
            CampaignEx.a adchoice2 = campaignEx.getAdchoice();
            if (adchoice2 != null) {
                this.a = adchoice2.e();
            }
            if (TextUtils.isEmpty(this.a) && eVarB != null) {
                this.a = eVarB.aj();
            }
        } else if (eVarB != null) {
            this.a = eVarB.aj();
        }
        this.f7627e = campaignEx;
        if (campaignEx != null) {
            CampaignEx.a adchoice3 = campaignEx.getAdchoice();
            if (adchoice3 != null) {
                this.b = adchoice3.f();
            }
            if (TextUtils.isEmpty(this.b) && eVarB != null) {
                this.b = eVarB.ak();
            }
        } else if (eVarB != null) {
            this.b = eVarB.ak();
        }
        boolean z = (TextUtils.isEmpty(this.a) || TextUtils.isEmpty(this.c) || TextUtils.isEmpty(this.b)) ? false : true;
        setImageUrl(this.a);
        if (!z || this.f7626d == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.c.b.a(b.d().g()).a(this.a, new c() { // from class: com.mbridge.msdk.widget.MBAdChoice.1
            @Override // com.mbridge.msdk.foundation.same.c.c
            public final void onFailedLoad(String str, String str2) {
            }

            @Override // com.mbridge.msdk.foundation.same.c.c
            public final void onSuccessLoad(Bitmap bitmap, String str) {
                MBAdChoice.this.setImageBitmap(bitmap);
            }
        });
    }

    public void setFeedbackDialogEventListener(com.mbridge.msdk.foundation.c.a aVar) {
        this.f7628f = aVar;
    }
}
