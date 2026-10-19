package com.bytedance.sdk.component.utils;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: HackTouchDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends TouchDelegate {
    private View a;
    private Rect b;
    private Rect c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1082e;

    public g(Rect rect, View view) {
        super(rect, view);
        this.b = rect;
        this.f1082e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.c = rect2;
        int i = this.f1082e;
        rect2.inset(-i, -i);
        this.a = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z2 = this.f1081d;
                if (z2) {
                    zContains = this.c.contains(x, y);
                    z = z2;
                } else {
                    z = z2;
                }
            } else {
                if (action == 3) {
                    boolean z3 = this.f1081d;
                    this.f1081d = false;
                    z = z3;
                }
                zContains = true;
                z = false;
            }
            zContains = true;
        } else if (this.b.contains(x, y)) {
            this.f1081d = true;
            zContains = true;
        } else {
            this.f1081d = false;
            zContains = true;
            z = false;
        }
        if (!z) {
            return false;
        }
        View view = this.a;
        if (zContains) {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        } else {
            float f2 = -(this.f1082e * 2);
            motionEvent.setLocation(f2, f2);
        }
        if (view.getVisibility() == 0) {
            return view.dispatchTouchEvent(motionEvent);
        }
        return false;
    }
}
