package com.bytedance.sdk.openadsdk.component.reward.view;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.b.g;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.c;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import com.facebook.internal.security.CertificateUtil;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RFDownloadBarLayout extends PAGRelativeLayout {
    private TTRatingBar2 a;
    private TextView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TTRoundRectImageView f1419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f1420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.reward.a.a f1422g;
    private TextView h;

    public RFDownloadBarLayout(@NonNull Context context) {
        super(context);
        setVisibility(8);
    }

    private static TTRatingBar2 a(Context context, int i) {
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context);
        tTRatingBar2.setId(i.f1872e);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, ad.b(context, 14.0f));
        layoutParams.gravity = i;
        tTRatingBar2.setLayoutParams(layoutParams);
        return tTRatingBar2;
    }

    private static TTRoundRectImageView a(Context context) {
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        tTRoundRectImageView.setBackgroundColor(0);
        tTRoundRectImageView.setId(i.b);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ad.b(context, 69.0f), ad.b(context, 69.0f));
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.addRule(20);
        }
        layoutParams.addRule(9);
        layoutParams.addRule(15);
        tTRoundRectImageView.setLayoutParams(layoutParams);
        return tTRoundRectImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final String str, final String str2) {
        com.bytedance.sdk.openadsdk.b.c.a(new h("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("description", i + CertificateUtil.DELIMITER + str);
                    jSONObject.put("url", str2);
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.b.c.b(RFDownloadBarLayout.this.f1422g.a, RFDownloadBarLayout.this.f1422g.f1317g, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    private static TextView b(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setGravity(16);
        pAGTextView.setSingleLine(true);
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 17.0f);
        pAGTextView.setId(i.c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, ad.b(context, 27.0f));
        layoutParams.leftMargin = ad.b(context, 14.0f);
        pAGTextView.setLayoutParams(layoutParams);
        return pAGTextView;
    }

    private static TextView c(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setSingleLine(true);
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 13.0f);
        pAGTextView.setId(i.f1871d);
        pAGTextView.setMaxWidth(ad.b(context, 72.0f));
        pAGTextView.setText(s.b(context, "tt_comment_num"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = ad.b(context, 10.0f);
        pAGTextView.setLayoutParams(layoutParams);
        return pAGTextView;
    }

    private void c() {
        TextView textView;
        this.f1421f = true;
        Context context = getContext();
        int iB = this.f1422g.a.B();
        if (iB == 1) {
            e();
        } else if (iB == 3) {
            g();
        } else if (iB != 5) {
            h();
        } else {
            f();
        }
        d();
        if (this.c == null) {
            this.c = (TextView) this.f1422g.V.findViewById(520093705);
        }
        final q qVar = this.f1422g.a;
        TextView textView2 = this.c;
        if (textView2 != null) {
            textView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    int width = ((ViewGroup) RFDownloadBarLayout.this.c.getParent()).getWidth();
                    if (width > 0) {
                        RFDownloadBarLayout.this.c.setMaxWidth((int) (width * 0.45f));
                    }
                }
            });
            if (!qVar.at()) {
                this.c.setText(qVar.B() == 3 ? getButtonTextForNewStyleBar() : qVar.X());
            } else if (qVar.au() != null && TextUtils.isEmpty(qVar.au().f())) {
                ad.a((View) this.c, 8);
            }
        }
        if (this.f1419d != null && qVar.N() != null && !TextUtils.isEmpty(qVar.N().a())) {
            final String strA = qVar.N().a();
            if (qVar.at()) {
                com.bytedance.sdk.openadsdk.f.d.a(qVar.N()).a(u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(qVar, qVar.N().a(), new o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.2
                    @Override // com.bytedance.sdk.component.d.o
                    public void a(int i, String str, @Nullable Throwable th) {
                        RFDownloadBarLayout.this.a(i, str, strA);
                    }

                    @Override // com.bytedance.sdk.component.d.o
                    public void a(k<Bitmap> kVar) {
                        if (kVar == null || kVar.b() == null) {
                            return;
                        }
                        if (RFDownloadBarLayout.this.f1419d != null) {
                            RFDownloadBarLayout.this.f1419d.setImageBitmap(kVar.b());
                        }
                        com.bytedance.sdk.openadsdk.b.c.b(qVar, RFDownloadBarLayout.this.f1422g.f1317g, "load_vast_icon_success", (JSONObject) null);
                    }
                }));
                if (qVar.au() != null && qVar.au().b() != null) {
                    qVar.au().b().b(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.k.c.a().a(qVar.N(), this.f1419d, qVar);
            }
        }
        if (this.f1420e != null) {
            if (this.f1422g.j != 1 || qVar.aa() == null || TextUtils.isEmpty(qVar.aa().b())) {
                this.f1420e.setText(qVar.V());
            } else {
                this.f1420e.setText(qVar.aa().b());
            }
        }
        TextView textView3 = this.b;
        if (textView3 != null) {
            ad.a(textView3, qVar, this.f1422g.W, "tt_comment_num");
        }
        if (this.f1422g.j == 1) {
            TextView textView4 = this.f1420e;
            if (textView4 != null) {
                textView4.setMaxWidth(ad.b(context, 153.0f));
            }
        } else {
            TextView textView5 = this.f1420e;
            if (textView5 != null) {
                textView5.setMaxWidth(ad.b(context, 404.0f));
            }
        }
        TTRatingBar2 tTRatingBar2 = this.a;
        if (tTRatingBar2 != null) {
            ad.a((TextView) null, tTRatingBar2, qVar);
        }
        if (qVar.at() && (textView = this.h) != null) {
            textView.setText(qVar.W());
        }
        if (this.f1422g.j == 2 && qVar.B() == 1) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams.height = ad.b(this.f1422g.W, 55.0f);
            layoutParams.topMargin = ad.b(this.f1422g.W, 20.0f);
            this.c.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams2.bottomMargin = ad.b(this.f1422g.W, 12.0f);
            setLayoutParams(layoutParams2);
        }
        b();
    }

    private static TextView d(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setGravity(17);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setLines(1);
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 14.0f);
        pAGTextView.setBackgroundResource(s.d(context, "tt_reward_video_download_btn_bg"));
        pAGTextView.setId(520093705);
        pAGTextView.setPadding(ad.b(context, 10.0f), 0, ad.b(context, 10.0f), 0);
        pAGTextView.setText(s.b(context, "tt_video_mobile_go_detail"));
        return pAGTextView;
    }

    private void d() {
    }

    private void e() {
        Context context = getContext();
        TTRoundRectImageView tTRoundRectImageViewA = a(context);
        this.f1419d = tTRoundRectImageViewA;
        addView(tTRoundRectImageViewA);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        int i = i.b;
        layoutParams.addRule(1, i);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.addRule(17, i);
        }
        addView(pAGLinearLayout, layoutParams);
        TextView textViewB = b(context);
        this.f1420e = textViewB;
        textViewB.setMaxWidth(ad.b(context, 176.0f));
        pAGLinearLayout.addView(this.f1420e);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setGravity(16);
        pAGLinearLayout2.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = ad.b(context, 14.0f);
        layoutParams2.topMargin = ad.b(context, 10.0f);
        pAGLinearLayout.addView(pAGLinearLayout2, layoutParams2);
        TTRatingBar2 tTRatingBar2A = a(context, 17);
        this.a = tTRatingBar2A;
        pAGLinearLayout2.addView(tTRatingBar2A);
        TextView textViewC = c(context);
        this.b = textViewC;
        pAGLinearLayout2.addView(textViewC);
    }

    private void f() {
        Context context = getContext();
        TTRoundRectImageView tTRoundRectImageViewA = a(context);
        this.f1419d = tTRoundRectImageViewA;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) tTRoundRectImageViewA.getLayoutParams();
        int iB = ad.b(context, 52.0f);
        layoutParams.height = iB;
        layoutParams.width = iB;
        addView(this.f1419d);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setGravity(17);
        int i = i.f1873f;
        pAGLinearLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ad.b(context, 100.0f), ad.b(context, 45.0f));
        layoutParams2.addRule(11);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams2.addRule(21);
        }
        layoutParams2.addRule(15);
        layoutParams2.rightMargin = ad.b(context, 15.0f);
        addView(pAGLinearLayout, layoutParams2);
        this.c = d(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, ad.b(context, 41.0f));
        layoutParams3.bottomMargin = ad.b(context, 3.0f);
        pAGLinearLayout.addView(this.c, layoutParams3);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setGravity(16);
        pAGLinearLayout2.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams4.addRule(0, i);
        layoutParams4.addRule(1, i.b);
        addView(pAGLinearLayout2, layoutParams4);
        TextView textViewB = b(context);
        this.f1420e = textViewB;
        textViewB.setTextColor(Color.parseColor("#222222"));
        this.f1420e.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f1420e.getLayoutParams();
        layoutParams5.width = -1;
        layoutParams5.height = ad.b(context, 22.0f);
        layoutParams5.leftMargin = ad.b(context, 10.0f);
        pAGLinearLayout2.addView(this.f1420e);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.h = pAGTextView;
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.h.setSingleLine(true);
        this.h.setTextColor(Color.parseColor("#4A4A4A"));
        this.h.setTextSize(2, 14.0f);
        this.h.setId(i.f1874g);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, ad.b(context, 16.0f));
        layoutParams6.leftMargin = ad.b(context, 10.0f);
        layoutParams6.topMargin = ad.b(context, 5.0f);
        pAGLinearLayout2.addView(this.h, layoutParams6);
    }

    private void g() {
        Context context = getContext();
        TTRoundRectImageView tTRoundRectImageViewA = a(context);
        this.f1419d = tTRoundRectImageViewA;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) tTRoundRectImageViewA.getLayoutParams();
        int iB = ad.b(context, 52.0f);
        layoutParams.height = iB;
        layoutParams.width = iB;
        addView(this.f1419d);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        int i = i.f1873f;
        pAGLinearLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ad.b(context, 76.0f), ad.b(context, 45.0f));
        layoutParams2.addRule(11);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams2.addRule(21);
        }
        layoutParams2.addRule(15);
        layoutParams2.rightMargin = ad.b(context, 15.0f);
        int[] iArr = {Color.parseColor("#0070FF")};
        com.bytedance.sdk.openadsdk.core.widget.c.a(pAGLinearLayout, new c.a().a(iArr[0]).b(Color.parseColor("#80000000")).a(iArr).c(ad.b(context, 17.0f)).d(0).e(ad.b(context, 3.0f)));
        addView(pAGLinearLayout, layoutParams2);
        this.c = d(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams3.bottomMargin = ad.b(context, 3.0f);
        pAGLinearLayout.addView(this.c, layoutParams3);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setGravity(16);
        pAGLinearLayout2.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -1);
        if (i2 >= 17) {
            layoutParams4.addRule(16, i);
        }
        layoutParams4.addRule(0, i);
        int i3 = i.b;
        layoutParams4.addRule(1, i3);
        if (i2 >= 17) {
            layoutParams4.addRule(17, i3);
        }
        addView(pAGLinearLayout2, layoutParams4);
        TextView textViewB = b(context);
        this.f1420e = textViewB;
        textViewB.setTextColor(Color.parseColor("#222222"));
        this.f1420e.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f1420e.getLayoutParams();
        layoutParams5.width = -1;
        layoutParams5.height = ad.b(context, 22.0f);
        layoutParams5.leftMargin = ad.b(context, 10.0f);
        pAGLinearLayout2.addView(this.f1420e);
        PAGLinearLayout pAGLinearLayout3 = new PAGLinearLayout(context);
        pAGLinearLayout3.setGravity(16);
        pAGLinearLayout3.setOrientation(0);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.leftMargin = ad.b(context, 14.0f);
        layoutParams6.topMargin = ad.b(context, 5.0f);
        pAGLinearLayout2.addView(pAGLinearLayout3, layoutParams6);
        TTRatingBar2 tTRatingBar2A = a(context, -1);
        this.a = tTRatingBar2A;
        ((LinearLayout.LayoutParams) tTRatingBar2A.getLayoutParams()).height = ad.b(context, 12.0f);
        pAGLinearLayout3.addView(this.a);
        TextView textViewC = c(context);
        this.b = textViewC;
        textViewC.setTextColor(Color.parseColor("#4A4A4A"));
        this.b.setTextSize(2, 14.0f);
        this.b.setMaxWidth(ad.b(context, 83.0f));
        ((LinearLayout.LayoutParams) this.b.getLayoutParams()).height = ad.b(context, 20.0f);
        pAGLinearLayout3.addView(this.b);
    }

    private String getCnOrEnBtnText() {
        return this.f1422g.a.M() != 4 ? "View" : "Install";
    }

    private void h() {
        Context context = getContext();
        TTRoundRectImageView tTRoundRectImageViewA = a(context);
        this.f1419d = tTRoundRectImageViewA;
        addView(tTRoundRectImageViewA);
        TextView textViewD = d(context);
        this.c = textViewD;
        textViewD.setBackgroundResource(s.d(context, "tt_download_corner_bg"));
        this.c.setMaxWidth(ad.b(context, 105.0f));
        this.c.setText(s.b(context, "tt_video_download_apk"));
        this.c.setTextSize(2, 17.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, ad.b(context, 36.0f));
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            layoutParams.addRule(21);
        }
        layoutParams.addRule(11);
        layoutParams.addRule(15);
        layoutParams.rightMargin = ad.b(context, 15.0f);
        addView(this.c, layoutParams);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setGravity(16);
        pAGLinearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams2.addRule(0, this.c.getId());
        if (i >= 17) {
            layoutParams2.addRule(16, this.c.getId());
        }
        layoutParams2.addRule(1, this.f1419d.getId());
        if (i >= 17) {
            layoutParams2.addRule(17, this.f1419d.getId());
        }
        addView(pAGLinearLayout, layoutParams2);
        TextView textViewB = b(context);
        this.f1420e = textViewB;
        textViewB.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pAGLinearLayout.addView(this.f1420e);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = ad.b(context, 14.0f);
        layoutParams3.topMargin = ad.b(context, 5.0f);
        pAGLinearLayout.addView(pAGLinearLayout2, layoutParams3);
        pAGLinearLayout2.setGravity(16);
        pAGLinearLayout2.setOrientation(0);
        TTRatingBar2 tTRatingBar2A = a(context, 17);
        this.a = tTRatingBar2A;
        pAGLinearLayout2.addView(tTRatingBar2A);
        TextView textViewC = c(context);
        this.b = textViewC;
        textViewC.setTextColor(Color.parseColor("#4A4A4A"));
        this.b.setTextSize(2, 11.0f);
        pAGLinearLayout2.addView(this.b);
    }

    public void a() {
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.f1422g = aVar;
        if (aVar.a.B() == 1) {
            c();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void b() {
        com.bytedance.sdk.openadsdk.core.b.e eVarE = this.f1422g.L.e();
        final View.OnClickListener onClickListenerD = this.f1422g.L.d();
        final q qVar = this.f1422g.a;
        if (qVar.C() == null) {
            return;
        }
        if (qVar.B() != 5 && this.c != null) {
            if (qVar.C().f1563e) {
                this.c.setOnClickListener(eVarE);
                this.c.setOnTouchListener(eVarE);
            } else {
                this.c.setOnClickListener(onClickListenerD);
            }
        }
        if (qVar.B() == 1) {
            if (!qVar.C().a) {
                ad.a(this, onClickListenerD, "TTBaseVideoActivity#mRlDownloadBar");
                this.f1420e.setOnClickListener(onClickListenerD);
                this.b.setOnClickListener(onClickListenerD);
                this.a.setOnClickListener(onClickListenerD);
                this.f1419d.setOnClickListener(onClickListenerD);
                return;
            }
            ad.a((View) this, (View.OnClickListener) eVarE, "TTBaseVideoActivity#mRlDownloadBar");
            ad.a((View) this, (View.OnTouchListener) eVarE, "TTBaseVideoActivity#mRlDownloadBar");
            this.f1420e.setOnClickListener(eVarE);
            this.f1420e.setOnTouchListener(eVarE);
            this.b.setOnClickListener(eVarE);
            this.b.setOnTouchListener(eVarE);
            this.a.setOnClickListener(eVarE);
            this.a.setOnTouchListener(eVarE);
            this.f1419d.setOnClickListener(eVarE);
            this.f1419d.setOnTouchListener(eVarE);
            return;
        }
        if (qVar.B() != 5) {
            if (!qVar.C().c) {
                ad.a(this, onClickListenerD, "TTBaseVideoActivity#mRlDownloadBar");
                return;
            } else {
                ad.a((View) this, (View.OnClickListener) eVarE, "TTBaseVideoActivity#mRlDownloadBar");
                ad.a((View) this, (View.OnTouchListener) eVarE, "TTBaseVideoActivity#mRlDownloadBar");
                return;
            }
        }
        String str = "VAST_ICON";
        if (!qVar.C().f1563e) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View.OnClickListener onClickListener2 = onClickListenerD;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                    }
                    if (view == null || !"VAST_ICON".equals(view.getTag(570425345))) {
                        if (qVar.au() != null) {
                            qVar.au().a().g(RFDownloadBarLayout.this.f1422g.G.g());
                        }
                    } else {
                        if (qVar.au() == null || qVar.au().b() == null) {
                            return;
                        }
                        qVar.au().b().a(RFDownloadBarLayout.this.f1422g.G.g());
                    }
                }
            };
            TextView textView = this.c;
            if (textView != null) {
                textView.setOnClickListener(onClickListener);
            }
            TextView textView2 = this.f1420e;
            if (textView2 != null && !TextUtils.isEmpty(textView2.getText())) {
                this.f1420e.setOnClickListener(onClickListener);
            }
            TextView textView3 = this.h;
            if (textView3 != null && !TextUtils.isEmpty(textView3.getText())) {
                this.h.setOnClickListener(onClickListener);
            }
            TTRoundRectImageView tTRoundRectImageView = this.f1419d;
            if (tTRoundRectImageView != null) {
                tTRoundRectImageView.setTag(570425345, "VAST_ICON");
                this.f1419d.setOnClickListener(onClickListenerD);
                return;
            }
            return;
        }
        g gVar = new g("VAST_ACTION_BUTTON", qVar.au(), eVarE) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.4
            @Override // com.bytedance.sdk.openadsdk.core.b.g
            public void a() {
            }
        };
        g gVar2 = new g(str, qVar.au(), eVarE) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.5
            @Override // com.bytedance.sdk.openadsdk.core.b.g
            public void a() {
            }
        };
        TextView textView4 = this.c;
        if (textView4 != null) {
            textView4.setOnClickListener(gVar);
            this.c.setOnTouchListener(gVar);
        }
        TTRoundRectImageView tTRoundRectImageView2 = this.f1419d;
        if (tTRoundRectImageView2 != null) {
            tTRoundRectImageView2.setOnClickListener(gVar2);
            this.f1419d.setOnTouchListener(gVar2);
        }
        TextView textView5 = this.f1420e;
        if (textView5 != null && !TextUtils.isEmpty(textView5.getText())) {
            this.f1420e.setOnClickListener(gVar);
            this.f1420e.setOnTouchListener(gVar);
        }
        TextView textView6 = this.h;
        if (textView6 == null || TextUtils.isEmpty(textView6.getText())) {
            return;
        }
        this.h.setOnClickListener(gVar);
        this.h.setOnTouchListener(gVar);
    }

    protected String getButtonTextForNewStyleBar() {
        boolean zEquals;
        String strX;
        String strG = ac.g(this.f1422g.W);
        if (strG == null) {
            strG = "";
        }
        try {
            zEquals = strG.equals(Locale.ENGLISH.getLanguage());
        } catch (Throwable unused) {
            zEquals = false;
        }
        if (TextUtils.isEmpty(this.f1422g.a.X())) {
            strX = this.f1422g.a.M() != 4 ? "View" : "Install";
        } else {
            strX = this.f1422g.a.X();
            if (strX == null || !ac.f(strX) || strX.length() <= 2) {
                if (strX != null && !ac.f(strX) && strX.length() > 7 && zEquals) {
                    strX = getCnOrEnBtnText();
                }
            } else if (zEquals) {
                strX = getCnOrEnBtnText();
            }
        }
        if (zEquals && !ac.f(strX)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams.bottomMargin = ad.b(this.f1422g.W, 4.0f);
            this.c.setLayoutParams(layoutParams);
        }
        return strX;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0 || this.f1421f) {
            return;
        }
        c();
    }
}
