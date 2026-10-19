package com.mbridge.msdk.foundation.c.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.FeedbackRadioGroup;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: compiled from: FeedBackBtnBean.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static String B = null;
    private static int u = -1;
    private String a;
    private CampaignEx b;
    private FeedBackButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7017e;
    private JSONArray l;
    private String q;
    private String r;
    private MBFeedBackDialog w;
    private List<C0399a> x;
    private Dialog z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7018f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7019g = -1;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private float k = -1.0f;
    private int m = -1;
    private int n = -1;
    private int o = -1;
    private int p = -1;
    private float s = 1.0f;
    private int t = af.b(b.d().g(), 20.0f);
    private int v = u;
    private String y = "";
    private com.mbridge.msdk.widget.dialog.a A = new com.mbridge.msdk.widget.dialog.a() { // from class: com.mbridge.msdk.foundation.c.a.a.1
        @Override // com.mbridge.msdk.widget.dialog.a
        public final void a() {
            a.a(a.this);
        }

        @Override // com.mbridge.msdk.widget.dialog.a
        public final void b() {
            a.b(a.this);
        }

        @Override // com.mbridge.msdk.widget.dialog.a
        public final void c() {
            a.c(a.this);
        }
    };

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.c.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FeedBackBtnBean.java */
    public static class C0399a implements com.mbridge.msdk.widget.dialog.a {
        private com.mbridge.msdk.foundation.c.a a;
        private String b;

        public C0399a(String str, com.mbridge.msdk.foundation.c.a aVar) {
            this.a = aVar;
            this.b = str;
        }

        @Override // com.mbridge.msdk.widget.dialog.a
        public final void a() {
            com.mbridge.msdk.foundation.c.a aVar = this.a;
            if (aVar != null) {
                aVar.b();
            }
        }

        public final void a(int i) {
            com.mbridge.msdk.foundation.c.b.c = true;
            com.mbridge.msdk.foundation.c.a aVar = this.a;
            if (aVar == null || i != 2) {
                return;
            }
            aVar.a();
        }

        @Override // com.mbridge.msdk.widget.dialog.a
        public final void b() {
            com.mbridge.msdk.foundation.c.b.c = false;
            com.mbridge.msdk.foundation.c.a aVar = this.a;
            if (aVar != null) {
                aVar.a(a.B);
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.a
        public final void c() {
            com.mbridge.msdk.foundation.c.b.c = false;
            com.mbridge.msdk.foundation.c.a aVar = this.a;
            if (aVar != null) {
                aVar.b();
            }
        }
    }

    public a(String str) {
        this.x = new ArrayList();
        this.a = str;
        if (this.x == null) {
            this.x = new ArrayList();
        }
        i();
        l();
        j();
    }

    private FeedbackRadioGroup a(e.b bVar) {
        JSONArray jSONArrayF = bVar.f();
        Context contextG = b.d().g();
        if (jSONArrayF == null || jSONArrayF.length() <= 0 || contextG == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(contextG);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    private void a(Context context) {
        if (context != null) {
            try {
                com.mbridge.msdk.click.b.b(context, af.c(this.b));
            } catch (Exception unused) {
                com.mbridge.msdk.click.b.a(context, af.c(this.b));
            }
        }
    }

    private void a(RadioButton radioButton) {
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.mbridge.msdk.foundation.c.a.a.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        String unused = a.B = (String) compoundButton.getText();
                    }
                    if (a.this.w != null) {
                        a.this.w.setCancelButtonClickable(!TextUtils.isEmpty(a.B));
                    }
                }
            });
        }
    }

    static /* synthetic */ void a(a aVar) {
        com.mbridge.msdk.foundation.c.b.a().a(aVar.a, 0, 4, B, aVar.f7018f);
        Context contextC = b.d().c();
        if (contextC == null) {
            contextC = b.d().g();
        }
        List<C0399a> list = aVar.x;
        if (list != null) {
            for (C0399a c0399a : list) {
                if (c0399a != null) {
                    c0399a.c();
                }
            }
        }
        aVar.a(contextC);
        B = "";
    }

    private void a(FeedbackRadioGroup feedbackRadioGroup, e.b bVar) {
        JSONArray jSONArrayF = bVar.f();
        Context contextG = b.d().g();
        if (jSONArrayF == null || jSONArrayF.length() <= 0 || contextG == null) {
            return;
        }
        t.a(contextG, "mbridge_cm_feedback_choice_btn_bg", "drawable");
        Resources resourcesA = t.a(contextG);
        int iA = t.a(contextG, "mbridge_cm_feedback_rb_text_color_color_list", "color");
        ColorStateList colorStateList = null;
        if (resourcesA != null) {
            try {
                colorStateList = resourcesA.getColorStateList(iA);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        int iB = af.b(contextG, 1.0f);
        int iB2 = af.b(contextG, 1.0f);
        int iB3 = af.b(contextG, 1.0f);
        for (int i = 0; i < jSONArrayF.length(); i++) {
            String strOptString = jSONArrayF.optString(i);
            RadioButton radioButton = new RadioButton(contextG);
            if (Build.VERSION.SDK_INT >= 21) {
                radioButton.setButtonTintList(colorStateList);
            }
            radioButton.setText(strOptString);
            if (colorStateList != null) {
                radioButton.setTextColor(colorStateList);
            }
            radioButton.setCompoundDrawablePadding(iB);
            radioButton.setPadding(iB, iB2, iB, iB2);
            radioButton.setEllipsize(TextUtils.TruncateAt.END);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
            int i2 = iB3 / 4;
            layoutParams.setMargins(iB3, i2, iB3, i2);
            a(radioButton);
            feedbackRadioGroup.addView(radioButton, layoutParams);
        }
    }

    static /* synthetic */ void b(a aVar) {
        com.mbridge.msdk.foundation.c.b.a().a(aVar.a, 1, 4, B, aVar.f7018f);
        List<C0399a> list = aVar.x;
        if (list != null) {
            for (C0399a c0399a : list) {
                if (c0399a != null) {
                    c0399a.b();
                }
            }
        }
        if (!TextUtils.isEmpty(aVar.y)) {
            try {
                Activity activityA = com.mbridge.msdk.foundation.c.b.a().a(b.d().g());
                if (activityA != null) {
                    View viewInflate = LayoutInflater.from(activityA).inflate(t.a(activityA, "mbridge_cm_feedback_notice_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                    Dialog dialog = new Dialog(activityA, 3);
                    aVar.z = dialog;
                    dialog.requestWindowFeature(1);
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    Window window = aVar.z.getWindow();
                    layoutParams.copyFrom(window.getAttributes());
                    layoutParams.width = -2;
                    layoutParams.height = -2;
                    aVar.z.setContentView(viewInflate);
                    aVar.z.show();
                    window.setAttributes(layoutParams);
                    viewInflate.postDelayed(new Runnable() { // from class: com.mbridge.msdk.foundation.c.a.a.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                if (a.this.z == null || !a.this.z.isShowing()) {
                                    return;
                                }
                                a.this.z.dismiss();
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        B = "";
    }

    static /* synthetic */ void c(a aVar) {
        com.mbridge.msdk.foundation.c.b.a().a(aVar.a, 0, 4, B, aVar.f7018f);
        List<C0399a> list = aVar.x;
        if (list != null) {
            for (C0399a c0399a : list) {
                if (c0399a != null) {
                    c0399a.c();
                }
            }
        }
        B = "";
    }

    private void i() {
        if (this.A == null) {
            this.A = new com.mbridge.msdk.widget.dialog.a() { // from class: com.mbridge.msdk.foundation.c.a.a.2
                @Override // com.mbridge.msdk.widget.dialog.a
                public final void a() {
                    a.a(a.this);
                }

                @Override // com.mbridge.msdk.widget.dialog.a
                public final void b() {
                    a.b(a.this);
                }

                @Override // com.mbridge.msdk.widget.dialog.a
                public final void c() {
                    a.c(a.this);
                }
            };
        }
    }

    private void j() {
        try {
            if (com.mbridge.msdk.foundation.c.b.a().a(b.d().g()) != null) {
                e eVarB = f.a().b(b.d().h());
                if (eVarB == null) {
                    eVarB = f.a().b();
                }
                e.b bVarAu = eVarB.au();
                if (bVarAu == null) {
                    aa.b("", "feedback fbk is null");
                    return;
                }
                i();
                this.w = new MBFeedBackDialog(com.mbridge.msdk.foundation.c.b.a().a(b.d().g()), this.A);
                FeedbackRadioGroup feedbackRadioGroupA = a(bVarAu);
                this.w.setCancelText(bVarAu.c());
                this.w.setConfirmText(bVarAu.b());
                this.w.setPrivacyText(bVarAu.e());
                this.y = bVarAu.d();
                this.w.setTitle(bVarAu.a());
                this.w.setContent(feedbackRadioGroupA);
                this.w.setCancelButtonClickable(!TextUtils.isEmpty(B));
                a(feedbackRadioGroupA, bVarAu);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void k() {
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            int i = this.f7019g;
            if (i > -1) {
                feedBackButton.setX(i);
            }
            int i2 = this.h;
            if (i2 > -1) {
                this.c.setY(i2);
            }
            float f2 = this.s;
            if (f2 >= 0.0f) {
                this.c.setAlpha(f2);
                this.c.setEnabled(this.s != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
            int i3 = this.i;
            if (i3 > 0) {
                this.c.setWidth(i3);
                if (layoutParams != null) {
                    layoutParams.width = this.i;
                }
            }
            int i4 = this.j;
            if (i4 > 0) {
                this.c.setHeight(i4);
                if (layoutParams != null) {
                    layoutParams.height = this.j;
                }
            }
            if (layoutParams != null) {
                this.c.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.q)) {
                    this.c.setTextColor(Color.parseColor(this.q));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            float f3 = this.k;
            if (f3 > 0.0f) {
                this.c.setTextSize(f3);
            }
            JSONArray jSONArray = this.l;
            if (jSONArray != null && jSONArray.length() == 4) {
                Context contextG = b.d().g();
                this.c.setPadding(af.b(contextG, (float) this.l.optDouble(0)), af.b(contextG, (float) this.l.optDouble(1)), af.b(contextG, (float) this.l.optDouble(2)), af.b(contextG, (float) this.l.optDouble(3)));
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i5 = this.t;
            if (i5 > 0) {
                gradientDrawable.setCornerRadius(i5);
            }
            if (TextUtils.isEmpty(this.r)) {
                gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            } else {
                gradientDrawable.setColor(Color.parseColor(this.r));
            }
            this.c.setBackground(gradientDrawable);
        }
    }

    private void l() {
        Context contextG = b.d().g();
        if (contextG != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(contextG);
                this.c = feedBackButton;
                int i = 8;
                if (this.v != 8) {
                    i = 0;
                }
                feedBackButton.setVisibility(i);
                this.c.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.foundation.c.a.a.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        a.this.a();
                    }
                });
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void a() {
        try {
            com.mbridge.msdk.foundation.c.b.a().a(this.a, 0, 1, B, this.f7018f);
            Activity activityA = com.mbridge.msdk.foundation.c.b.a().a(b.d().g());
            MBFeedBackDialog mBFeedBackDialog = this.w;
            if (mBFeedBackDialog == null || mBFeedBackDialog.getContext() != activityA) {
                j();
            }
            Context contextG = b.d().g();
            FeedBackButton feedBackButton = this.c;
            if (feedBackButton != null) {
                contextG = feedBackButton.getContext();
            }
            boolean zA = com.mbridge.msdk.foundation.c.b.a().a(this.a, contextG, this.w);
            int i = zA ? 2 : 3;
            if (i == 2) {
                com.mbridge.msdk.foundation.c.b.a().a(this.a, 0, 2, B, this.f7018f);
            } else {
                com.mbridge.msdk.foundation.c.b.a().a(this.a, 0, 3, B, this.f7018f);
            }
            List<C0399a> list = this.x;
            if (list != null) {
                for (C0399a c0399a : list) {
                    if (c0399a != null) {
                        c0399a.a(i);
                    }
                }
            }
            if (zA) {
                return;
            }
            a(contextG);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(int i) {
        this.v = i;
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i);
        }
    }

    public final void a(int i, int i2, int i3, int i4, int i5, float f2, String str, String str2, float f3, JSONArray jSONArray) {
        if (i > -1) {
            this.f7019g = i;
        }
        if (i2 > -1) {
            this.h = i2;
        }
        if (i3 > -1) {
            this.i = i3;
        }
        if (i4 > -1) {
            this.j = i4;
        }
        if (f3 > -1.0f) {
            this.k = f3;
        }
        if (jSONArray != null) {
            this.l = jSONArray;
        }
        this.q = str;
        this.r = str2;
        this.s = f2;
        this.t = i5;
        k();
    }

    public final void a(C0399a c0399a) {
        if (this.x == null) {
            this.x = new ArrayList();
        }
        this.x.add(c0399a);
    }

    public final void a(CampaignEx campaignEx) {
        this.b = campaignEx;
    }

    public final void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.c;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.s);
            feedBackButton.setEnabled(this.s != 0.0f);
            feedBackButton.setVisibility(this.v != 8 ? 0 : 8);
            this.c = feedBackButton;
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && !campaignEx.isDynamicView()) {
                k();
            }
            feedBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.foundation.c.a.a.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.a();
                }
            });
        }
    }

    public final void a(String str) {
        this.f7018f = str;
    }

    public final void b() {
        MBFeedBackDialog mBFeedBackDialog = this.w;
        if (mBFeedBackDialog == null || !mBFeedBackDialog.isShowing()) {
            return;
        }
        this.w.cancel();
    }

    public final void b(int i) {
        this.f7016d = i;
    }

    public final FeedBackButton c() {
        if (this.c == null) {
            l();
        }
        return this.c;
    }

    public final void c(int i) {
        this.f7017e = i;
    }

    public final void d() {
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.c.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.c.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.c);
            }
        }
        MBFeedBackDialog mBFeedBackDialog = this.w;
        if (mBFeedBackDialog != null) {
            mBFeedBackDialog.cancel();
            this.w.setListener(null);
        }
        this.w = null;
        this.x = null;
        this.c = null;
        this.A = null;
    }

    public final CampaignEx e() {
        return this.b;
    }

    public final int f() {
        return this.f7016d;
    }

    public final int g() {
        return this.f7017e;
    }
}
