package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinTouchToClickListener implements View.OnTouchListener {
    private final Context E;
    private final long agS;
    private final int agT;
    private final int agU;
    private final ClickRecognitionState agV;
    private long agW;
    private PointF agX;
    private boolean agY;
    private final OnClickListener agZ;

    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    public interface OnClickListener {
        void onClick(View view, MotionEvent motionEvent);
    }

    public AppLovinTouchToClickListener(com.applovin.impl.sdk.n nVar, com.applovin.impl.sdk.c.b<Integer> bVar, Context context, OnClickListener onClickListener) {
        this.agS = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aLk)).longValue();
        this.agT = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLl)).intValue();
        this.agU = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLq)).intValue());
        this.agV = ClickRecognitionState.values()[((Integer) nVar.a(bVar)).intValue()];
        this.E = context;
        this.agZ = onClickListener;
    }

    private float a(PointF pointF, PointF pointF2) {
        float f2 = pointF.x - pointF2.x;
        float f3 = pointF.y - pointF2.y;
        return z((float) Math.sqrt((f2 * f2) + (f3 * f3)));
    }

    private void b(View view, MotionEvent motionEvent) {
        this.agZ.onClick(view, motionEvent);
        this.agY = true;
    }

    private boolean d(MotionEvent motionEvent) {
        if (this.agU <= 0) {
            return true;
        }
        Point pointY = com.applovin.impl.sdk.utils.h.Y(this.E);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = this.agU;
        return rawX >= ((float) i) && rawY >= ((float) i) && rawX <= ((float) (pointY.x - i)) && rawY <= ((float) (pointY.y - i));
    }

    private float z(float f2) {
        return f2 / this.E.getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 6 && !this.agY && this.agV == ClickRecognitionState.ACTION_POINTER_UP) {
                    b(view, motionEvent);
                }
            } else if (!this.agY && this.agV == ClickRecognitionState.ACTION_UP) {
                b(view, motionEvent);
            } else if (this.agV == ClickRecognitionState.DISABLED) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.agW;
                float fA = a(this.agX, new PointF(motionEvent.getX(), motionEvent.getY()));
                if (!this.agY) {
                    long j = this.agS;
                    if ((j < 0 || jElapsedRealtime < j) && ((i = this.agT) < 0 || fA < i)) {
                        b(view, motionEvent);
                    }
                }
            }
        } else if (this.agV != ClickRecognitionState.ACTION_DOWN) {
            this.agW = SystemClock.elapsedRealtime();
            this.agX = new PointF(motionEvent.getX(), motionEvent.getY());
            this.agY = false;
        } else if (d(motionEvent)) {
            b(view, motionEvent);
        }
        return true;
    }
}
