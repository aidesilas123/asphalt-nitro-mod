package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;

/* JADX INFO: compiled from: SlideRightTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements View.OnTouchListener {
    private float a;
    private float b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f772e;

    public c(h hVar) {
        this(hVar, 5);
    }

    public c(h hVar, int i) {
        this.f772e = 5;
        this.f771d = hVar;
        if (i > 0) {
            this.f772e = i;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        h hVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.a = motionEvent.getX();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                this.b = x;
                if (Math.abs(x - this.a) > 10.0f) {
                    this.c = true;
                }
            }
        } else {
            if (!this.c) {
                return false;
            }
            int iB = com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), Math.abs(this.b - this.a));
            if (this.b > this.a && iB > this.f772e && (hVar = this.f771d) != null) {
                hVar.a();
            }
        }
        return true;
    }
}
