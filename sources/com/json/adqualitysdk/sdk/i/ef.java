package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ef extends eb {
    private static long k = 5003375480328705597L;
    private static int l = 0;
    private static char m = 0;
    private static int n = 0;
    private static int o = 1;
    private dx p;

    public ef(dx dxVar, dx dxVar2, dx dxVar3, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
        this.p = dxVar3;
    }

    private dx d() {
        int i = o;
        int i2 = i + 15;
        n = i2 % 128;
        int i3 = i2 % 2;
        dx dxVar = this.p;
        int i4 = i + 117;
        n = i4 % 128;
        if ((i4 % 2 != 0 ? 'J' : '+') == '+') {
            return dxVar;
        }
        int i5 = 89 / 0;
        return dxVar;
    }

    private static String e(String str, String str2, int i, char c, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c2 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c2;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c2;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ k) ^ ((long) l)) ^ ((long) m));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    @Override // com.json.adqualitysdk.sdk.i.eb
    public final boolean equals(Object obj) {
        if ((this == obj ? (char) 16 : '[') == 16) {
            int i = o + 67;
            n = i % 128;
            return i % 2 == 0;
        }
        if (obj != null) {
            if ((ef.class != obj.getClass()) || !super.equals(obj)) {
                return false;
            }
            ef efVar = (ef) obj;
            dx dxVar = this.p;
            boolean z = dxVar != null;
            dx dxVar2 = efVar.p;
            if (z) {
                return dxVar.equals(dxVar2);
            }
            if (dxVar2 == null) {
                return true;
            }
            int i2 = o + 49;
            n = i2 % 128;
            if (i2 % 2 == 0) {
                return false;
            }
            int i3 = 99 / 0;
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031 A[PHI: r0
      0x0031: PHI (r0v5 int) = (r0v4 int), (r0v10 int) binds: [B:14:0x002f, B:8:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[PHI: r0
      0x0038: PHI (r0v8 int) = (r0v4 int), (r0v10 int) binds: [B:14:0x002f, B:8:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.json.adqualitysdk.sdk.i.eb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode() {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ef.o
            int r0 = r0 + 13
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ef.n = r1
            int r0 = r0 % 2
            r1 = 0
            if (r0 == 0) goto L1e
            int r0 = super.hashCode()
            int r0 = r0 * 43
            com.ironsource.adqualitysdk.sdk.i.dx r2 = r4.p
            r3 = 1
            if (r2 == 0) goto L1a
            r2 = 0
            goto L1b
        L1a:
            r2 = 1
        L1b:
            if (r2 == r3) goto L38
            goto L31
        L1e:
            int r0 = super.hashCode()
            int r0 = r0 * 31
            com.ironsource.adqualitysdk.sdk.i.dx r2 = r4.p
            r3 = 89
            if (r2 == 0) goto L2d
            r2 = 58
            goto L2f
        L2d:
            r2 = 89
        L2f:
            if (r2 == r3) goto L38
        L31:
            com.ironsource.adqualitysdk.sdk.i.dx r1 = r4.p
            int r1 = r1.hashCode()
            goto L42
        L38:
            int r2 = com.json.adqualitysdk.sdk.i.ef.n
            int r2 = r2 + 39
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.ef.o = r3
            int r2 = r2 % 2
        L42:
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ef.hashCode():int");
    }

    @Override // com.json.adqualitysdk.sdk.i.eb
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(e("জ\ueda1謫拽", "嘽蛤载䕯", (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 736993545, (char) (64907 - TextUtils.getOffsetAfter("", 0)), "⯹\ue89b䛬").intern());
        sb.append(d().toString());
        String string = sb.toString();
        int i = n + 23;
        o = i % 128;
        int i2 = i % 2;
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        dp dpVarM702 = m706().m702(drVar, cjVar);
        dp dpVarM7022 = d().m702(drVar, cjVar);
        try {
            Object objM674 = m707().m702(drVar, cjVar).m674();
            if (objM674 instanceof JSONObject) {
                ((JSONObject) objM674).put((String) dpVarM702.m674(), dpVarM7022.m674());
            } else {
                if (!(objM674 instanceof JSONArray)) {
                    if (!(!(objM674 instanceof Map))) {
                        ((Map) objM674).put(dpVarM702.m674(), dpVarM7022.m674());
                        int i = o + 93;
                        n = i % 128;
                        int i2 = i % 2;
                    } else {
                        if ((objM674 instanceof List ? '/' : '9') != '9') {
                            int i3 = o + 39;
                            n = i3 % 128;
                            if (i3 % 2 != 0) {
                                ((List) objM674).set(dpVarM702.m679().intValue(), dpVarM7022.m674());
                                throw null;
                            }
                            ((List) objM674).set(dpVarM702.m679().intValue(), dpVarM7022.m674());
                        } else if (objM674.getClass().isArray()) {
                            ((Object[]) objM674)[dpVarM702.m679().intValue()] = dpVarM7022.m674();
                        } else {
                            String strM445 = cjVar.m445();
                            StringBuilder sb = new StringBuilder();
                            sb.append(e("뽺쯼ﻁ䍟", "嘽蛤载䕯", MotionEvent.axisFromString("") + 1, (char) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 24573), "玴\ue60eﯜ䂏밴哌㩦⧹噜킯ج恖珀⋎蘹ぇ\ud901遛귎\uea59㎋\uf286凘ᦳ⮶浒ए燤汨語ꑑꑢ뙊ᕮ솕\uf3bdꯒ䕖\udbc8ឦ\uf7f9䫅").intern());
                            sb.append(this);
                            sb.append(m703());
                            sb.append(e("䏬릫㴪縹", "嘽蛤载䕯", 716811075 - TextUtils.getOffsetBefore("", 0), (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 14652), "괹蹒㿬鹌鵜\ud9a6椐뤨\ud869ﾭ굱숖쮛懧拌⻫僗牃\uee3cᥖ\ue9c4뻌鳼虇\uf492篹湸뇄䑲ꕌ蟭첃ꀊ⦰冎ᄲ䬔ꎶꙂ贸쏮").intern());
                            sb.append(objM674);
                            cn.m519(strM445, sb.toString(), null);
                        }
                    }
                } else {
                    int i4 = o + 17;
                    n = i4 % 128;
                    if ((i4 % 2 != 0 ? 'X' : '\'') == 'X') {
                        ((JSONArray) objM674).put(dpVarM702.m679().intValue(), dpVarM7022.m674());
                        throw null;
                    }
                    ((JSONArray) objM674).put(dpVarM702.m679().intValue(), dpVarM7022.m674());
                }
            }
        } catch (Exception e2) {
            String strM4452 = cjVar.m445();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e("뽺쯼ﻁ䍟", "嘽蛤载䕯", Color.blue(0), (char) (24574 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "玴\ue60eﯜ䂏밴哌㩦⧹噜킯ج恖珀⋎蘹ぇ\ud901遛귎\uea59㎋\uf286凘ᦳ⮶浒ए燤汨語ꑑꑢ뙊ᕮ솕\uf3bdꯒ䕖\udbc8ឦ\uf7f9䫅").intern());
            sb2.append(this);
            sb2.append(m703());
            cn.m519(strM4452, sb2.toString(), e2);
        }
        return dpVarM7022;
    }
}
