package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;
import com.bytedance.sdk.component.utils.l;
import java.lang.ref.SoftReference;

/* JADX INFO: compiled from: LimitBrushTapTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements View.OnTouchListener {
    private static int c = 10;
    private float a;
    private float b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f766f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f767g = 0;
    private final int h = 200;
    private final int i = 3;
    private SoftReference<ViewGroup> j = new SoftReference<>(null);

    public a(h hVar, int i, final ViewGroup viewGroup) {
        this.f765e = c;
        this.f764d = hVar;
        if (i > 0) {
            this.f765e = i;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.j = new SoftReference(viewGroup);
                }
            });
        }
    }

    private RectF a(View view) {
        if (view == null) {
            return new RectF();
        }
        view.getLocationOnScreen(new int[2]);
        return new RectF(r0[0], r0[1], r0[0] + view.getWidth(), r0[1] + view.getHeight());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        h hVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f766f = a(this.j.get());
            this.a = motionEvent.getRawX();
            this.b = motionEvent.getRawY();
            this.f767g = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f766f;
            if (rectF != null && !rectF.contains(this.a, this.b)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.a);
            float fAbs2 = Math.abs(rawY - this.b);
            int i = this.f765e;
            if (fAbs < i || fAbs2 < i) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f767g;
                l.b("limittouch", "d:" + jCurrentTimeMillis + " a:" + fAbs + " b:" + fAbs2);
                if ((jCurrentTimeMillis < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (hVar = this.f764d) != null) {
                    hVar.a();
                }
            } else {
                h hVar2 = this.f764d;
                if (hVar2 != null) {
                    hVar2.a();
                }
            }
        }
        return true;
    }
}
