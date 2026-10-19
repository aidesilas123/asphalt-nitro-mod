package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fg extends fr {
    private static char[] a = {51912, 53881, 58445, 64653, 54733, 44557, '\n', '}'};
    private static long b = 5833130350420039872L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5619d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private fr[] f5620e;

    public fg(List<fr> list) {
        fr[] frVarArr = new fr[list.size()];
        this.f5620e = frVarArr;
        list.toArray(frVarArr);
    }

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    public final boolean equals(Object obj) {
        int i = f5619d + 111;
        c = i % 128;
        int i2 = i % 2;
        if ((this == obj ? '#' : (char) 4) != 4) {
            return true;
        }
        if ((obj != null ? (char) 0 : '_') == 0) {
            if (fg.class == obj.getClass()) {
                fg fgVar = (fg) obj;
                fr[] frVarArr = this.f5620e;
                if (frVarArr != null) {
                    int i3 = c + 55;
                    f5619d = i3 % 128;
                    int i4 = i3 % 2;
                    return frVarArr.equals(fgVar.f5620e);
                }
                if (fgVar.f5620e != null) {
                    return false;
                }
                int i5 = c + 69;
                f5619d = i5 % 128;
                int i6 = i5 % 2;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        if (r4.f5620e != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        return r4.f5620e.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        r1 = r1 + 3;
        com.json.adqualitysdk.sdk.i.fg.c = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if ((r1 % 2) == 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
    
        r1 = 'O';
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        r1 = 'P';
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (r1 == 'O') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003d, code lost:
    
        r0 = 34 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r4.f5620e != null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode() {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.fg.c
            int r0 = r0 + 91
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.fg.f5619d = r1
            int r0 = r0 % 2
            r2 = 6
            if (r0 != 0) goto Lf
            r0 = 6
            goto L11
        Lf:
            r0 = 33
        L11:
            r3 = 0
            if (r0 == r2) goto L19
            com.ironsource.adqualitysdk.sdk.i.fr[] r0 = r4.f5620e
            if (r0 == 0) goto L27
            goto L20
        L19:
            com.ironsource.adqualitysdk.sdk.i.fr[] r0 = r4.f5620e
            r2 = 96
            int r2 = r2 / r3
            if (r0 == 0) goto L27
        L20:
            com.ironsource.adqualitysdk.sdk.i.fr[] r0 = r4.f5620e
            int r0 = r0.hashCode()
            return r0
        L27:
            int r1 = r1 + 3
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.fg.c = r0
            int r1 = r1 % 2
            r0 = 79
            if (r1 == 0) goto L36
            r1 = 79
            goto L38
        L36:
            r1 = 80
        L38:
            if (r1 == r0) goto L3b
            return r3
        L3b:
            r0 = 34
            int r0 = r0 / r3
            return r3
        L3f:
            r0 = move-exception
            throw r0
        L41:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.fg.hashCode():int");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a(2 - Gravity.getAbsoluteGravity(0, 0), Color.rgb(0, 0, 0) + 16777216, (char) ((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 51890)).intern());
        fr[] frVarArr = this.f5620e;
        int length = frVarArr.length;
        int i = 0;
        while (true) {
            if (!(i < length)) {
                sb.append(a(-TextUtils.indexOf((CharSequence) "", '0', 0, 0), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 7, (char) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern());
                return sb.toString();
            }
            int i2 = f5619d + 19;
            c = i2 % 128;
            int i3 = i2 % 2;
            fr frVar = frVarArr[i];
            sb.append(a(4 - (KeyEvent.getMaxKeyCode() >> 16), ExpandableListView.getPackedPositionGroup(0L) + 2, (char) (58477 - KeyEvent.keyCodeFromString(""))).intern());
            sb.append(frVar.toString());
            sb.append(a(1 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 6, (char) ((Process.getThreadPriority(0) + 20) >> 6)).intern());
            i++;
            int i4 = f5619d + 109;
            c = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final dp mo714(dr drVar, cj cjVar) {
        dp dpVar = new dp(null);
        dr drVar2 = new dr(drVar);
        fr[] frVarArr = this.f5620e;
        int length = frVarArr.length;
        int i = 0;
        while (true) {
            if ((i < length ? '0' : '\'') == '\'') {
                return dpVar;
            }
            int i2 = c + 55;
            f5619d = i2 % 128;
            if (i2 % 2 == 0) {
                frVarArr[i].mo714(drVar2, cjVar).m677();
                throw null;
            }
            dpVar = frVarArr[i].mo714(drVar2, cjVar);
            if (!dpVar.m677() && !dpVar.m675()) {
                int i3 = c + 117;
                f5619d = i3 % 128;
                int i4 = i3 % 2;
                if (!(!dpVar.m673())) {
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return dpVar;
    }
}
