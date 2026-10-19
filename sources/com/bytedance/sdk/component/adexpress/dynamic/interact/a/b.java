package com.bytedance.sdk.component.adexpress.dynamic.interact.a;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;
import com.bytedance.sdk.component.adexpress.dynamic.interact.h;

/* JADX INFO: compiled from: LongPressTouch.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements View.OnTouchListener {
    private float a;
    private float b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InteractViewContainer f769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f770f;

    public b(InteractViewContainer interactViewContainer, h hVar) {
        this.f769e = interactViewContainer;
        this.f770f = hVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.c = System.currentTimeMillis();
            this.a = motionEvent.getX();
            this.b = motionEvent.getY();
            this.f769e.d();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.a) >= com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), 10.0f) || Math.abs(y - this.b) >= com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), 10.0f)) {
                    this.f768d = true;
                    this.f769e.e();
                }
            }
        } else {
            if (this.f768d) {
                return false;
            }
            if (System.currentTimeMillis() - this.c >= 1500) {
                h hVar = this.f770f;
                if (hVar != null) {
                    hVar.a();
                }
            } else {
                this.f769e.e();
            }
        }
        return true;
    }
}
