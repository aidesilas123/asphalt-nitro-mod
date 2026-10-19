package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.adexpress.d;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.ShadowImageView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowTextView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class TopLayoutDislike2 extends PAGLinearLayout implements a<TopLayoutDislike2> {
    private View a;
    private ImageView b;
    private ShadowImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f1411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1414g;
    private boolean h;
    private b i;
    private boolean j;
    private boolean k;
    private CharSequence l;
    private boolean m;

    public TopLayoutDislike2(@NonNull Context context) {
        this(context, null);
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = "";
        setOrientation(0);
    }

    private void a(q qVar) {
        f();
    }

    private void a(boolean z) {
        if (this.k) {
            return;
        }
        if (this.j) {
            this.b.setVisibility(8);
            this.f1411d.setVisibility(0);
        } else if (z) {
            this.f1411d.setVisibility(0);
            this.b.setVisibility(8);
        } else {
            this.b.setVisibility(0);
            this.f1411d.setVisibility(8);
        }
    }

    private void f() {
        this.c = new ShadowImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ad.b(getContext(), 28.0f), ad.b(getContext(), 28.0f));
        layoutParams.leftMargin = ad.b(getContext(), 16.0f);
        layoutParams.topMargin = ad.b(getContext(), 20.0f);
        this.c.setLayoutParams(layoutParams);
        this.c.setScaleType(ImageView.ScaleType.CENTER);
        ShadowImageView shadowImageView = new ShadowImageView(getContext());
        this.a = shadowImageView;
        shadowImageView.setId(520093713);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(ad.b(getContext(), 28.0f), ad.b(getContext(), 28.0f));
        layoutParams2.topMargin = ad.b(getContext(), 20.0f);
        layoutParams2.leftMargin = ad.b(getContext(), 16.0f);
        this.a.setLayoutParams(layoutParams2);
        ((ImageView) this.a).setScaleType(ImageView.ScaleType.CENTER);
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        view.setLayoutParams(layoutParams3);
        ShadowTextView shadowTextView = new ShadowTextView(getContext());
        this.f1411d = shadowTextView;
        shadowTextView.setId(520093714);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, ad.b(getContext(), 28.0f));
        layoutParams4.topMargin = ad.b(getContext(), 20.0f);
        int iB = ad.b(getContext(), 16.0f);
        layoutParams2.rightMargin = iB;
        layoutParams4.rightMargin = iB;
        this.f1411d.setLayoutParams(layoutParams4);
        this.f1411d.setGravity(17);
        this.f1411d.setTextColor(Color.parseColor("#ffffff"));
        this.f1411d.setTextSize(14.0f);
        this.f1411d.setVisibility(8);
        this.b = new ShadowImageView(getContext());
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(ad.b(getContext(), 28.0f), ad.b(getContext(), 28.0f));
        layoutParams5.topMargin = ad.b(getContext(), 20.0f);
        layoutParams5.rightMargin = ad.b(getContext(), 16.0f);
        this.b.setLayoutParams(layoutParams5);
        this.b.setPadding(ad.b(getContext(), 4.0f), ad.b(getContext(), 4.0f), ad.b(getContext(), 4.0f), ad.b(getContext(), 4.0f));
        this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.c);
        addView(this.a);
        addView(view);
        addView(this.f1411d);
        addView(this.b);
    }

    private void g() {
        View view = this.a;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.i != null) {
                        TopLayoutDislike2.this.i.c(view2);
                    }
                }
            });
        }
        ShadowImageView shadowImageView = this.c;
        if (shadowImageView != null) {
            shadowImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TopLayoutDislike2.this.h = !r0.h;
                    TopLayoutDislike2.this.c.setImageResource(TopLayoutDislike2.this.b != null ? TopLayoutDislike2.this.h ? s.d(TopLayoutDislike2.this.getContext(), "tt_reward_full_mute") : s.d(TopLayoutDislike2.this.getContext(), "tt_reward_full_unmute") : TopLayoutDislike2.this.h ? s.d(TopLayoutDislike2.this.getContext(), "tt_mute_wrapper") : s.d(TopLayoutDislike2.this.getContext(), "tt_unmute_wrapper"));
                    if (Build.VERSION.SDK_INT >= 19 && TopLayoutDislike2.this.c.getDrawable() != null) {
                        TopLayoutDislike2.this.c.getDrawable().setAutoMirrored(true);
                    }
                    if (TopLayoutDislike2.this.i != null) {
                        TopLayoutDislike2.this.i.b(view2);
                    }
                }
            });
        }
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.i != null) {
                        TopLayoutDislike2.this.i.a(view2);
                    }
                }
            });
            return;
        }
        TextView textView = this.f1411d;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.i != null) {
                        TopLayoutDislike2.this.i.a(view2);
                    }
                }
            });
        }
    }

    public TopLayoutDislike2 a(boolean z, @NonNull q qVar) {
        a(qVar);
        this.a.setVisibility(0);
        ((ImageView) this.a).setImageResource(s.d(o.a(), "tt_reward_full_feedback"));
        this.b.setImageResource(s.d(o.a(), "tt_skip_btn"));
        if (Build.VERSION.SDK_INT >= 19 && this.b.getDrawable() != null) {
            this.b.getDrawable().setAutoMirrored(true);
        }
        this.b.setVisibility(8);
        this.f1412e = qVar.K() == null ? 0 : ((int) qVar.K().f()) * qVar.K().w();
        if (com.bytedance.sdk.openadsdk.core.model.o.c(qVar) && qVar.i() != null) {
            this.f1412e = (int) qVar.i().b();
        }
        if (this.f1412e <= 0) {
            this.f1412e = 10;
        }
        if (qVar.aS() != 8 || qVar.D() == null) {
            this.f1413f = o.d().j(qVar.D().getCodeId());
        } else {
            this.f1413f = o.d().q(qVar.D().getCodeId());
        }
        int i = this.f1413f;
        this.j = i == -1 || i >= this.f1412e;
        if (qVar.at()) {
            this.a.setVisibility(8);
            this.f1414g = true;
        }
        this.f1411d.setVisibility(0);
        this.f1411d.setText("");
        this.f1411d.setEnabled(false);
        this.f1411d.setClickable(false);
        g();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a() {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.performClick();
        }
        TextView textView = this.f1411d;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    @SuppressLint({"SetTextI18n"})
    public void a(CharSequence charSequence, CharSequence charSequence2) {
        if (!TextUtils.isEmpty(charSequence)) {
            this.l = charSequence;
        }
        if (this.b != null) {
            this.m = true;
            if (this.j) {
                this.f1411d.setText(((Object) this.l) + "s");
                a(false);
                return;
            }
            String str = (String) this.l;
            try {
                int i = this.f1413f;
                int i2 = i == 0 ? Integer.parseInt(str) : i - (this.f1412e - Integer.parseInt(str));
                if (i2 > 0) {
                    if (this.f1413f == 0) {
                        a(false);
                        return;
                    } else {
                        this.f1411d.setText(String.format(s.a(d.a(), "tt_reward_full_skip"), Integer.valueOf(i2)));
                        a(true);
                        return;
                    }
                }
                this.f1411d.setText(((Object) this.l) + "s");
                a(false);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void b() {
        ShadowImageView shadowImageView = this.c;
        if (shadowImageView != null) {
            shadowImageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void c() {
        this.f1411d.setWidth(20);
        this.f1411d.setVisibility(4);
        this.b.setVisibility(4);
        this.k = true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void d() {
        this.f1411d.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void e() {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        this.f1411d.setVisibility(8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setListener(b bVar) {
        this.i = bVar;
    }

    public void setShouldShowSkipTime(boolean z) {
        this.j = z;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowDislike(boolean z) {
        View view = this.a;
        if (view == null || this.f1414g) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSkip(boolean z) {
        TextView textView = this.f1411d;
        if (textView != null) {
            if (!z) {
                textView.setText("");
            }
            if (this.b.getVisibility() == 4) {
                return;
            }
            this.k = !z;
            this.b.setVisibility((z && this.m) ? 0 : 8);
            this.f1411d.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSound(boolean z) {
        ShadowImageView shadowImageView = this.c;
        if (shadowImageView != null) {
            shadowImageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipEnable(boolean z) {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setEnabled(z);
            this.b.setClickable(z);
            return;
        }
        TextView textView = this.f1411d;
        if (textView != null) {
            textView.setEnabled(z);
            this.f1411d.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.f1411d.setText(charSequence);
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSoundMute(boolean z) {
        this.h = z;
        this.c.setImageResource(this.b != null ? z ? s.d(getContext(), "tt_reward_full_mute") : s.d(getContext(), "tt_reward_full_unmute") : z ? s.d(getContext(), "tt_mute_wrapper") : s.d(getContext(), "tt_unmute_wrapper"));
        if (Build.VERSION.SDK_INT < 19 || this.c.getDrawable() == null) {
            return;
        }
        this.c.getDrawable().setAutoMirrored(true);
    }
}
