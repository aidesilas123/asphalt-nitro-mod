package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;

/* JADX INFO: compiled from: TapTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements View.OnTouchListener {
    private static int c = 10;
    private float a;
    private float b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f776e;

    public e(h hVar) {
        this.f776e = hVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.a = motionEvent.getX();
            this.b = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.a) >= c || Math.abs(y - this.b) >= c) {
                    this.f775d = true;
                }
            } else if (action == 3) {
                this.f775d = false;
            }
        } else {
            if (this.f775d) {
                this.f775d = false;
                return false;
            }
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (Math.abs(x2 - this.a) >= c || Math.abs(y2 - this.b) >= c) {
                this.f775d = false;
            } else {
                h hVar = this.f776e;
                if (hVar != null) {
                    hVar.a();
                }
            }
        }
        return true;
    }
}
