package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class CircleLongPressView extends FrameLayout {
    private Context a;
    private ImageView b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RingProgressView f821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AnimatorSet f822f;

    public CircleLongPressView(Context context) {
        super(context);
        this.f822f = new AnimatorSet();
        this.a = context;
        e();
        f();
    }

    private void e() {
        FrameLayout frameLayout = new FrameLayout(this.a);
        this.f821e = new RingProgressView(this.a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) e.a(this.a, 95.0f), (int) e.a(this.a, 95.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(this.f821e, layoutParams);
        ImageView imageView = new ImageView(this.a);
        this.b = imageView;
        imageView.setImageResource(s.d(this.a, "tt_interact_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 75.0f), (int) e.a(this.a, 75.0f));
        layoutParams2.gravity = 17;
        frameLayout.addView(this.b, layoutParams2);
        ImageView imageView2 = new ImageView(this.a);
        this.c = imageView2;
        imageView2.setImageResource(s.d(this.a, "tt_interact_oval"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) e.a(this.a, 63.0f), (int) e.a(this.a, 63.0f));
        layoutParams3.gravity = 17;
        frameLayout.addView(this.c, layoutParams3);
        addView(frameLayout);
        TextView textView = new TextView(this.a);
        this.f820d = textView;
        textView.setTextColor(-1);
        this.f820d.setMaxLines(1);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 81;
        addView(this.f820d, layoutParams4);
    }

    private void f() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.c, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setRepeatMode(2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.c, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f822f.setDuration(800L);
        this.f822f.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    public void a() {
        this.f822f.start();
    }

    public void b() {
        this.f822f.cancel();
    }

    public void c() {
        this.f821e.a();
    }

    public void d() {
        this.f821e.b();
        this.f821e.c();
    }

    public void setGuideText(String str) {
        this.f820d.setText(str);
    }
}
