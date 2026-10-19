package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;
import java.lang.ref.SoftReference;

/* JADX INFO: compiled from: UnlockTapTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements View.OnTouchListener {
    private static int c = 10;
    private float a;
    private float b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f779f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f780g = 0;
    private final int h = 200;
    private final int i = 3;
    private SoftReference<View> j = new SoftReference<>(null);

    public f(h hVar, int i, final ViewGroup viewGroup) {
        this.f778e = c;
        this.f777d = hVar;
        if (i > 0) {
            this.f778e = i;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.a.f.1
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById = viewGroup.findViewById(com.bytedance.sdk.component.adexpress.dynamic.a.f700g);
                    f.this.j = new SoftReference(viewFindViewById);
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
        h hVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f779f = a(this.j.get());
            this.a = motionEvent.getRawX();
            this.b = motionEvent.getRawY();
            this.f780g = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f779f;
            if (rectF != null && !rectF.contains(this.a, this.b)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.a);
            float fAbs2 = Math.abs(rawY - this.b);
            int iB = com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), Math.abs(rawX - this.a));
            int i = c;
            if (fAbs < i || fAbs2 < i) {
                if ((System.currentTimeMillis() - this.f780g < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (hVar = this.f777d) != null) {
                    hVar.a();
                }
            } else if (rawX > this.a && iB > this.f778e && (hVar2 = this.f777d) != null) {
                hVar2.a();
            }
        }
        return true;
    }
}
