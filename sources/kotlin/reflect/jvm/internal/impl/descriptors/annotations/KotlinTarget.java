package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.n;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'b' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: KotlinTarget.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinTarget {
    public static final KotlinTarget A;
    public static final KotlinTarget B;
    public static final KotlinTarget C;
    public static final KotlinTarget D;
    public static final KotlinTarget E;
    public static final KotlinTarget F;
    public static final KotlinTarget G;
    public static final KotlinTarget H;
    public static final KotlinTarget I;
    public static final KotlinTarget J;
    public static final KotlinTarget K;
    public static final KotlinTarget L;
    public static final KotlinTarget M;
    public static final KotlinTarget N;
    public static final KotlinTarget O;
    private static final /* synthetic */ KotlinTarget[] P;
    private static final HashMap<String, KotlinTarget> Q;
    private static final Set<KotlinTarget> R;
    private static final Set<KotlinTarget> S;
    private static final Map<AnnotationUseSiteTarget, KotlinTarget> T;
    public static final a U;
    public static final KotlinTarget a;
    public static final KotlinTarget b;
    public static final KotlinTarget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final KotlinTarget f9111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final KotlinTarget f9112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final KotlinTarget f9113f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final KotlinTarget f9114g;
    public static final KotlinTarget h;
    public static final KotlinTarget i;
    public static final KotlinTarget j;
    public static final KotlinTarget k;
    public static final KotlinTarget l;
    public static final KotlinTarget m;
    public static final KotlinTarget n;
    public static final KotlinTarget o;
    public static final KotlinTarget p;
    public static final KotlinTarget q;
    public static final KotlinTarget r;
    public static final KotlinTarget s;
    public static final KotlinTarget t;
    public static final KotlinTarget u;
    public static final KotlinTarget v;
    public static final KotlinTarget w;
    public static final KotlinTarget x;
    public static final KotlinTarget y;
    public static final KotlinTarget z;
    private final String V;
    private final boolean W;

    /* JADX INFO: compiled from: KotlinTarget.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    static {
        KotlinTarget kotlinTarget = new KotlinTarget("CLASS", 0, "class", false, 2, null);
        a = kotlinTarget;
        n nVar = null;
        KotlinTarget kotlinTarget2 = new KotlinTarget("ANNOTATION_CLASS", 1, "annotation class", false, 2, nVar);
        b = kotlinTarget2;
        KotlinTarget kotlinTarget3 = new KotlinTarget("TYPE_PARAMETER", 2, "type parameter", false);
        c = kotlinTarget3;
        n nVar2 = null;
        KotlinTarget kotlinTarget4 = new KotlinTarget("PROPERTY", 3, "property", false, 2, nVar2);
        f9111d = kotlinTarget4;
        KotlinTarget kotlinTarget5 = new KotlinTarget("FIELD", 4, "field", false, 2, null);
        f9112e = kotlinTarget5;
        KotlinTarget kotlinTarget6 = new KotlinTarget("LOCAL_VARIABLE", 5, "local variable", false, 2, nVar2);
        f9113f = kotlinTarget6;
        KotlinTarget kotlinTarget7 = new KotlinTarget("VALUE_PARAMETER", 6, "value parameter", false, 2, null);
        f9114g = kotlinTarget7;
        KotlinTarget kotlinTarget8 = new KotlinTarget("CONSTRUCTOR", 7, "constructor", false, 2, nVar);
        h = kotlinTarget8;
        KotlinTarget kotlinTarget9 = new KotlinTarget("FUNCTION", 8, "function", false, 2, null);
        i = kotlinTarget9;
        KotlinTarget kotlinTarget10 = new KotlinTarget("PROPERTY_GETTER", 9, "getter", false, 2, null);
        j = kotlinTarget10;
        KotlinTarget kotlinTarget11 = new KotlinTarget("PROPERTY_SETTER", 10, "setter", false, 2, null);
        k = kotlinTarget11;
        KotlinTarget kotlinTarget12 = new KotlinTarget("TYPE", 11, "type usage", false);
        l = kotlinTarget12;
        KotlinTarget kotlinTarget13 = new KotlinTarget("EXPRESSION", 12, "expression", false);
        m = kotlinTarget13;
        KotlinTarget kotlinTarget14 = new KotlinTarget("FILE", 13, "file", false);
        n = kotlinTarget14;
        KotlinTarget kotlinTarget15 = new KotlinTarget("TYPEALIAS", 14, "typealias", false);
        o = kotlinTarget15;
        KotlinTarget kotlinTarget16 = new KotlinTarget("TYPE_PROJECTION", 15, "type projection", false);
        p = kotlinTarget16;
        KotlinTarget kotlinTarget17 = new KotlinTarget("STAR_PROJECTION", 16, "star projection", false);
        q = kotlinTarget17;
        KotlinTarget kotlinTarget18 = new KotlinTarget("PROPERTY_PARAMETER", 17, "property constructor parameter", false);
        r = kotlinTarget18;
        KotlinTarget kotlinTarget19 = new KotlinTarget("CLASS_ONLY", 18, "class", false);
        s = kotlinTarget19;
        KotlinTarget kotlinTarget20 = new KotlinTarget("OBJECT", 19, "object", false);
        t = kotlinTarget20;
        KotlinTarget kotlinTarget21 = new KotlinTarget("COMPANION_OBJECT", 20, "companion object", false);
        u = kotlinTarget21;
        KotlinTarget kotlinTarget22 = new KotlinTarget("INTERFACE", 21, "interface", false);
        v = kotlinTarget22;
        KotlinTarget kotlinTarget23 = new KotlinTarget("ENUM_CLASS", 22, "enum class", false);
        w = kotlinTarget23;
        KotlinTarget kotlinTarget24 = new KotlinTarget("ENUM_ENTRY", 23, "enum entry", false);
        x = kotlinTarget24;
        KotlinTarget kotlinTarget25 = new KotlinTarget("LOCAL_CLASS", 24, "local class", false);
        y = kotlinTarget25;
        KotlinTarget kotlinTarget26 = new KotlinTarget("LOCAL_FUNCTION", 25, "local function", false);
        z = kotlinTarget26;
        KotlinTarget kotlinTarget27 = new KotlinTarget("MEMBER_FUNCTION", 26, "member function", false);
        A = kotlinTarget27;
        KotlinTarget kotlinTarget28 = new KotlinTarget("TOP_LEVEL_FUNCTION", 27, "top level function", false);
        B = kotlinTarget28;
        KotlinTarget kotlinTarget29 = new KotlinTarget("MEMBER_PROPERTY", 28, "member property", false);
        C = kotlinTarget29;
        KotlinTarget kotlinTarget30 = new KotlinTarget("MEMBER_PROPERTY_WITH_BACKING_FIELD", 29, "member property with backing field", false);
        D = kotlinTarget30;
        KotlinTarget kotlinTarget31 = new KotlinTarget("MEMBER_PROPERTY_WITH_DELEGATE", 30, "member property with delegate", false);
        E = kotlinTarget31;
        KotlinTarget kotlinTarget32 = new KotlinTarget("MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE", 31, "member property without backing field or delegate", false);
        F = kotlinTarget32;
        KotlinTarget kotlinTarget33 = new KotlinTarget("TOP_LEVEL_PROPERTY", 32, "top level property", false);
        G = kotlinTarget33;
        KotlinTarget kotlinTarget34 = new KotlinTarget("TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD", 33, "top level property with backing field", false);
        H = kotlinTarget34;
        KotlinTarget kotlinTarget35 = new KotlinTarget("TOP_LEVEL_PROPERTY_WITH_DELEGATE", 34, "top level property with delegate", false);
        I = kotlinTarget35;
        KotlinTarget kotlinTarget36 = new KotlinTarget("TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE", 35, "top level property without backing field or delegate", false);
        J = kotlinTarget36;
        KotlinTarget kotlinTarget37 = new KotlinTarget("INITIALIZER", 36, "initializer", false);
        K = kotlinTarget37;
        KotlinTarget kotlinTarget38 = new KotlinTarget("DESTRUCTURING_DECLARATION", 37, "destructuring declaration", false);
        L = kotlinTarget38;
        KotlinTarget kotlinTarget39 = new KotlinTarget("LAMBDA_EXPRESSION", 38, "lambda expression", false);
        M = kotlinTarget39;
        KotlinTarget kotlinTarget40 = new KotlinTarget("ANONYMOUS_FUNCTION", 39, "anonymous function", false);
        N = kotlinTarget40;
        KotlinTarget kotlinTarget41 = new KotlinTarget("OBJECT_LITERAL", 40, "object literal", false);
        O = kotlinTarget41;
        P = new KotlinTarget[]{kotlinTarget, kotlinTarget2, kotlinTarget3, kotlinTarget4, kotlinTarget5, kotlinTarget6, kotlinTarget7, kotlinTarget8, kotlinTarget9, kotlinTarget10, kotlinTarget11, kotlinTarget12, kotlinTarget13, kotlinTarget14, kotlinTarget15, kotlinTarget16, kotlinTarget17, kotlinTarget18, kotlinTarget19, kotlinTarget20, kotlinTarget21, kotlinTarget22, kotlinTarget23, kotlinTarget24, kotlinTarget25, kotlinTarget26, kotlinTarget27, kotlinTarget28, kotlinTarget29, kotlinTarget30, kotlinTarget31, kotlinTarget32, kotlinTarget33, kotlinTarget34, kotlinTarget35, kotlinTarget36, kotlinTarget37, kotlinTarget38, kotlinTarget39, kotlinTarget40, kotlinTarget41};
        U = new a(null);
        Q = new HashMap<>();
        for (KotlinTarget kotlinTarget42 : values()) {
            Q.put(kotlinTarget42.name(), kotlinTarget42);
        }
        KotlinTarget[] kotlinTargetArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (KotlinTarget kotlinTarget43 : kotlinTargetArrValues) {
            if (kotlinTarget43.W) {
                arrayList.add(kotlinTarget43);
            }
        }
        R = CollectionsKt___CollectionsKt.toSet(arrayList);
        S = ArraysKt___ArraysKt.toSet(values());
        AnnotationUseSiteTarget annotationUseSiteTarget = AnnotationUseSiteTarget.CONSTRUCTOR_PARAMETER;
        KotlinTarget kotlinTarget44 = f9114g;
        AnnotationUseSiteTarget annotationUseSiteTarget2 = AnnotationUseSiteTarget.FIELD;
        KotlinTarget kotlinTarget45 = f9112e;
        T = MapsKt__MapsKt.mapOf(TuplesKt.to(annotationUseSiteTarget, kotlinTarget44), TuplesKt.to(annotationUseSiteTarget2, kotlinTarget45), TuplesKt.to(AnnotationUseSiteTarget.PROPERTY, f9111d), TuplesKt.to(AnnotationUseSiteTarget.FILE, n), TuplesKt.to(AnnotationUseSiteTarget.PROPERTY_GETTER, j), TuplesKt.to(AnnotationUseSiteTarget.PROPERTY_SETTER, k), TuplesKt.to(AnnotationUseSiteTarget.RECEIVER, kotlinTarget44), TuplesKt.to(AnnotationUseSiteTarget.SETTER_PARAMETER, kotlinTarget44), TuplesKt.to(AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD, kotlinTarget45));
    }

    private KotlinTarget(String str, int i2, String str2, boolean z2) {
        this.V = str2;
        this.W = z2;
    }

    /* synthetic */ KotlinTarget(String str, int i2, String str2, boolean z2, int i3, n nVar) {
        this(str, i2, str2, (i3 & 2) != 0 ? true : z2);
    }

    public static KotlinTarget valueOf(String str) {
        return (KotlinTarget) Enum.valueOf(KotlinTarget.class, str);
    }

    public static KotlinTarget[] values() {
        return (KotlinTarget[]) P.clone();
    }
}
