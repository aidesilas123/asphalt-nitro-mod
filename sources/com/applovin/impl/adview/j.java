package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends View {
    protected final Context E;
    protected float ahA;

    public enum a {
        WHITE_ON_BLACK(0),
        WHITE_ON_TRANSPARENT(1),
        INVISIBLE(2),
        TRANSPARENT_SKIP(3);

        private final int ahF;

        a(int i) {
            this.ahF = i;
        }

        public int getValue() {
            return this.ahF;
        }
    }

    protected j(Context context) {
        super(context);
        this.ahA = 1.0f;
        this.E = context;
    }

    public static j a(a aVar, Context context) {
        return aVar.equals(a.INVISIBLE) ? new r(context) : aVar.equals(a.WHITE_ON_TRANSPARENT) ? new s(context) : aVar.equals(a.TRANSPARENT_SKIP) ? new t(context) : new z(context);
    }

    public void fZ(int i) {
        setViewScale(i / 30.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) getSize();
            layoutParams.height = (int) getSize();
        }
    }

    public float getSize() {
        return this.ahA * 30.0f;
    }

    public abstract a getStyle();

    public void setViewScale(float f2) {
        this.ahA = f2;
    }
}
