package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: NativeVideoDetailLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends e {
    private TextView G;
    private ImageView H;
    private View I;
    private TextView J;
    private TextView K;
    private TextView L;
    private ImageView M;
    private View N;
    private ImageView O;
    private TextView P;
    private View Q;
    private SeekBar R;
    private TextView S;
    private TextView T;
    private ImageView U;
    private final x V;
    private boolean W;
    private boolean X;
    private int Y;
    private int Z;
    private int aa;
    private int ab;
    private int ac;
    private final Rect ad;
    private ColorStateList ae;
    private float af;
    private final Rect ag;
    private int ah;
    private final int ai;
    private final int aj;
    private final com.bytedance.sdk.openadsdk.core.widget.d ak;
    private final View.OnTouchListener al;
    private float am;
    private ColorStateList an;
    private float ao;
    private final Rect ap;
    private float aq;
    private ColorStateList ar;
    private float as;
    private final Rect at;
    private final Rect au;

    public d(Context context, ViewGroup viewGroup, boolean z, int i, q qVar, com.bykv.vk.openvk.component.video.api.d.c cVar, boolean z2) {
        super(context, viewGroup, z, i, qVar, cVar, z2);
        this.V = new x(this);
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = new Rect();
        this.ag = new Rect();
        this.ah = 0;
        this.al = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.7
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 2) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                } else if (actionMasked == 3) {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                }
                return false;
            }
        };
        this.ap = new Rect();
        this.at = new Rect();
        this.au = new Rect();
        this.x = o.a().getApplicationContext();
        d(z2);
        this.a = viewGroup;
        this.s = z;
        com.bytedance.sdk.openadsdk.core.widget.d dVar = new com.bytedance.sdk.openadsdk.core.widget.d(this);
        this.ak = dVar;
        dVar.a(this.s);
        DisplayMetrics displayMetrics = this.x.getResources().getDisplayMetrics();
        this.ai = displayMetrics.widthPixels;
        this.aj = displayMetrics.heightPixels;
        this.v = i;
        this.C = cVar;
        this.w = qVar;
        d(8);
        a(context, this.a);
        d();
        l();
    }

    private void e(boolean z) {
        if (z) {
            y();
        } else {
            z();
        }
    }

    private void y() {
        DisplayMetrics displayMetrics = this.x.getResources().getDisplayMetrics();
        TextView textView = this.T;
        if (textView != null) {
            this.am = textView.getTextSize();
            this.T.setTextSize(2, 14.0f);
            ColorStateList textColors = this.T.getTextColors();
            this.an = textColors;
            if (textColors != null) {
                this.T.setTextColor(s.h(this.x, "tt_ssxinzi15"));
            }
            this.ao = this.T.getAlpha();
            this.T.setAlpha(0.85f);
            this.T.setShadowLayer(0.0f, ad.b(this.x, 0.5f), ad.b(this.x, 0.5f), s.h(this.x, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams = this.T.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.ap.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                ad.b(this.T, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.ap.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.ap.bottom);
            }
        }
        TextView textView2 = this.S;
        if (textView2 != null) {
            this.aq = textView2.getTextSize();
            this.S.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.S.getTextColors();
            this.ar = textColors2;
            if (textColors2 != null) {
                this.S.setTextColor(s.h(this.x, "tt_ssxinzi15"));
            }
            this.as = this.S.getAlpha();
            this.S.setAlpha(0.85f);
            this.S.setShadowLayer(0.0f, ad.b(this.x, 0.5f), ad.b(this.x, 0.5f), s.h(this.x, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams2 = this.S.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.at.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                TextView textView3 = this.S;
                int iApplyDimension = (int) TypedValue.applyDimension(1, 14.0f, displayMetrics);
                Rect rect = this.at;
                ad.b(textView3, iApplyDimension, rect.top, rect.right, rect.bottom);
            }
        }
        ImageView imageView = this.U;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.au.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ImageView imageView2 = this.U;
                Rect rect2 = this.au;
                ad.b(imageView2, rect2.left, rect2.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.au.bottom);
            }
        }
        ImageView imageView3 = this.U;
        if (imageView3 != null) {
            imageView3.setImageDrawable(s.c(this.x, "tt_shrink_fullscreen"));
        }
        TextView textView4 = this.K;
        if (textView4 != null) {
            ColorStateList textColors3 = textView4.getTextColors();
            this.ae = textColors3;
            if (textColors3 != null) {
                this.K.setTextColor(s.h(this.x, "tt_ssxinzi15"));
            }
            this.af = this.K.getAlpha();
            this.K.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.K.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.ag.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                TextView textView5 = this.K;
                int iApplyDimension2 = (int) TypedValue.applyDimension(1, 1.0f, displayMetrics);
                Rect rect3 = this.at;
                ad.b(textView5, iApplyDimension2, rect3.top, rect3.right, rect3.bottom);
            }
        }
        View view = this.I;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.ah = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.I.setLayoutParams(layoutParams5);
            this.I.setBackgroundResource(s.d(this.x, "tt_shadow_fullscreen_top"));
        }
        b(false, true);
    }

    private void z() {
        TextView textView = this.T;
        if (textView != null) {
            textView.setTextSize(0, this.am);
            ColorStateList colorStateList = this.an;
            if (colorStateList != null) {
                this.T.setTextColor(colorStateList);
            }
            this.T.setAlpha(this.ao);
            this.T.setShadowLayer(ad.b(this.x, 1.0f), 0.0f, 0.0f, s.h(this.x, "tt_video_shadow_color"));
            TextView textView2 = this.T;
            Rect rect = this.ap;
            ad.b(textView2, rect.left, rect.top, rect.right, rect.bottom);
        }
        TextView textView3 = this.S;
        if (textView3 != null) {
            textView3.setTextSize(0, this.aq);
            ColorStateList colorStateList2 = this.ar;
            if (colorStateList2 != null) {
                this.S.setTextColor(colorStateList2);
            }
            this.S.setAlpha(this.as);
            this.S.setShadowLayer(ad.b(this.x, 1.0f), 0.0f, 0.0f, s.h(this.x, "tt_video_shadow_color"));
            TextView textView4 = this.S;
            Rect rect2 = this.at;
            ad.b(textView4, rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        ImageView imageView = this.U;
        if (imageView != null) {
            Rect rect3 = this.au;
            ad.b(imageView, rect3.left, rect3.top, rect3.right, rect3.bottom);
        }
        ImageView imageView2 = this.U;
        if (imageView2 != null) {
            imageView2.setImageDrawable(s.c(this.x, "tt_enlarge_video"));
        }
        TextView textView5 = this.K;
        if (textView5 != null) {
            ColorStateList colorStateList3 = this.ae;
            if (colorStateList3 != null) {
                textView5.setTextColor(colorStateList3);
            }
            this.K.setAlpha(this.af);
            TextView textView6 = this.K;
            Rect rect4 = this.at;
            ad.b(textView6, rect4.left, rect4.top, rect4.right, rect4.bottom);
        }
        View view = this.I;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.ah;
            this.I.setLayoutParams(layoutParams);
            this.I.setBackgroundResource(s.d(this.x, "tt_video_black_desc_gradient"));
        }
        b(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bykv.vk.openvk.component.video.api.d.b
    public void a() {
        a(false, this.s);
        s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(int i) {
        View view = this.Q;
        if (view == null || view.getVisibility() != 0) {
            this.R.setProgress(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(long j) {
        this.T.setText(com.bykv.vk.openvk.component.video.a.e.a.a(j));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(long j, long j2) {
        this.S.setText(com.bykv.vk.openvk.component.video.a.e.a.a(j2));
        this.T.setText(com.bykv.vk.openvk.component.video.a.e.a.a(j));
        this.R.setProgress(com.bykv.vk.openvk.component.video.a.e.a.a(j, j2));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    protected void a(Context context, View view) {
        super.a(context, view);
        this.G = (TextView) view.findViewById(i.aZ);
        this.H = (ImageView) view.findViewById(i.aN);
        this.I = view.findViewById(i.aP);
        this.M = (ImageView) view.findViewById(i.aQ);
        this.J = (TextView) view.findViewById(i.aO);
        this.K = (TextView) view.findViewById(i.aR);
        this.L = (TextView) view.findViewById(i.aT);
        this.N = view.findViewById(i.aK);
        this.O = (ImageView) view.findViewById(i.aL);
        TextView textView = (TextView) view.findViewById(i.aM);
        this.P = textView;
        textView.setText(s.a(context, "tt_video_retry_des_txt"));
        this.R = (SeekBar) view.findViewById(i.aW);
        this.S = (TextView) view.findViewById(i.aX);
        this.T = (TextView) view.findViewById(i.aV);
        this.Q = view.findViewById(i.aU);
        this.U = (ImageView) view.findViewById(i.aY);
        this.f1716g = view.findViewById(i.aD);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what != 1) {
            return;
        }
        k();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bytedance.sdk.openadsdk.core.widget.d.a
    public void a(View view, boolean z) {
        if (j()) {
            String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            q qVar = this.w;
            if (qVar != null && !TextUtils.isEmpty(qVar.V())) {
                a(this.w.V());
            }
            this.L.setText(str);
        } else {
            a("");
            this.L.setText("");
        }
        if (this.A) {
            return;
        }
        c(this.s && !this.W);
        if (p()) {
            this.z.a(this, view, true, this.f1713d.getVisibility() != 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(@Nullable ViewGroup viewGroup) {
        if (viewGroup != null && (this.a.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.W = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.a.getLayoutParams();
            this.Z = marginLayoutParams.leftMargin;
            this.Y = marginLayoutParams.topMargin;
            this.aa = marginLayoutParams.width;
            this.ab = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.a.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.ac = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.ad.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                ad.b(viewGroup, 0, 0, 0, 0);
            }
            b(true);
            this.U.setImageDrawable(s.c(this.x, "tt_shrink_video"));
            this.R.setThumb(s.c(this.x, "tt_seek_thumb_fullscreen_selector"));
            this.R.setThumbOffset(0);
            com.bykv.vk.openvk.component.video.a.e.a.a((View) this.a, false);
            e(this.W);
            ad.a(this.I, 8);
            if (!this.s) {
                ad.a((View) this.H, 8);
                ad.a((View) this.G, 8);
            } else if ((this.v & 1) == 1) {
                ad.a((View) this.H, 8);
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    @SuppressLint({"ClickableViewAccessibility"})
    public void a(q qVar, WeakReference<Context> weakReference, boolean z) {
        q qVar2;
        if (qVar == null) {
            return;
        }
        a(this.a, o.a());
        a(false, this.s);
        ad.a(this.h, 0);
        ad.a((View) this.i, 0);
        ad.a(this.j, 0);
        if (this.i != null && (qVar2 = this.w) != null && qVar2.K() != null && this.w.K().j() != null) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.w.K().j(), this.w.K().c(), this.w.K().b(), this.i, this.w);
        }
        String strL = !TextUtils.isEmpty(qVar.L()) ? qVar.L() : !TextUtils.isEmpty(qVar.V()) ? qVar.V() : !TextUtils.isEmpty(qVar.W()) ? qVar.W() : "";
        q qVar3 = this.w;
        if (qVar3 != null && qVar3.N() != null && this.w.N().a() != null) {
            ad.a((View) this.k, 0);
            ad.a((View) this.l, 4);
            if (this.k != null) {
                com.bytedance.sdk.openadsdk.k.c.a().a(this.w.N(), this.k, qVar);
                this.k.setOnClickListener(this.D);
                this.k.setOnTouchListener(this.D);
            }
        } else if (!TextUtils.isEmpty(strL)) {
            ad.a((View) this.k, 4);
            ad.a((View) this.l, 0);
            TextView textView = this.l;
            if (textView != null) {
                textView.setText(strL.substring(0, 1));
                this.l.setOnClickListener(this.D);
                this.l.setOnTouchListener(this.D);
            }
        }
        if (this.m != null && !TextUtils.isEmpty(strL)) {
            this.m.setText(strL);
        }
        ad.a((View) this.m, 0);
        ad.a((View) this.n, 0);
        int iM = qVar.M();
        String strA = iM != 4 ? iM != 5 ? s.a(this.x, "tt_video_mobile_go_detail") : s.a(this.x, "tt_video_dial_phone") : s.a(this.x, "tt_video_download_apk");
        TextView textView2 = this.n;
        if (textView2 != null) {
            textView2.setText(strA);
            this.n.setOnClickListener(this.D);
            this.n.setOnTouchListener(this.D);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bykv.vk.openvk.component.video.api.d.b
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void a(q qVar, WeakReference weakReference, boolean z) {
        a(qVar, (WeakReference<Context>) weakReference, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(String str) {
        TextView textView = this.J;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.K;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(boolean z, boolean z2) {
        ad.a(this.Q, 8);
        ad.a(this.I, 8);
        ad.a((View) this.c, 8);
        if (!this.s && !this.W) {
            ad.a((View) this.H, 8);
            if ((this.v & 2) != 2) {
                ad.a((View) this.G, 8);
            }
        } else if ((this.v & 1) == 1) {
            ad.a((View) this.H, 8);
        }
        if (z2) {
            ad.a((View) this.H, 8);
            ad.a((View) this.G, 8);
        }
        c(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void a(boolean z, boolean z2, boolean z3) {
        ad.a(this.Q, 0);
        if (this.W) {
            ad.a(this.I, 0);
            ad.a((View) this.K, 0);
        } else if (z3) {
            ad.a(this.I, 8);
        }
        ad.a((View) this.c, (!z || this.f1713d.getVisibility() == 0) ? 8 : 0);
        if (!this.s && !this.W) {
            if ((this.v & 1) != 1 && !z3) {
                ad.a((View) this.H, 0);
            }
            ad.a((View) this.G, z3 ? 8 : 0);
        }
        ad.a((View) this.S, 0);
        ad.a((View) this.T, 0);
        ad.a((View) this.R, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void b(@Nullable ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        l.e("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup == null || (viewGroup2 = this.a) == null || !(viewGroup2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.W = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.a.getLayoutParams();
        marginLayoutParams.width = this.aa;
        marginLayoutParams.height = this.ab;
        marginLayoutParams.leftMargin = this.Z;
        marginLayoutParams.topMargin = this.Y;
        this.a.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.ac);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            Rect rect = this.ad;
            ad.b(viewGroup, rect.left, rect.top, rect.right, rect.bottom);
        }
        b(true);
        this.U.setImageDrawable(s.c(this.x, "tt_enlarge_video"));
        this.R.setThumb(s.c(this.x, "tt_seek_thumb_normal"));
        this.R.setThumbOffset(0);
        com.bykv.vk.openvk.component.video.a.e.a.a((View) this.a, true);
        e(this.W);
        ad.a(this.I, 8);
        if ((this.v & 2) == 2) {
            ad.a((View) this.G, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void b(boolean z) {
        int i = j() ? this.aj : this.o;
        int dimensionPixelSize = j() ? this.ai : this.p;
        if (this.r <= 0 || this.q <= 0 || i <= 0) {
            return;
        }
        if (!u() && !j() && (this.v & 8) != 8) {
            dimensionPixelSize = this.x.getResources().getDimensionPixelSize(s.g(this.x, "tt_video_container_maxheight"));
        }
        int i2 = this.q;
        int i3 = this.r;
        int i4 = (int) (i3 * ((i * 1.0f) / i2));
        if (i4 > dimensionPixelSize) {
            i = (int) (i2 * ((dimensionPixelSize * 1.0f) / i3));
        } else {
            dimensionPixelSize = i4;
        }
        if (!z && !j()) {
            i = this.o;
            dimensionPixelSize = this.p;
        }
        this.b.a(i, dimensionPixelSize);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public boolean b(int i) {
        SeekBar seekBar = this.R;
        return seekBar != null && i > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void c(boolean z) {
        TextView textView = this.J;
        if (textView != null) {
            if (this.s) {
                ad.a((View) textView, 8);
            } else {
                ad.a((View) textView, z ? 0 : 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    @SuppressLint({"ClickableViewAccessibility"})
    protected void d() {
        super.d();
        this.ak.a(this.a);
        ad.a((View) this.H, (this.s || (this.v & 1) == 1) ? 8 : 0);
        this.H.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.c(dVar, view);
                }
            }
        });
        ad.a((View) this.G, (!this.s || (this.v & 2) == 2) ? 0 : 8);
        this.G.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.d(dVar, view);
                }
            }
        });
        this.M.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.e(dVar, view);
                }
            }
        });
        this.O.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.b(false, true);
                d.this.h();
                d.this.g();
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.f(dVar, view);
                }
            }
        });
        this.U.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.b(dVar, view);
                }
            }
        });
        this.R.setThumbOffset(0);
        this.R.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.d.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (d.this.p()) {
                    d dVar = d.this;
                    dVar.z.a(dVar, i, z);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!d.this.W && d.this.x != null) {
                    seekBar.setThumb(s.c(o.a(), "tt_seek_thumb_press"));
                }
                if (d.this.p()) {
                    seekBar.setThumbOffset(0);
                    d dVar = d.this;
                    dVar.z.b(dVar, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!d.this.W && d.this.x != null) {
                    seekBar.setThumb(s.c(o.a(), "tt_seek_thumb_normal"));
                }
                if (d.this.p()) {
                    seekBar.setThumbOffset(0);
                    d dVar = d.this;
                    dVar.z.a(dVar, seekBar.getProgress());
                }
            }
        });
        this.R.setOnTouchListener(this.al);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void e() {
        this.V.removeMessages(1);
        this.V.sendMessageDelayed(this.V.obtainMessage(1), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void f() {
        this.V.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void g() {
        q qVar;
        ad.f(this.f1713d);
        ad.f(this.f1714e);
        ad.e(this.N);
        if (this.f1715f != null && (qVar = this.w) != null && qVar.K() != null && this.w.K().j() != null) {
            ad.f(this.f1715f);
            com.bytedance.sdk.openadsdk.k.c.a().a(this.w.K().j(), this.w.K().c(), this.w.K().b(), this.f1715f, this.w);
        }
        if (this.c.getVisibility() == 0) {
            ad.a((View) this.c, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void h() {
        ad.e(this.f1713d);
        ad.e(this.N);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
    public void i() {
        this.R.setProgress(0);
        this.R.setSecondaryProgress(0);
        this.S.setText(s.b(this.x, "tt_00_00"));
        this.T.setText(s.b(this.x, "tt_00_00"));
        d(8);
        if (x()) {
            this.b.setVisibility(8);
        }
        ImageView imageView = this.f1715f;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        d(8);
        ad.a(this.Q, 8);
        ad.a(this.h, 8);
        ad.a((View) this.i, 8);
        ad.a(this.j, 8);
        ad.a((View) this.k, 8);
        ad.a((View) this.l, 8);
        ad.a((View) this.m, 8);
        com.bytedance.sdk.openadsdk.core.widget.e eVar = this.y;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bytedance.sdk.openadsdk.core.widget.e.b
    public boolean j() {
        return this.W;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e, com.bytedance.sdk.openadsdk.core.widget.e.b
    public void k() {
        a(true, false);
    }
}
