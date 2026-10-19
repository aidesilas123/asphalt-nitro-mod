package com.tapjoy.internal;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'l' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class l1 {
    public static final l1 a;
    public static final l1 b;
    public static final l1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l1 f7933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final l1 f7934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final l1 f7935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final l1 f7936g;
    public static final l1 h;
    public static final l1 i;
    public static final l1 j;
    public static final l1 k;
    public static final l1 l;
    public static final l1 m;
    public static final l1 n;
    public static final l1 o;
    public static final /* synthetic */ l1[] p;
    public final l1 q;
    public final l1 r;

    /* JADX INFO: Fake field, exist only in values array */
    l1 EF6;

    static {
        l1 l1Var = new l1(0, "UNSPECIFIED");
        a = l1Var;
        l1 l1Var2 = new l1(1, "PORTRAIT");
        b = l1Var2;
        l1 l1Var3 = new l1(2, "LANDSCAPE");
        c = l1Var3;
        l1 l1Var4 = new l1(3, "SQUARE");
        l1 l1Var5 = new l1("NATURAL_PORTRAIT", 4, l1Var2);
        f7933d = l1Var5;
        l1 l1Var6 = new l1("RIGHT_LANDSCAPE", 5, l1Var3, l1Var5);
        f7934e = l1Var6;
        l1 l1Var7 = new l1("REVERSE_PORTRAIT", 6, l1Var2, l1Var5);
        f7935f = l1Var7;
        l1 l1Var8 = new l1("LEFT_LANDSCAPE", 7, l1Var3, l1Var5);
        f7936g = l1Var8;
        l1 l1Var9 = new l1("NATURAL_LANDSCAPE", 8, l1Var3);
        h = l1Var9;
        l1 l1Var10 = new l1("RIGHT_PORTRAIT", 9, l1Var2, l1Var9);
        i = l1Var10;
        l1 l1Var11 = new l1("REVERSE_LANDSCAPE", 10, l1Var3, l1Var9);
        j = l1Var11;
        l1 l1Var12 = new l1("LEFT_PORTRAIT", 11, l1Var2, l1Var9);
        k = l1Var12;
        l1 l1Var13 = new l1("NATURAL_SQUARE", 12, l1Var4);
        l = l1Var13;
        l1 l1Var14 = new l1("RIGHT_SQUARE", 13, l1Var4, l1Var13);
        m = l1Var14;
        l1 l1Var15 = new l1("REVERSE_SQUARE", 14, l1Var4, l1Var13);
        n = l1Var15;
        l1 l1Var16 = new l1("LEFT_SQUARE", 15, l1Var4, l1Var13);
        o = l1Var16;
        p = new l1[]{l1Var, l1Var2, l1Var3, l1Var4, l1Var5, l1Var6, l1Var7, l1Var8, l1Var9, l1Var10, l1Var11, l1Var12, l1Var13, l1Var14, l1Var15, l1Var16};
    }

    public l1(int i2, String str) {
        this.q = this;
        this.r = null;
    }

    public l1(String str, int i2, l1 l1Var) {
        this.q = l1Var;
        this.r = this;
    }

    public l1(String str, int i2, l1 l1Var, l1 l1Var2) {
        this.q = l1Var;
        this.r = l1Var2;
    }

    public static l1 a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int rotation = defaultDisplay.getRotation();
        Point point = new Point();
        k1.a(defaultDisplay, point);
        int i2 = point.x;
        int i3 = point.y;
        if (i2 < i3) {
            int i4 = rotation & 3;
            return i4 != 1 ? i4 != 2 ? i4 != 3 ? f7933d : k : f7935f : i;
        }
        if (i2 > i3) {
            int i5 = rotation & 3;
            return i5 != 1 ? i5 != 2 ? i5 != 3 ? h : f7936g : j : f7934e;
        }
        int i6 = rotation & 3;
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? l : o : n : m;
    }

    public static l1 valueOf(String str) {
        return (l1) Enum.valueOf(l1.class, str);
    }

    public static l1[] values() {
        return (l1[]) p.clone();
    }
}
