package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.json.t9;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: compiled from: InteractViewFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class i {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static g a(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar, int i, int i2, int i3, int i4) {
        if (context == null || dynamicBaseWidget == null || gVar == null) {
            return null;
        }
        String strK = gVar.K();
        strK.hashCode();
        byte b = -1;
        switch (strK.hashCode()) {
            case 48:
                if (strK.equals("0")) {
                    b = 0;
                }
                break;
            case 50:
                if (strK.equals(MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
                    b = 1;
                }
                break;
            case 53:
                if (strK.equals(CampaignEx.CLICKMODE_ON)) {
                    b = 2;
                }
                break;
            case 54:
                if (strK.equals("6")) {
                    b = 3;
                }
                break;
            case 55:
                if (strK.equals(t9.f6640e)) {
                    b = 4;
                }
                break;
            case 56:
                if (strK.equals("8")) {
                    b = 5;
                }
                break;
            case 57:
                if (strK.equals("9")) {
                    b = 6;
                }
                break;
            case 1567:
                if (strK.equals("10")) {
                    b = 7;
                }
                break;
            case 1568:
                if (strK.equals("11")) {
                    b = 8;
                }
                break;
            case 1569:
                if (strK.equals("12")) {
                    b = 9;
                }
                break;
            case 1570:
                if (strK.equals("13")) {
                    b = 10;
                }
                break;
            case 1571:
                if (strK.equals("14")) {
                    b = Ascii.VT;
                }
                break;
            case 1573:
                if (strK.equals("16")) {
                    b = Ascii.FF;
                }
                break;
            case 1574:
                if (strK.equals("17")) {
                    b = Ascii.CR;
                }
                break;
            case 1575:
                if (strK.equals("18")) {
                    b = Ascii.SO;
                }
                break;
            case 1598:
                if (strK.equals("20")) {
                    b = Ascii.SI;
                }
                break;
            case 1600:
                if (strK.equals("22")) {
                    b = Ascii.DLE;
                }
                break;
            case 1602:
                if (strK.equals("24")) {
                    b = 17;
                }
                break;
            case 1607:
                if (strK.equals("29")) {
                    b = Ascii.DC2;
                }
                break;
        }
        switch (b) {
            case 0:
                return new e(context, dynamicBaseWidget, gVar);
            case 1:
                return new c(context, dynamicBaseWidget, gVar);
            case 2:
                return gVar.L() == 1 ? new p(context, dynamicBaseWidget, gVar, gVar.X()) : new n(context, dynamicBaseWidget, gVar);
            case 3:
            case 8:
                return new l(context, dynamicBaseWidget, gVar);
            case 4:
            case 11:
                return new j(context, dynamicBaseWidget, gVar);
            case 5:
                return new k(context, dynamicBaseWidget, gVar);
            case 6:
            case 12:
                return new m(context, dynamicBaseWidget, gVar, strK, i, i2, i4);
            case 7:
                return new d(context, dynamicBaseWidget, gVar);
            case 9:
                return new n(context, dynamicBaseWidget, gVar);
            case 10:
                return new p(context, dynamicBaseWidget, gVar);
            case 13:
            case 14:
                return new r(context, dynamicBaseWidget, gVar, strK, i3);
            case 15:
                return new b(context, dynamicBaseWidget, gVar);
            case 16:
                return com.bytedance.sdk.component.adexpress.d.b() ? new o(context, dynamicBaseWidget, gVar) : new q(context, dynamicBaseWidget, gVar);
            case 17:
                return com.bytedance.sdk.component.adexpress.d.b() ? new a(context, dynamicBaseWidget, gVar) : new o(context, dynamicBaseWidget, gVar);
            case 18:
                return new f(context, dynamicBaseWidget, gVar, i, i2, i4);
            default:
                return null;
        }
    }
}
