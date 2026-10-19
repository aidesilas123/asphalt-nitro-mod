package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class jw {
    private static Map<a, Method> a = null;
    private static char[] b = null;
    private static char c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5943d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5944e = 1;

    static class a {
        private static int a = 33;
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Class f5945d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f5946e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<Class> f5947f;

        public a(Object obj, String str, List<Class> list) {
            if (obj instanceof Class) {
                this.f5945d = (Class) obj;
            } else {
                this.f5945d = obj.getClass();
            }
            this.f5946e = str;
            this.f5947f = list;
        }

        private static String a(int i, boolean z, int i2, int i3, String str) {
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

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null) {
                if ((a.class != obj.getClass() ? 'B' : '\"') != 'B') {
                    a aVar = (a) obj;
                    if (!this.f5945d.equals(aVar.f5945d)) {
                        int i = b + 91;
                        c = i % 128;
                        return i % 2 == 0;
                    }
                    if (!(this.f5946e.equals(aVar.f5946e))) {
                        return false;
                    }
                    boolean zEquals = this.f5947f.equals(aVar.f5947f);
                    int i2 = b + 99;
                    c = i2 % 128;
                    int i3 = i2 % 2;
                    return zEquals;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = c + 79;
            b = i % 128;
            int i2 = i % 2;
            int iHashCode = (((this.f5945d.hashCode() * 31) + this.f5946e.hashCode()) * 31) + this.f5947f.hashCode();
            int i3 = b + 77;
            c = i3 % 128;
            int i4 = i3 % 2;
            return iHashCode;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(a(((byte) KeyEvent.getModifierMetaStateMask()) + 137, false, TextUtils.indexOf("", "", 0) + 4, TextUtils.getCapsMode("", 0, 0) + 17, "\u0002\b\u0007\u0014￦\ufffe\r\u0001\b�\uffdd\ufffe\uffff\u0002\u0007\u0002\r").intern());
            sb.append(a(130 - (Process.myTid() >> 22), false, ExpandableListView.getPackedPositionGroup(0L) + 13, 13 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), "\f￮\u0001\t\u0004\u0002\u0013￢\u000b\u0000\u0012\u0012ￜ").intern());
            sb.append(this.f5945d);
            sb.append(a(Color.rgb(0, 0, 0) + 16777334, false, 14 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 15 - TextUtils.indexOf("", ""), "ￋ\u0018\ufff8\u0010\u001f\u0013\u001a\u000f\ufff9\f\u0018\u0010￨ￒￗ").intern());
            sb.append(this.f5946e);
            sb.append('\'');
            sb.append(a(TextUtils.getOffsetBefore("", 0) + 122, true, TextUtils.indexOf("", "") + 4, KeyEvent.normalizeMetaState(0) + 14, "￨\u0014ￇￓ￤\u001a\f\u001a\u001a\b\u0013￪\u000e\u0019").intern());
            sb.append(this.f5947f);
            sb.append('}');
            String string = sb.toString();
            int i = c + 33;
            b = i % 128;
            int i2 = i % 2;
            return string;
        }
    }

    static {
        f();
        a = new ConcurrentHashMap();
        int i = f5943d + 27;
        f5944e = i % 128;
        int i2 = i % 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(java.lang.Class r11, java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jw.a(java.lang.Class, java.lang.Object):boolean");
    }

    private static Method b(Object obj, String str, List<Object> list) {
        int i = f5943d + 13;
        f5944e = i % 128;
        if (i % 2 == 0) {
        }
        Method methodJ = j(obj.getClass(), str, list, false);
        int i2 = f5944e + 75;
        f5943d = i2 % 128;
        if ((i2 % 2 != 0 ? '0' : (char) 11) == 11) {
            return methodJ;
        }
        int i3 = 74 / 0;
        return methodJ;
    }

    private static List<Class> c(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = list.iterator();
        int i = f5944e + 99;
        f5943d = i % 128;
        while (true) {
            int i2 = i % 2;
            while (true) {
                if ((it.hasNext() ? '3' : (char) 16) != '3') {
                    int i3 = f5944e + 25;
                    f5943d = i3 % 128;
                    int i4 = i3 % 2;
                    return arrayList;
                }
                Object next = it.next();
                if ((next != null ? (char) 19 : ')') != ')') {
                    arrayList.add(next.getClass());
                }
            }
            arrayList.add(Object.class);
            i = f5944e + 53;
            f5943d = i % 128;
        }
    }

    private static boolean d(Method method, List<Object> list) {
        boolean zE;
        int i = f5944e + 53;
        f5943d = i % 128;
        char c2 = i % 2 != 0 ? '\"' : 'D';
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (c2 != '\"') {
            zE = e(parameterTypes, list);
        } else {
            zE = e(parameterTypes, list);
            int i2 = 49 / 0;
        }
        int i3 = f5943d + 67;
        f5944e = i3 % 128;
        if ((i3 % 2 == 0 ? '[' : 'D') != '[') {
            return zE;
        }
        throw null;
    }

    private static boolean e(Class[] clsArr, List<Object> list) {
        int i = f5944e;
        int i2 = i + 85;
        f5943d = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 111;
        f5943d = i4 % 128;
        int i5 = i4 % 2;
        for (int i6 = 0; i6 < clsArr.length; i6++) {
            Object obj = list.get(i6);
            if ((obj == null ? 'O' : 'U') != 'O' || Object.class.isAssignableFrom(clsArr[i6])) {
                if (obj != null) {
                    int i7 = f5944e + 101;
                    f5943d = i7 % 128;
                    if (i7 % 2 != 0) {
                        int i8 = 49 / 0;
                        if (!a(clsArr[i6], obj)) {
                        }
                    } else if (!a(clsArr[i6], obj)) {
                    }
                }
            }
            int i9 = f5944e + 121;
            f5943d = i9 % 128;
            if (!(i9 % 2 != 0)) {
                return false;
            }
            throw null;
        }
        return true;
    }

    static void f() {
        c = (char) 6;
        b = new char[]{'R', 'e', 'f', 'l', 'c', 't', 'i', 'o', 'n', 'U', 's', 'C', 'a', ' ', 'u', 'd', 'E', 'r', 'g', 'h', 'm', 'N', '\'', '.', 'q', 'y', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z', '[', '\\', ']'};
    }

    private static boolean g(Constructor constructor, List<Object> list) {
        int i = f5944e + 77;
        f5943d = i % 128;
        int i2 = i % 2;
        boolean zE = e(constructor.getParameterTypes(), list);
        int i3 = f5943d + 81;
        f5944e = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return zE;
    }

    private static String h(byte b2, String str, int i) {
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

    private static Constructor i(Class cls, List<Object> list) {
        Constructor<?>[] constructors = cls.getConstructors();
        int length = constructors.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                int i2 = f5943d + 13;
                f5944e = i2 % 128;
                if (i2 % 2 != 0) {
                    return null;
                }
                throw null;
            }
            Constructor<?> constructor = constructors[i];
            if ((constructor.getParameterTypes().length == list.size() ? 'c' : 'Z') != 'Z') {
                if ((g(constructor, list) ? '\r' : '_') != '_') {
                    int i3 = f5944e + 79;
                    f5943d = i3 % 128;
                    int i4 = i3 % 2;
                    return constructor;
                }
            }
            i++;
        }
    }

    private static Method j(Class cls, String str, List<Object> list, boolean z) {
        Method[] methods;
        int length;
        int i;
        int i2 = f5944e + 31;
        f5943d = i2 % 128;
        if ((i2 % 2 != 0 ? '/' : (char) 26) != 26) {
            methods = cls.getMethods();
            length = methods.length;
            i = 1;
        } else {
            methods = cls.getMethods();
            length = methods.length;
            i = 0;
        }
        while (true) {
            if (i >= length) {
                return null;
            }
            Method method = methods[i];
            if (method.getName().equals(str)) {
                if ((method.getParameterTypes().length == list.size() ? 'J' : (char) 28) == 'J') {
                    if ((Modifier.isStatic(method.getModifiers()) == z ? 'I' : '_') != 'I') {
                        continue;
                    } else {
                        int i3 = f5943d + 27;
                        f5944e = i3 % 128;
                        int i4 = i3 % 2;
                        if (d(method, list)) {
                            return method;
                        }
                    }
                } else {
                    continue;
                }
            }
            i++;
        }
    }

    private static Class[] k(List<Class> list) {
        int i = f5943d + 77;
        f5944e = i % 128;
        int i2 = i % 2;
        Class[] clsArr = new Class[list.size()];
        int i3 = 0;
        while (true) {
            if (!(i3 < list.size())) {
                return clsArr;
            }
            int i4 = f5944e + 57;
            f5943d = i4 % 128;
            if (i4 % 2 != 0) {
                clsArr[i3] = list.get(i3);
                i3 += 61;
            } else {
                clsArr[i3] = list.get(i3);
                i3++;
            }
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Method m967(Object obj, String str, List<Object> list) {
        Method methodB;
        a aVar = new a(obj, str, c(list));
        Method method = a.get(aVar);
        if (method != null) {
            if ((e(method.getParameterTypes(), list) ? ' ' : '-') != '-') {
                int i = f5943d + 121;
                f5944e = i % 128;
                if (i % 2 != 0) {
                    return method;
                }
                throw null;
            }
            String strIntern = h((byte) (42 - (Process.myTid() >> 22)), "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\b\t\u000b\u0003\t\u0000\u009d", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 15).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(h((byte) (103 - View.getDefaultSize(0, 0)), "\u0011\f\r\u000b\f\u000e\u0013\u0000ÛÛ\u0007\t\u0013\f\u0000\u0010\u0001\u0016\u0003\r\u000e\u0013\u0002\u0000\u0019\r\u0010\u000e", View.resolveSizeAndState(0, 0, 0) + 28).intern());
            sb.append(aVar);
            cn.m519(strIntern, sb.toString(), null);
            int i2 = f5944e + 103;
            f5943d = i2 % 128;
            int i3 = i2 % 2;
        }
        if ((obj instanceof Class ? 'P' : '!') != '!') {
            int i4 = f5944e + 63;
            f5943d = i4 % 128;
            int i5 = i4 % 2;
            methodB = j((Class) obj, str, list, true);
            if (methodB == null) {
                methodB = b(Class.class, str, list);
            }
        } else {
            methodB = b(obj, str, list);
        }
        if (methodB != null) {
            a.put(aVar, methodB);
            int i6 = f5943d + 19;
            f5944e = i6 % 128;
            int i7 = i6 % 2;
        }
        return methodB;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Field[] m968(Field[] fieldArr, Field[] fieldArr2) {
        int i = f5943d + 99;
        f5944e = i % 128;
        if ((i % 2 == 0 ? ' ' : 'D') != 'D') {
            int length = fieldArr.length;
            int length2 = fieldArr2.length;
            Field[] fieldArr3 = new Field[length << length2];
            System.arraycopy(fieldArr, 1, fieldArr3, 0, length);
            System.arraycopy(fieldArr2, 1, fieldArr3, length, length2);
            return fieldArr3;
        }
        int length3 = fieldArr.length;
        int length4 = fieldArr2.length;
        Field[] fieldArr4 = new Field[length3 + length4];
        System.arraycopy(fieldArr, 0, fieldArr4, 0, length3);
        System.arraycopy(fieldArr2, 0, fieldArr4, length3, length4);
        return fieldArr4;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Method[] m969(Method[] methodArr, Method[] methodArr2) {
        Method[] methodArr3;
        int i = f5944e + 79;
        f5943d = i % 128;
        if ((i % 2 != 0 ? (char) 3 : '4') != 3) {
            int length = methodArr.length;
            int length2 = methodArr2.length;
            methodArr3 = new Method[length + length2];
            System.arraycopy(methodArr, 0, methodArr3, 0, length);
            System.arraycopy(methodArr2, 0, methodArr3, length, length2);
        } else {
            int length3 = methodArr.length;
            int length4 = methodArr2.length;
            methodArr3 = new Method[length3 >>> length4];
            System.arraycopy(methodArr, 1, methodArr3, 0, length3);
            System.arraycopy(methodArr2, 1, methodArr3, length3, length4);
        }
        int i2 = f5943d + 3;
        f5944e = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return methodArr3;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m970(Class cls, List<Object> list) throws Exception {
        int i = f5943d + 23;
        f5944e = i % 128;
        int i2 = i % 2;
        Object objNewInstance = i(cls, list).newInstance(list.toArray());
        int i3 = f5943d + 125;
        f5944e = i3 % 128;
        int i4 = i3 % 2;
        return objNewInstance;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Class m971(String str, boolean z) {
        int i = f5943d + 101;
        f5944e = i % 128;
        int i2 = i % 2;
        try {
            Class<?> cls = Class.forName(str);
            int i3 = f5943d + 55;
            f5944e = i3 % 128;
            int i4 = i3 % 2;
            return cls;
        } catch (Throwable th) {
            if (z) {
                String strIntern = h((byte) (42 - View.MeasureSpec.getSize(0)), "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\b\t\u000b\u0003\t\u0000\u009d", TextUtils.indexOf("", "") + 15).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(h((byte) (105 - ((byte) KeyEvent.getModifierMetaStateMask())), "\t\u0005\u0010\u0006\u0007\u0010", 6 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern());
                sb.append(str);
                sb.append(h((byte) (26 - (ViewConfiguration.getFadingEdgeLength() >> 16)), "\u000e\u0007\u000b\u0001\u000e\u0001\b\r\t\u000e", 9 - ((byte) KeyEvent.getModifierMetaStateMask())).intern());
                cn.m519(strIntern, sb.toString(), th);
            }
            int i5 = f5943d + 123;
            f5944e = i5 % 128;
            if (i5 % 2 != 0) {
                return null;
            }
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0080  */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m972(java.lang.Class r11, java.util.List<java.lang.String> r12) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jw.m972(java.lang.Class, java.util.List):boolean");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m973(Class cls, List<Object> list, Class... clsArr) throws Exception {
        int i = f5943d + 103;
        f5944e = i % 128;
        int i2 = i % 2;
        Object objNewInstance = cls.getConstructor(clsArr).newInstance(list.toArray());
        int i3 = f5943d + 59;
        f5944e = i3 % 128;
        int i4 = i3 % 2;
        return objNewInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.reflect.Method] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m974(Object obj, String str, List<Class> list) {
        int i = f5943d + 71;
        f5944e = i % 128;
        try {
            if (!(i % 2 != 0)) {
                k(list);
                boolean z = obj instanceof Class;
                throw null;
            }
            Class<?>[] clsArrK = k(list);
            if (!(obj instanceof Class)) {
                return obj.getClass().getMethod(str, clsArrK);
            }
            try {
                obj = ((Class) obj).getMethod(str, clsArrK);
                int i2 = f5944e + 63;
                f5943d = i2 % 128;
                int i3 = i2 % 2;
                return obj;
            } catch (NoSuchMethodException unused) {
                return Class.class.getMethod(str, clsArrK);
            }
        } catch (NoSuchMethodException e2) {
            String strIntern = h((byte) (42 - TextUtils.getTrimmedLength("")), "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\b\t\u000b\u0003\t\u0000\u009d", (ViewConfiguration.getEdgeSlop() >> 16) + 15).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(h((byte) ((-16777104) - Color.rgb(0, 0, 0)), "\u0013\t\u0010\u0013", (ViewConfiguration.getScrollBarSize() >> 8) + 4).intern());
            sb.append(str);
            sb.append(h((byte) (120 - View.MeasureSpec.makeMeasureSpec(0, 0)), "\u0013\u0010\u0013\u0002\u0001\u0017\t\r\u000e\u0001\b\r\t\u000e\u000e\u0001\u000b\r\u0098", TextUtils.indexOf("", "", 0) + 19).intern());
            sb.append(obj);
            cn.m519(strIntern, sb.toString(), e2);
            return null;
        }
    }
}
