package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bytedance.sdk.component.adexpress.dynamic.c.j;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnimationText extends TextSwitcher implements ViewSwitcher.ViewFactory, x.a {
    Animation.AnimationListener a;
    private List<String> b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f811g;
    private int h;
    private float i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Handler n;

    public AnimationText(Context context, int i, float f2, int i2, int i3) {
        super(context);
        this.b = new ArrayList();
        this.c = 0;
        this.f808d = 1;
        this.n = new x(Looper.getMainLooper(), this);
        this.a = new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.AnimationText.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AnimationText.this.f810f != null) {
                    AnimationText.this.f810f.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.h = i;
        this.i = f2;
        this.j = i2;
        this.m = i3;
        c();
    }

    private void c() {
        setFactory(this);
    }

    public void a() {
        int i = this.l;
        if (i == 1) {
            setInAnimation(getContext(), s.j(this.f809e, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), s.j(this.f809e, "tt_text_animation_y_out"));
        } else if (i == 0) {
            setInAnimation(getContext(), s.j(this.f809e, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), s.j(this.f809e, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.a);
            getOutAnimation().setAnimationListener(this.a);
        }
        this.n.sendEmptyMessage(1);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what != 1) {
            return;
        }
        b();
        this.n.sendEmptyMessageDelayed(1, this.f811g);
    }

    public void b() {
        List<String> list = this.b;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i = this.c;
        this.c = i + 1;
        this.k = i;
        setText(this.b.get(i));
        if (this.c > this.b.size() - 1) {
            this.c = 0;
        }
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.f810f = textView;
        textView.setTextColor(this.h);
        this.f810f.setTextSize(this.i);
        this.f810f.setMaxLines(this.j);
        if (Build.VERSION.SDK_INT >= 17) {
            this.f810f.setTextAlignment(this.m);
        }
        return this.f810f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(j.b(this.b.get(this.k), this.i, false)[0], 1073741824), i);
        } catch (Exception unused) {
            super.onMeasure(i, i2);
        }
    }

    public void setAnimationDuration(int i) {
        this.f811g = i;
    }

    public void setAnimationText(List<String> list) {
        this.b = list;
    }

    public void setAnimationType(int i) {
        this.l = i;
    }

    public void setMaxLines(int i) {
        this.j = i;
    }

    public void setTextColor(int i) {
        this.h = i;
    }

    public void setTextSize(float f2) {
        this.i = f2;
    }
}
