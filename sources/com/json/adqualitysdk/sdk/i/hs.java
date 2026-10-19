package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.hu;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public final class hs {
    private static int a = 16;
    private static char[] b = {' ', 't', 'y', 'p', 'e', 'f', 'r', 'o', 'm', 'c', 'l', 'a', 's', ':', 'h', 'i', 'u', 'n', 'd', 'E', 'g', 'O', 'b', 'j', 'F'};
    private static char c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5734d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5735e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<hu.a, hm> f5736f;

    final class a implements hr {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.hr
        /* JADX INFO: renamed from: ﻛ */
        public final boolean mo591(hp hpVar) {
            return hpVar.mo768() instanceof String;
        }
    }

    public hs() {
        i(115 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), false, 11 - TextUtils.indexOf("", ""), Color.alpha(0) + 12, "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
        this.f5736f = new HashMap();
    }

    private static <T> hp<T> a(Object obj, List<Field> list, hp hpVar) throws IllegalAccessException {
        Object obj2;
        int i = f5734d + 33;
        f5735e = i % 128;
        if (i % 2 == 0) {
            list.iterator();
            throw null;
        }
        Iterator<Field> it = list.iterator();
        while (true) {
            if (!(it.hasNext())) {
                return hpVar;
            }
            int i2 = f5735e + 117;
            f5734d = i2 % 128;
            int i3 = i2 % 2;
            Field next = it.next();
            if (!(WeakReference.class.isAssignableFrom(next.getType()))) {
                obj2 = next.get(obj);
            } else {
                int i4 = f5734d + 63;
                f5735e = i4 % 128;
                int i5 = i4 % 2;
                obj2 = ((WeakReference) next.get(obj)).get();
                int i6 = f5735e + 97;
                f5734d = i6 % 128;
                int i7 = i6 % 2;
            }
            hpVar = q(next, obj, hpVar);
            obj = obj2;
        }
    }

    private static List b(Object obj, hu huVar, int i) {
        int i2 = f5734d + 45;
        f5735e = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 15 : ':') != ':') {
            r(obj, huVar.m789(i), huVar.m784(i));
            throw null;
        }
        List listR = r(obj, huVar.m789(i), huVar.m784(i));
        int i3 = f5735e + 101;
        f5734d = i3 % 128;
        int i4 = i3 % 2;
        return listR;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        if ((r5 != null) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
    
        if (r5 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
    
        r2 = r2 + 105;
        com.json.adqualitysdk.sdk.i.hs.f5734d = r2 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        if ((r2 % 2) == 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        r1 = '\f';
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
    
        r1 = 'U';
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r1 == 'U') goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
    
        r5 = com.json.adqualitysdk.sdk.i.jw.m972(r5.getClass(), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        r6 = 51 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004c, code lost:
    
        return com.json.adqualitysdk.sdk.i.jw.m972(r5.getClass(), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        r0 = r0 + 65;
        com.json.adqualitysdk.sdk.i.hs.f5735e = r0 % 128;
        r0 = r0 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean c(java.lang.Object r5, java.util.List<java.lang.String> r6) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.hs.f5734d
            int r1 = r0 + 115
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r2
            int r1 = r1 % 2
            r3 = 78
            if (r1 != 0) goto L11
            r1 = 78
            goto L13
        L11:
            r1 = 19
        L13:
            r4 = 0
            if (r1 == r3) goto L1e
            if (r5 == 0) goto L1a
            r1 = 1
            goto L1b
        L1a:
            r1 = 0
        L1b:
            if (r1 == 0) goto L4d
            goto L23
        L1e:
            r1 = 60
            int r1 = r1 / r4
            if (r5 == 0) goto L4d
        L23:
            int r2 = r2 + 105
            int r0 = r2 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r0
            int r2 = r2 % 2
            r0 = 85
            if (r2 == 0) goto L32
            r1 = 12
            goto L34
        L32:
            r1 = 85
        L34:
            if (r1 == r0) goto L44
            java.lang.Class r5 = r5.getClass()
            boolean r5 = com.json.adqualitysdk.sdk.i.jw.m972(r5, r6)
            r6 = 51
            int r6 = r6 / r4
            return r5
        L42:
            r5 = move-exception
            throw r5
        L44:
            java.lang.Class r5 = r5.getClass()
            boolean r5 = com.json.adqualitysdk.sdk.i.jw.m972(r5, r6)
            return r5
        L4d:
            int r0 = r0 + 65
            int r5 = r0 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r5
            int r0 = r0 % 2
            return r4
        L56:
            r5 = move-exception
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.c(java.lang.Object, java.util.List):boolean");
    }

    private static <T> hp<T> d(Object obj, Object obj2, hp hpVar) {
        int i = f5735e + 97;
        f5734d = i % 128;
        int i2 = i % 2;
        if (obj instanceof Collection) {
            return new ht((Collection) obj, obj2, hpVar);
        }
        if (!(obj instanceof Map)) {
            return null;
        }
        ht htVar = new ht((Map) obj, obj2, hpVar);
        int i3 = f5735e + 21;
        f5734d = i3 % 128;
        int i4 = i3 % 2;
        return htVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0066 A[PHI: r5
      0x0066: PHI (r5v7 java.lang.reflect.Field) = (r5v6 java.lang.reflect.Field), (r5v8 java.lang.reflect.Field) binds: [B:24:0x0063, B:16:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.reflect.Field[] e(java.lang.Class r8) {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.reflect.Field[] r8 = r8.getDeclaredFields()
            int r2 = r8.length
            r3 = 0
            r4 = 0
        Le:
            r5 = 51
            if (r4 >= r2) goto L15
            r6 = 51
            goto L17
        L15:
            r6 = 30
        L17:
            if (r6 == r5) goto L2c
            java.lang.reflect.Field[] r8 = new java.lang.reflect.Field[r3]
            java.lang.Object[] r8 = r1.toArray(r8)
            java.lang.reflect.Field[] r8 = (java.lang.reflect.Field[]) r8
            int r0 = com.json.adqualitysdk.sdk.i.hs.f5734d
            int r0 = r0 + 79
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r1
            int r0 = r0 % 2
            return r8
        L2c:
            int r5 = com.json.adqualitysdk.sdk.i.hs.f5735e
            int r5 = r5 + 3
            int r6 = r5 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r6
            int r5 = r5 % 2
            r6 = 8
            if (r5 == 0) goto L3d
            r5 = 8
            goto L3f
        L3d:
            r5 = 61
        L3f:
            if (r5 == r6) goto L4e
            r5 = r8[r4]
            java.lang.Class r6 = r5.getType()
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L69
            goto L66
        L4e:
            r5 = r8[r4]
            java.lang.Class r6 = r5.getType()
            boolean r6 = r6.equals(r0)
            r7 = 5
            int r7 = r7 / r3
            r7 = 48
            if (r6 == 0) goto L61
            r6 = 48
            goto L63
        L61:
            r6 = 16
        L63:
            if (r6 == r7) goto L66
            goto L69
        L66:
            r1.add(r5)
        L69:
            int r4 = r4 + 1
            goto Le
        L6c:
            r8 = move-exception
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.e(java.lang.Class):java.lang.reflect.Field[]");
    }

    private hp f(hp hpVar, hv hvVar, int i) {
        Object objMo768 = hpVar.mo768();
        hp hpVarF = null;
        if (hvVar.m812().contains(objMo768) || hvVar.m809().contains(objMo768)) {
            return null;
        }
        if (hvVar.m813().m786(i) && k(hvVar.m813().m791(), hpVar)) {
            if (hvVar.m811()) {
                hvVar.m814(hpVar);
                hvVar.m815(objMo768);
            }
            return hpVar;
        }
        if (objMo768 instanceof WeakReference) {
            int i2 = f5734d + 95;
            f5735e = i2 % 128;
            int i3 = i2 % 2;
            WeakReference weakReference = (WeakReference) objMo768;
            if (weakReference.get() != null && hvVar.m813().m793(i) && c(weakReference.get(), hvVar.m813().m792())) {
                return h(weakReference.get(), hvVar, i + 1, hpVar);
            }
        }
        if ((c(objMo768, hvVar.m813().m792()) ? (char) 25 : '*') != '*') {
            int i4 = f5735e + 83;
            f5734d = i4 % 128;
            return h(objMo768, hvVar, !(i4 % 2 != 0) ? i + 1 : i / 0, hpVar);
        }
        if ((hvVar.m813().m785()) && objMo768 != null) {
            hvVar.m812().add(objMo768);
        }
        List listB = b(objMo768, hvVar.m813(), i);
        hm hmVarM810 = hvVar.m810();
        if (listB == null) {
            return null;
        }
        Iterator it = listB.iterator();
        while (true) {
            if ((it.hasNext() ? '3' : '2') != '3') {
                return hpVarF;
            }
            hp hpVarD = d(objMo768, it.next(), hpVar);
            hmVarM810.c();
            hpVarF = f(hpVarD, hvVar, i);
            if (hpVarF != null) {
                int i5 = f5735e + 13;
                f5734d = i5 % 128;
                int i6 = i5 % 2;
                if (!hvVar.m811()) {
                    int i7 = f5734d + 1;
                    f5735e = i7 % 128;
                    int i8 = i7 % 2;
                    return hpVarF;
                }
            }
            hmVarM810.d();
        }
    }

    private <T> hp<T> g(Object obj, hm hmVar) {
        int i = f5734d + 77;
        f5735e = i % 128;
        int i2 = i % 2;
        try {
            hp<T> hpVarL = l(a(obj, hmVar.b().get(0), null), hmVar, 1);
            int i3 = f5734d + 83;
            f5735e = i3 % 128;
            if (!(i3 % 2 == 0)) {
                return hpVarL;
            }
            throw null;
        } catch (Exception e2) {
            m.m1032(i((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 115, false, ExpandableListView.getPackedPositionGroup(0L) + 11, 12 - View.MeasureSpec.getSize(0), "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern(), i(Color.rgb(0, 0, 0) + 16777327, false, (ViewConfiguration.getWindowTouchSlop() >> 8) + 7, (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 35, "\u0010\u000e\uffc1\u0011\u0002\u0015\t￦\u0013\u0013\u0010\u0013\uffc1\b\u0006\u0015\u0015\n\u000f\b\uffc1\ufff0\u0003\u000b\u0006\u0004\u0015\uffe7\n\u0006\r\u0005\uffc1\u0007\u0013").intern(), e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <T> com.json.adqualitysdk.sdk.i.hp<T> h(java.lang.Object r11, com.json.adqualitysdk.sdk.i.hv<T> r12, int r13, com.json.adqualitysdk.sdk.i.hp r14) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.h(java.lang.Object, com.ironsource.adqualitysdk.sdk.i.hv, int, com.ironsource.adqualitysdk.sdk.i.hp):com.ironsource.adqualitysdk.sdk.i.hp");
    }

    private static String i(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    private static List j(Object obj) {
        int i = f5735e + 61;
        f5734d = i % 128;
        List listR = i % 2 != 0 ? r(obj, false, true) : r(obj, true, true);
        int i2 = f5734d + 125;
        f5735e = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 11 : '!') == '!') {
            return listR;
        }
        throw null;
    }

    private static boolean k(hr hrVar, hp hpVar) {
        int i = f5735e + 113;
        f5734d = i % 128;
        int i2 = i % 2;
        try {
            boolean zMo591 = hrVar.mo591(hpVar);
            int i3 = f5735e + 117;
            f5734d = i3 % 128;
            int i4 = i3 % 2;
            return zMo591;
        } catch (Exception unused) {
            return false;
        }
    }

    private <T> hp<T> l(hp hpVar, hm hmVar, int i) {
        int i2 = f5735e + 81;
        f5734d = i2 % 128;
        if ((i2 % 2 != 0 ? 'U' : '2') == 'U') {
            hmVar.b().size();
            throw null;
        }
        if (i >= hmVar.b().size()) {
            return hpVar;
        }
        List<Field> list = hmVar.b().get(i);
        Object objMo768 = hpVar.mo768();
        List listJ = j(objMo768);
        if (listJ == null) {
            String strIntern = i(115 - View.MeasureSpec.getMode(0), false, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 10, Color.alpha(0) + 12, "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(i(108 - ((Process.getThreadPriority(0) + 20) >> 6), true, ((Process.getThreadPriority(0) + 20) >> 6) + 37, KeyEvent.keyCodeFromString("") + 37, "ￄ\b\t\u001a\r\t\u0007\t\u0016ￄ\uffd0\u0014\u0005\ufff1ￄ\u0016\u0013ￄ\u0012\u0013\r\u0018\u0007\t\u0010\u0010\u0013\uffe7ￄ\b\t\u0018\u0007\t\u0014\u001c￩").intern());
            sb.append(objMo768.getClass());
            m.m1031(strIntern, sb.toString());
            return null;
        }
        Iterator it = listJ.iterator();
        int i3 = f5735e + 69;
        f5734d = i3 % 128;
        int i4 = i3 % 2;
        while (true) {
            if ((it.hasNext() ? '0' : '(') != '0') {
                int i5 = f5735e + 17;
                f5734d = i5 % 128;
                if (i5 % 2 == 0) {
                    return null;
                }
                throw null;
            }
            Object next = it.next();
            try {
                hp hpVarA = a(next, list, d(objMo768, next, hpVar));
                if (hpVarA != null) {
                    return l(hpVarA, hmVar, i + 1);
                }
                continue;
            } catch (Exception unused) {
            }
        }
    }

    private static String m(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = b;
            char c2 = c;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r10 = r10.getSuperclass();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String n(java.lang.Object r9, java.lang.Class r10, java.lang.String r11) {
        /*
            r8 = this;
        L0:
            if (r10 == 0) goto L92
            int r0 = com.json.adqualitysdk.sdk.i.hs.f5735e
            int r0 = r0 + 29
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r1
            int r0 = r0 % 2
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            boolean r0 = r10.equals(r0)
            if (r0 != 0) goto L92
            int r0 = com.json.adqualitysdk.sdk.i.hs.f5735e
            int r0 = r0 + 125
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r1
            int r0 = r0 % 2
            java.lang.reflect.Field[] r0 = e(r10)
            int r1 = r0.length
            r2 = 0
            r3 = 0
        L25:
            r4 = 87
            if (r3 >= r1) goto L2c
            r5 = 87
            goto L2e
        L2c:
            r5 = 14
        L2e:
            if (r5 == r4) goto L35
            java.lang.Class r10 = r10.getSuperclass()
            goto L0
        L35:
            r4 = r0[r3]
            r5 = 1
            r4.setAccessible(r5)
            java.lang.Object r4 = r4.get(r9)     // Catch: java.lang.Exception -> L8f
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> L8f
            if (r4 == 0) goto L45
            r6 = 0
            goto L46
        L45:
            r6 = 1
        L46:
            if (r6 == 0) goto L49
            goto L8f
        L49:
            int r6 = com.json.adqualitysdk.sdk.i.hs.f5734d
            int r6 = r6 + 111
            int r7 = r6 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r7
            int r6 = r6 % 2
            if (r6 != 0) goto L69
            java.util.regex.Pattern r5 = java.util.regex.Pattern.compile(r11)     // Catch: java.lang.Exception -> L8f
            java.util.regex.Matcher r5 = r5.matcher(r4)     // Catch: java.lang.Exception -> L8f
            boolean r5 = r5.matches()     // Catch: java.lang.Exception -> L8f
            r6 = 91
            int r6 = r6 / r2
            if (r5 == 0) goto L8f
            goto L7c
        L67:
            r9 = move-exception
            throw r9
        L69:
            java.util.regex.Pattern r6 = java.util.regex.Pattern.compile(r11)     // Catch: java.lang.Exception -> L8f
            java.util.regex.Matcher r6 = r6.matcher(r4)     // Catch: java.lang.Exception -> L8f
            boolean r6 = r6.matches()     // Catch: java.lang.Exception -> L8f
            if (r6 == 0) goto L79
            r6 = 0
            goto L7a
        L79:
            r6 = 1
        L7a:
            if (r6 == r5) goto L8f
        L7c:
            int r9 = com.json.adqualitysdk.sdk.i.hs.f5735e
            int r10 = r9 + 103
            int r11 = r10 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r11
            int r10 = r10 % 2
            int r9 = r9 + 7
            int r10 = r9 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r10
            int r9 = r9 % 2
            return r4
        L8f:
            int r3 = r3 + 1
            goto L25
        L92:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.n(java.lang.Object, java.lang.Class, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r13 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0021, code lost:
    
        if (r13 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        r0 = i(115 - android.widget.ExpandableListView.getPackedPositionGroup(0), false, (android.view.ViewConfiguration.getScrollBarFadeDuration() >> 16) + 11, 13 - (android.view.ViewConfiguration.getZoomControlsTimeout() > 0 ? 1 : (android.view.ViewConfiguration.getZoomControlsTimeout() == 0 ? 0 : -1)), "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
        r4 = new java.lang.StringBuilder();
        r4.append(r14);
        r4.append(i(61 - (android.view.ViewConfiguration.getWindowTouchSlop() >> 8), false, 1 - (android.view.ViewConfiguration.getScrollBarSize() >> 8), android.text.TextUtils.getCapsMode("", 0, 0) + 2, "\ufff3\r").intern());
        r4.append(r15);
        r4.append(i(97 - ((android.os.Process.getThreadPriority(0) + 20) >> 6), true, android.view.View.resolveSizeAndState(0, 0, 0) + 4, 8 - (android.view.ViewConfiguration.getScrollDefaultDelay() >> 16), "\u0010%ￏￛￏ\u0014$\u001b").intern());
        r4.append(r13.mo768());
        com.json.adqualitysdk.sdk.i.m.m1019(r0, r4.toString());
        r13 = com.json.adqualitysdk.sdk.i.hs.f5735e + 61;
        com.json.adqualitysdk.sdk.i.hs.f5734d = r13 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ae, code lost:
    
        if ((r13 % 2) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b0, code lost:
    
        r13 = 'S';
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b3, code lost:
    
        r13 = 'H';
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b5, code lost:
    
        if (r13 != 'H') goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b9, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bc, code lost:
    
        r13 = i(android.view.KeyEvent.getDeadChar(0, 0) + 115, false, android.text.TextUtils.indexOf((java.lang.CharSequence) "", '0', 0) + 12, 12 - android.text.TextUtils.getOffsetBefore("", 0), "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
        r0 = new java.lang.StringBuilder();
        r0.append(r14);
        r0.append(i(61 - android.text.TextUtils.indexOf("", "", 0), false, (android.view.ViewConfiguration.getKeyRepeatDelay() >> 16) + 1, android.view.KeyEvent.keyCodeFromString("") + 2, "\ufff3\r").intern());
        r0.append(r15);
        com.json.adqualitysdk.sdk.i.m.m1019(r13, r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0108, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void o(com.json.adqualitysdk.sdk.i.hp r13, java.lang.Object r14, java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.o(com.ironsource.adqualitysdk.sdk.i.hp, java.lang.Object, java.lang.String):void");
    }

    private static Field[] p(Class cls, int i) {
        int i2 = f5735e + 19;
        f5734d = i2 % 128;
        int i3 = i2 % 2;
        Field[] declaredFields = cls.getDeclaredFields();
        int i4 = 0;
        while (true) {
            if ((cls != null ? '\b' : '&') == '&' || i4 == i) {
                break;
            }
            int i5 = f5734d + 91;
            f5735e = i5 % 128;
            int i6 = i5 % 2;
            cls = cls.getSuperclass();
            if (!(cls == null)) {
                declaredFields = jw.m968(declaredFields, cls.getDeclaredFields());
            }
            i4++;
            int i7 = f5735e + 29;
            f5734d = i7 % 128;
            int i8 = i7 % 2;
        }
        int i9 = f5734d + 21;
        f5735e = i9 % 128;
        if (i9 % 2 != 0) {
            return declaredFields;
        }
        throw null;
    }

    private static <T> hp<T> q(Field field, Object obj, hp hpVar) {
        ht htVar = new ht(field, obj, hpVar);
        int i = f5735e + 57;
        f5734d = i % 128;
        int i2 = i % 2;
        return htVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List r(java.lang.Object r4, boolean r5, boolean r6) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.hs.f5734d
            int r1 = r0 + 55
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r2
            int r1 = r1 % 2
            boolean r1 = r4 instanceof java.util.Collection
            r2 = 65
            if (r1 == 0) goto L13
            r1 = 65
            goto L15
        L13:
            r1 = 11
        L15:
            r3 = 0
            if (r1 == r2) goto L19
            goto L35
        L19:
            int r0 = r0 + 109
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r1
            int r0 = r0 % 2
            r1 = 46
            if (r0 != 0) goto L27
            r0 = 6
            goto L29
        L27:
            r0 = 46
        L29:
            if (r0 != r1) goto L61
            if (r5 == 0) goto L35
            java.util.ArrayList r3 = new java.util.ArrayList
            java.util.Collection r4 = (java.util.Collection) r4
            r3.<init>(r4)
            goto L56
        L35:
            boolean r5 = r4 instanceof java.util.Map
            if (r5 == 0) goto L56
            if (r6 == 0) goto L56
            java.util.ArrayList r3 = new java.util.ArrayList
            java.util.Map r4 = (java.util.Map) r4
            java.util.Collection r5 = r4.values()
            r3.<init>(r5)
            java.util.Set r4 = r4.keySet()
            r3.addAll(r4)
            int r4 = com.json.adqualitysdk.sdk.i.hs.f5735e
            int r4 = r4 + r2
            int r5 = r4 % 128
            com.json.adqualitysdk.sdk.i.hs.f5734d = r5
            int r4 = r4 % 2
        L56:
            int r4 = com.json.adqualitysdk.sdk.i.hs.f5734d
            int r4 = r4 + 23
            int r5 = r4 % 128
            com.json.adqualitysdk.sdk.i.hs.f5735e = r5
            int r4 = r4 % 2
            return r3
        L61:
            throw r3     // Catch: java.lang.Throwable -> L62
        L62:
            r4 = move-exception
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.r(java.lang.Object, boolean, boolean):java.util.List");
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static <T> T m773(Class cls, Object obj, hl hlVar, T t) {
        int i = f5735e + 79;
        f5734d = i % 128;
        int i2 = i % 2;
        try {
            try {
                Field fieldM732 = hq.m770().m772().m732(cls, hlVar);
                if ((fieldM732 != null ? 'N' : '<') != '<') {
                    int i3 = f5734d + 41;
                    f5735e = i3 % 128;
                    int i4 = i3 % 2;
                    return (T) fieldM732.get(obj);
                }
                int i5 = f5735e + 51;
                f5734d = i5 % 128;
                if (i5 % 2 == 0) {
                    return t;
                }
                throw null;
            } catch (Throwable unused) {
                String strIntern = i((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 115, false, (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 10, Color.red(0) + 12, "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
                StringBuilder sb = new StringBuilder();
                sb.append(i((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 110, false, KeyEvent.keyCodeFromString("") + 3, 14 - (ViewConfiguration.getScrollDefaultDelay() >> 16), "\u000f\b\uffc1￦\u0013\u0013\u0010\u0013\uffc1\b\u0006\u0015\u0015\n").intern());
                sb.append(hlVar.m742());
                sb.append(m((byte) ((ViewConfiguration.getScrollBarSize() >> 8) + 118), "\u0001\u0002\u0003\u0004\u0000\u0001\u0006\u0007\b\t\u0096", (ViewConfiguration.getPressedStateDuration() >> 16) + 11).intern());
                sb.append(cls);
                sb.append(m((byte) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 25), "\u0004\u0005\u000b\f\u008d\u008d", 6 - Color.red(0)).intern());
                m.m1031(strIntern, sb.toString());
                return null;
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<Object> m774(Class cls, Object obj, hl hlVar) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<Field> it = hq.m770().m772().m731(cls, hlVar).iterator();
            while (true) {
                if (!(it.hasNext())) {
                    break;
                }
                int i = f5734d + 125;
                f5735e = i % 128;
                if (i % 2 == 0) {
                    arrayList.add(it.next().get(obj));
                    int i2 = 93 / 0;
                } else {
                    arrayList.add(it.next().get(obj));
                }
            }
        } catch (Throwable unused) {
            String strIntern = i(115 - TextUtils.indexOf("", "", 0, 0), false, View.getDefaultSize(0, 0) + 11, (ViewConfiguration.getFadingEdgeLength() >> 16) + 12, "\uffff\u0007\u0002\u0000\u0011￣\u0006\u000b\u0001\u0002\u000f￬").intern();
            StringBuilder sb = new StringBuilder();
            sb.append(i(159 - AndroidCharacter.getMirror('0'), false, 2 - TextUtils.lastIndexOf("", '0', 0), 14 - Color.green(0), "\u000f\b\uffc1￦\u0013\u0013\u0010\u0013\uffc1\b\u0006\u0015\u0015\n").intern());
            sb.append(hlVar.m742());
            sb.append(m((byte) (TextUtils.getTrimmedLength("") + 118), "\u0001\u0002\u0003\u0004\u0000\u0001\u0006\u0007\b\t\u0096", 11 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern());
            sb.append(cls);
            sb.append(m((byte) ((Process.myPid() >> 22) + 26), "\u0004\u0005\u000b\f\u008d\u008d", View.resolveSizeAndState(0, 0, 0) + 6).intern());
            m.m1031(strIntern, sb.toString());
        }
        int i3 = f5734d + 29;
        f5735e = i3 % 128;
        int i4 = i3 % 2;
        return arrayList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m775(Class cls, String str) {
        int i = f5735e + 111;
        f5734d = i % 128;
        boolean z = i % 2 != 0;
        String strN = n(null, cls, str);
        if (z) {
            int i2 = 86 / 0;
        }
        return strN;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List<hp> m776(Object obj, hu huVar) {
        hv hvVar = new hv(huVar);
        hvVar.m816();
        h(obj, hvVar, 0, null);
        ArrayList arrayList = new ArrayList(hvVar.m808());
        int i = f5735e + 65;
        f5734d = i % 128;
        int i2 = i % 2;
        return arrayList;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m777(Object obj, JSONArray jSONArray) {
        if (jSONArray != null) {
            int i = f5735e + 47;
            f5734d = i % 128;
            int i2 = i % 2;
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                int i4 = f5734d + 59;
                f5735e = i4 % 128;
                if (i4 % 2 == 0) {
                    m778(obj, jSONArray.optString(i3));
                    throw null;
                }
                String strM778 = m778(obj, jSONArray.optString(i3));
                if ((strM778 != null ? (char) 26 : '!') == 26) {
                    int i5 = f5735e + 125;
                    f5734d = i5 % 128;
                    if (i5 % 2 == 0) {
                        return strM778;
                    }
                    throw null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m778(Object obj, String str) {
        int i = f5735e + 51;
        f5734d = i % 128;
        if (i % 2 == 0) {
            return n(obj, obj.getClass(), str);
        }
        n(obj, obj.getClass(), str);
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List<String> m779(Object obj, List<String> list, int i) {
        hv hvVar = new hv(new hu.b().m803(true).m796(true).m806(-1).m798(new a(), list, i));
        hvVar.m816();
        h(obj, hvVar, 0, null);
        ArrayList arrayList = new ArrayList(hvVar.m809());
        int i2 = f5734d + 109;
        f5735e = i2 % 128;
        int i3 = i2 % 2;
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final <T> hp<T> m780(Object obj, hr hrVar, hi hiVar, List<String> list, int i) {
        hp<T> hpVarM781 = m781(obj, new hu.b().m807(true).m797(hrVar, hiVar, list, i));
        int i2 = f5734d + 27;
        f5735e = i2 % 128;
        if ((i2 % 2 == 0 ? '!' : (char) 5) == 5) {
            return hpVarM781;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060 A[PHI: r6
      0x0060: PHI (r6v5 com.ironsource.adqualitysdk.sdk.i.hp<T>) = (r6v4 com.ironsource.adqualitysdk.sdk.i.hp<T>), (r6v12 com.ironsource.adqualitysdk.sdk.i.hp<T>) binds: [B:23:0x005e, B:14:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <T> com.json.adqualitysdk.sdk.i.hp<T> m781(java.lang.Object r19, com.json.adqualitysdk.sdk.i.hu r20) {
        /*
            Method dump skipped, instruction units count: 545
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.hs.m781(java.lang.Object, com.ironsource.adqualitysdk.sdk.i.hu):com.ironsource.adqualitysdk.sdk.i.hp");
    }
}
