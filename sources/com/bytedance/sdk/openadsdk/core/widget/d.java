package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: VideoOnTouchLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    private final a a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1763g;
    private boolean k;
    private final boolean b = false;
    private boolean c = false;
    private boolean h = true;
    private boolean i = false;
    private final View.OnTouchListener j = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (d.this.a.w()) {
                return !d.this.c;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                d dVar = d.this;
                dVar.k = dVar.a(motionEvent);
                d.this.f1760d = x;
                d.this.f1761e = y;
                d.this.f1762f = (int) x;
                d.this.f1763g = (int) y;
                d.this.h = true;
                if (d.this.a != null && d.this.c) {
                    d.this.a.a(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x - d.this.f1762f) > 20.0f || Math.abs(y - d.this.f1763g) > 20.0f) {
                    d.this.h = false;
                }
                d.this.h = true;
                d.this.i = false;
                d.this.f1760d = 0.0f;
                d.this.f1761e = 0.0f;
                d.this.f1762f = 0;
                if (d.this.a != null) {
                    d.this.a.a(view, d.this.h);
                }
                d.this.k = false;
            } else if (action == 3) {
                d.this.k = false;
            }
            return !d.this.c;
        }
    };

    /* JADX INFO: compiled from: VideoOnTouchLayout.java */
    public interface a {
        void a(View view, boolean z);

        boolean w();
    }

    public d(a aVar) {
        this.a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int iC = ad.c(o.a().getApplicationContext());
        int iD = ad.d(o.a().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f2 = iC;
        if (rawX > f2 * 0.01f && rawX < f2 * 0.99f) {
            float f3 = iD;
            if (rawY > 0.01f * f3 && rawY < f3 * 0.99f) {
                return false;
            }
        }
        return true;
    }

    public void a(View view) {
        if (view != null) {
            view.setOnTouchListener(this.j);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
