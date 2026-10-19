package com.fyber.inneractive.sdk.flow.vast;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Comparator<com.fyber.inneractive.sdk.model.vast.c> {
    public int a;
    public int b;

    public f(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public Integer a(com.fyber.inneractive.sdk.model.vast.c cVar) {
        com.fyber.inneractive.sdk.model.vast.h hVar = cVar.a;
        if (hVar == com.fyber.inneractive.sdk.model.vast.h.Html) {
            return 3;
        }
        if (hVar == com.fyber.inneractive.sdk.model.vast.h.Iframe) {
            return 2;
        }
        return hVar == com.fyber.inneractive.sdk.model.vast.h.Static ? 1 : -1;
    }

    @Override // java.util.Comparator
    public int compare(com.fyber.inneractive.sdk.model.vast.c cVar, com.fyber.inneractive.sdk.model.vast.c cVar2) {
        com.fyber.inneractive.sdk.model.vast.c cVar3 = cVar;
        com.fyber.inneractive.sdk.model.vast.c cVar4 = cVar2;
        int i = cVar3.c * cVar3.f2077d;
        int i2 = cVar4.c * cVar4.f2077d;
        int i3 = this.a * this.b;
        int iAbs = Math.abs(i - i3);
        int iAbs2 = Math.abs(i2 - i3);
        if (iAbs >= iAbs2) {
            if (iAbs <= iAbs2) {
                float fFloatValue = Float.valueOf(this.a).floatValue() / Float.valueOf(this.b).floatValue();
                float fFloatValue2 = Float.valueOf(cVar3.c).floatValue() / Float.valueOf(cVar3.f2077d).floatValue();
                float fFloatValue3 = Float.valueOf(cVar4.c).floatValue() / Float.valueOf(cVar4.f2077d).floatValue();
                float fAbs = Math.abs(fFloatValue - fFloatValue2);
                float fAbs2 = Math.abs(fFloatValue - fFloatValue3);
                if (fAbs >= fAbs2) {
                    if (fAbs <= fAbs2) {
                        int iCompareTo = a(cVar4).compareTo(a(cVar3));
                        if (iCompareTo != 0) {
                            return iCompareTo;
                        }
                        return 0;
                    }
                }
            }
            return 1;
        }
        return -1;
    }
}
