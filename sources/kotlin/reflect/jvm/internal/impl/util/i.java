package kotlin.reflect.jvm.internal.impl.util;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;

/* JADX INFO: compiled from: OperatorNameConventions.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class i {
    public static final Name A;
    public static final Name B;
    public static final Name C;
    public static final Name D;
    public static final Name E;
    public static final Name F;
    public static final Name G;
    public static final Set<Name> H;
    public static final Set<Name> I;
    public static final Set<Name> J;
    public static final Set<Name> K;
    public static final Set<Name> L;
    public static final i M = new i();
    public static final Name a;
    public static final Name b;
    public static final Name c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Name f9883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Name f9884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Name f9885f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Name f9886g;
    public static final Name h;
    public static final Name i;
    public static final Name j;
    public static final Name k;
    public static final Name l;
    public static final Regex m;
    public static final Name n;
    public static final Name o;
    public static final Name p;
    public static final Name q;
    public static final Name r;
    public static final Name s;
    public static final Name t;
    public static final Name u;
    public static final Name v;
    public static final Name w;
    public static final Name x;
    public static final Name y;
    public static final Name z;

    static {
        Name nameIdentifier = Name.identifier("getValue");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"getValue\")");
        a = nameIdentifier;
        Name nameIdentifier2 = Name.identifier("setValue");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier2, "Name.identifier(\"setValue\")");
        b = nameIdentifier2;
        Name nameIdentifier3 = Name.identifier("provideDelegate");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier3, "Name.identifier(\"provideDelegate\")");
        c = nameIdentifier3;
        Name nameIdentifier4 = Name.identifier("equals");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier4, "Name.identifier(\"equals\")");
        f9883d = nameIdentifier4;
        Name nameIdentifier5 = Name.identifier("compareTo");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier5, "Name.identifier(\"compareTo\")");
        f9884e = nameIdentifier5;
        Name nameIdentifier6 = Name.identifier("contains");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier6, "Name.identifier(\"contains\")");
        f9885f = nameIdentifier6;
        Name nameIdentifier7 = Name.identifier("invoke");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier7, "Name.identifier(\"invoke\")");
        f9886g = nameIdentifier7;
        Name nameIdentifier8 = Name.identifier("iterator");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier8, "Name.identifier(\"iterator\")");
        h = nameIdentifier8;
        Name nameIdentifier9 = Name.identifier("get");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier9, "Name.identifier(\"get\")");
        i = nameIdentifier9;
        Name nameIdentifier10 = Name.identifier("set");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier10, "Name.identifier(\"set\")");
        j = nameIdentifier10;
        Name nameIdentifier11 = Name.identifier("next");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier11, "Name.identifier(\"next\")");
        k = nameIdentifier11;
        Name nameIdentifier12 = Name.identifier("hasNext");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier12, "Name.identifier(\"hasNext\")");
        l = nameIdentifier12;
        m = new Regex("component\\d+");
        Name nameIdentifier13 = Name.identifier("and");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier13, "Name.identifier(\"and\")");
        n = nameIdentifier13;
        Name nameIdentifier14 = Name.identifier("or");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier14, "Name.identifier(\"or\")");
        o = nameIdentifier14;
        Name nameIdentifier15 = Name.identifier("inc");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier15, "Name.identifier(\"inc\")");
        p = nameIdentifier15;
        Name nameIdentifier16 = Name.identifier("dec");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier16, "Name.identifier(\"dec\")");
        q = nameIdentifier16;
        Name nameIdentifier17 = Name.identifier("plus");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier17, "Name.identifier(\"plus\")");
        r = nameIdentifier17;
        Name nameIdentifier18 = Name.identifier("minus");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier18, "Name.identifier(\"minus\")");
        s = nameIdentifier18;
        Name nameIdentifier19 = Name.identifier("not");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier19, "Name.identifier(\"not\")");
        t = nameIdentifier19;
        Name nameIdentifier20 = Name.identifier("unaryMinus");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier20, "Name.identifier(\"unaryMinus\")");
        u = nameIdentifier20;
        Name nameIdentifier21 = Name.identifier("unaryPlus");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier21, "Name.identifier(\"unaryPlus\")");
        v = nameIdentifier21;
        Name nameIdentifier22 = Name.identifier("times");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier22, "Name.identifier(\"times\")");
        w = nameIdentifier22;
        Name nameIdentifier23 = Name.identifier(TtmlNode.TAG_DIV);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier23, "Name.identifier(\"div\")");
        x = nameIdentifier23;
        Name nameIdentifier24 = Name.identifier("mod");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier24, "Name.identifier(\"mod\")");
        y = nameIdentifier24;
        Name nameIdentifier25 = Name.identifier("rem");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier25, "Name.identifier(\"rem\")");
        z = nameIdentifier25;
        Name nameIdentifier26 = Name.identifier("rangeTo");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier26, "Name.identifier(\"rangeTo\")");
        A = nameIdentifier26;
        Name nameIdentifier27 = Name.identifier("timesAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier27, "Name.identifier(\"timesAssign\")");
        B = nameIdentifier27;
        Name nameIdentifier28 = Name.identifier("divAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier28, "Name.identifier(\"divAssign\")");
        C = nameIdentifier28;
        Name nameIdentifier29 = Name.identifier("modAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier29, "Name.identifier(\"modAssign\")");
        D = nameIdentifier29;
        Name nameIdentifier30 = Name.identifier("remAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier30, "Name.identifier(\"remAssign\")");
        E = nameIdentifier30;
        Name nameIdentifier31 = Name.identifier("plusAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier31, "Name.identifier(\"plusAssign\")");
        F = nameIdentifier31;
        Name nameIdentifier32 = Name.identifier("minusAssign");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier32, "Name.identifier(\"minusAssign\")");
        G = nameIdentifier32;
        H = SetsKt__SetsKt.setOf((Object[]) new Name[]{nameIdentifier15, nameIdentifier16, nameIdentifier21, nameIdentifier20, nameIdentifier19});
        I = SetsKt__SetsKt.setOf((Object[]) new Name[]{nameIdentifier21, nameIdentifier20, nameIdentifier19});
        J = SetsKt__SetsKt.setOf((Object[]) new Name[]{nameIdentifier22, nameIdentifier17, nameIdentifier18, nameIdentifier23, nameIdentifier24, nameIdentifier25, nameIdentifier26});
        K = SetsKt__SetsKt.setOf((Object[]) new Name[]{nameIdentifier27, nameIdentifier28, nameIdentifier29, nameIdentifier30, nameIdentifier31, nameIdentifier32});
        L = SetsKt__SetsKt.setOf((Object[]) new Name[]{nameIdentifier, nameIdentifier2, nameIdentifier3});
    }

    private i() {
    }
}
