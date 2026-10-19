package com.fyber.inneractive.sdk.flow.vast;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.model.vast.o;
import com.fyber.inneractive.sdk.model.vast.q;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class h implements Comparator<o> {
    public int a;
    public int b;
    public int c;

    public h(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final Integer a(String str) {
        q qVarA = q.a(str);
        if (qVarA == q.MEDIA_TYPE_MP4) {
            return 3;
        }
        if (qVarA == q.MEDIA_TYPE_3GPP) {
            return 2;
        }
        return qVarA == q.MEDIA_TYPE_WEBM ? 1 : -1;
    }

    @Override // java.util.Comparator
    public int compare(o oVar, o oVar2) {
        o oVar3 = oVar;
        o oVar4 = oVar2;
        if (!TextUtils.equals("VPAID", oVar4.f2094f)) {
            if (!TextUtils.equals("VPAID", oVar3.f2094f)) {
                Integer num = oVar3.f2093e;
                int iIntValue = num == null ? 0 : num.intValue();
                Integer num2 = oVar4.f2093e;
                int iIntValue2 = num2 == null ? 0 : num2.intValue();
                int i = this.a;
                if (iIntValue2 <= i || iIntValue > i) {
                    if (iIntValue <= i || iIntValue2 > i) {
                        int iCompareTo = a(oVar4.f2092d).compareTo(a(oVar3.f2092d));
                        if (iCompareTo != 0) {
                            return iCompareTo;
                        }
                        if (iIntValue >= iIntValue2) {
                            if (iIntValue <= iIntValue2) {
                                Integer num3 = oVar3.b;
                                int iIntValue3 = num3 == null ? 0 : num3.intValue();
                                Integer num4 = oVar3.c;
                                int iIntValue4 = num4 == null ? 0 : num4.intValue();
                                Integer num5 = oVar4.b;
                                int iIntValue5 = num5 == null ? 0 : num5.intValue();
                                Integer num6 = oVar4.c;
                                int i2 = iIntValue3 * iIntValue4;
                                int iIntValue6 = iIntValue5 * (num6 == null ? 0 : num6.intValue());
                                int i3 = this.b * this.c;
                                int iAbs = Math.abs(i2 - i3);
                                int iAbs2 = Math.abs(iIntValue6 - i3);
                                if (iAbs >= iAbs2) {
                                    if (iAbs <= iAbs2) {
                                        return 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return 1;
        }
        return -1;
    }
}
