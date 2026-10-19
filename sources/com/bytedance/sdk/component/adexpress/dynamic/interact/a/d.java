package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;

/* JADX INFO: compiled from: SlideUpTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements View.OnTouchListener {
    private float a;
    private float b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f774e;

    public d(h hVar, int i) {
        this.f773d = hVar;
        this.f774e = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        h hVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.a = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.b = y;
                if (Math.abs(y - this.a) > 10.0f) {
                    this.c = true;
                }
            }
        } else {
            if (!this.c) {
                return false;
            }
            int iB = com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), Math.abs(this.b - this.a));
            if (this.b - this.a < 0.0f && iB > this.f774e && (hVar = this.f773d) != null) {
                hVar.a();
            }
        }
        return true;
    }
}
