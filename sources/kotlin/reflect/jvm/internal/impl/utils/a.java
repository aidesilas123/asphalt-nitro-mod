package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: Jsr305State.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final a b;
    public static final a c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f9897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReportLevel f9898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReportLevel f9899g;
    private final Map<String, ReportLevel> h;
    private final boolean i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0557a f9896d = new C0557a(null);
    public static final a a = new a(ReportLevel.WARN, null, MapsKt__MapsKt.emptyMap(), false, 8, null);

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.utils.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Jsr305State.kt */
    public static final class C0557a {
        private C0557a() {
        }

        public /* synthetic */ C0557a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Jsr305State.kt */
    static final class b extends Lambda implements Function0<String[]> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String[] invoke() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(a.this.c().e());
            ReportLevel reportLevelD = a.this.d();
            if (reportLevelD != null) {
                arrayList.add("under-migration:" + reportLevelD.e());
            }
            for (Map.Entry<String, ReportLevel> entry : a.this.e().entrySet()) {
                arrayList.add('@' + entry.getKey() + ':' + entry.getValue().e());
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    static {
        ReportLevel reportLevel = ReportLevel.IGNORE;
        b = new a(reportLevel, reportLevel, MapsKt__MapsKt.emptyMap(), false, 8, null);
        ReportLevel reportLevel2 = ReportLevel.STRICT;
        c = new a(reportLevel2, reportLevel2, MapsKt__MapsKt.emptyMap(), false, 8, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(ReportLevel global, ReportLevel reportLevel, Map<String, ? extends ReportLevel> user, boolean z) {
        Intrinsics.checkParameterIsNotNull(global, "global");
        Intrinsics.checkParameterIsNotNull(user, "user");
        this.f9898f = global;
        this.f9899g = reportLevel;
        this.h = user;
        this.i = z;
        this.f9897e = LazyKt__LazyJVMKt.lazy(new b());
    }

    public /* synthetic */ a(ReportLevel reportLevel, ReportLevel reportLevel2, Map map, boolean z, int i, n nVar) {
        this(reportLevel, reportLevel2, map, (i & 8) != 0 ? true : z);
    }

    public final boolean a() {
        return this == b;
    }

    public final boolean b() {
        return this.i;
    }

    public final ReportLevel c() {
        return this.f9898f;
    }

    public final ReportLevel d() {
        return this.f9899g;
    }

    public final Map<String, ReportLevel> e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.f9898f, aVar.f9898f) && Intrinsics.areEqual(this.f9899g, aVar.f9899g) && Intrinsics.areEqual(this.h, aVar.h) && this.i == aVar.i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        ReportLevel reportLevel = this.f9898f;
        int iHashCode = (reportLevel != null ? reportLevel.hashCode() : 0) * 31;
        ReportLevel reportLevel2 = this.f9899g;
        int iHashCode2 = (iHashCode + (reportLevel2 != null ? reportLevel2.hashCode() : 0)) * 31;
        Map<String, ReportLevel> map = this.h;
        int iHashCode3 = (iHashCode2 + (map != null ? map.hashCode() : 0)) * 31;
        boolean z = this.i;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode3 + r1;
    }

    public String toString() {
        return "Jsr305State(global=" + this.f9898f + ", migration=" + this.f9899g + ", user=" + this.h + ", enableCompatqualCheckerFrameworkAnnotations=" + this.i + ")";
    }
}
