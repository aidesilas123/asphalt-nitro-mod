package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b extends View implements SubtitleView.a {
    private List<com.applovin.exoplayer2.i.a> OV;
    private int Oj;
    private float Ok;
    private final List<i> VS;
    private c VU;
    private float VV;

    public b(Context context) {
        this(context, null);
    }

    public b(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.VS = new ArrayList();
        this.OV = Collections.emptyList();
        this.Oj = 0;
        this.Ok = 0.0533f;
        this.VU = c.VW;
        this.VV = 0.08f;
    }

    private static com.applovin.exoplayer2.i.a a(com.applovin.exoplayer2.i.a aVar) {
        a.C0041a c0041aA = aVar.lP().o(-3.4028235E38f).eg(Integer.MIN_VALUE).a((Layout.Alignment) null);
        if (aVar.Ob == 0) {
            c0041aA.b(1.0f - aVar.Oa, 0);
        } else {
            c0041aA.b((-aVar.Oa) - 1.0f, 1);
        }
        int i = aVar.Oc;
        if (i == 0) {
            c0041aA.ef(2);
        } else if (i == 2) {
            c0041aA.ef(0);
        }
        return c0041aA.lU();
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3) {
        this.OV = list;
        this.VU = cVar;
        this.Ok = f2;
        this.Oj = i;
        this.VV = f3;
        while (this.VS.size() < list.size()) {
            this.VS.add(new i(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<com.applovin.exoplayer2.i.a> list = this.OV;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i = paddingBottom - paddingTop;
        float fA = j.a(this.Oj, this.Ok, height, i);
        if (fA <= 0.0f) {
            return;
        }
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            com.applovin.exoplayer2.i.a aVarA = list.get(i2);
            if (aVarA.Ol != Integer.MIN_VALUE) {
                aVarA = a(aVarA);
            }
            com.applovin.exoplayer2.i.a aVar = aVarA;
            int i3 = paddingBottom;
            this.VS.get(i2).a(aVar, this.VU, fA, j.a(aVar.Oj, aVar.Ok, height, i), this.VV, canvas, paddingLeft, paddingTop, width, i3);
            i2++;
            size = size;
            i = i;
            paddingBottom = i3;
            width = width;
        }
    }
}
