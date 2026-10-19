package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.DeprecationLevel;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: compiled from: VersionRequirement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g {
    public static final a a = new a(null);
    private final b b;
    private final ProtoBuf$VersionRequirement.VersionKind c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DeprecationLevel f9626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f9627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f9628f;

    /* JADX INFO: compiled from: VersionRequirement.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final List<g> a(j proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, VersionRequirementTable table) {
            List<Integer> ids;
            Intrinsics.checkParameterIsNotNull(proto, "proto");
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(table, "table");
            if (proto instanceof ProtoBuf$Class) {
                ids = ((ProtoBuf$Class) proto).B0();
            } else if (proto instanceof ProtoBuf$Constructor) {
                ids = ((ProtoBuf$Constructor) proto).H();
            } else if (proto instanceof ProtoBuf$Function) {
                ids = ((ProtoBuf$Function) proto).c0();
            } else if (proto instanceof ProtoBuf$Property) {
                ids = ((ProtoBuf$Property) proto).Z();
            } else {
                if (!(proto instanceof ProtoBuf$TypeAlias)) {
                    throw new IllegalStateException("Unexpected declaration: " + proto.getClass());
                }
                ids = ((ProtoBuf$TypeAlias) proto).W();
            }
            Intrinsics.checkExpressionValueIsNotNull(ids, "ids");
            ArrayList arrayList = new ArrayList();
            for (Integer id : ids) {
                a aVar = g.a;
                Intrinsics.checkExpressionValueIsNotNull(id, "id");
                g gVarB = aVar.b(id.intValue(), nameResolver, table);
                if (gVarB != null) {
                    arrayList.add(gVarB);
                }
            }
            return arrayList;
        }

        public final g b(int i, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, VersionRequirementTable table) {
            DeprecationLevel deprecationLevel;
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(table, "table");
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementA = table.a(i);
            if (protoBuf$VersionRequirementA == null) {
                return null;
            }
            b bVarA = b.b.a(protoBuf$VersionRequirementA.D() ? Integer.valueOf(protoBuf$VersionRequirementA.x()) : null, protoBuf$VersionRequirementA.E() ? Integer.valueOf(protoBuf$VersionRequirementA.y()) : null);
            ProtoBuf$VersionRequirement.Level levelV = protoBuf$VersionRequirementA.v();
            if (levelV == null) {
                Intrinsics.throwNpe();
            }
            int i2 = f.a[levelV.ordinal()];
            if (i2 == 1) {
                deprecationLevel = DeprecationLevel.a;
            } else if (i2 == 2) {
                deprecationLevel = DeprecationLevel.b;
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                deprecationLevel = DeprecationLevel.c;
            }
            DeprecationLevel deprecationLevel2 = deprecationLevel;
            Integer numValueOf = protoBuf$VersionRequirementA.A() ? Integer.valueOf(protoBuf$VersionRequirementA.u()) : null;
            String string = protoBuf$VersionRequirementA.C() ? nameResolver.getString(protoBuf$VersionRequirementA.w()) : null;
            ProtoBuf$VersionRequirement.VersionKind versionKindZ = protoBuf$VersionRequirementA.z();
            Intrinsics.checkExpressionValueIsNotNull(versionKindZ, "info.versionKind");
            return new g(bVarA, versionKindZ, deprecationLevel2, numValueOf, string);
        }
    }

    /* JADX INFO: compiled from: VersionRequirement.kt */
    public static final class b {
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f9629d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f9630e;
        public static final a b = new a(null);
        public static final b a = new b(256, 256, 256);

        /* JADX INFO: compiled from: VersionRequirement.kt */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }

            public final b a(Integer num, Integer num2) {
                return num2 != null ? new b(num2.intValue() & 255, (num2.intValue() >> 8) & 255, (num2.intValue() >> 16) & 255) : num != null ? new b(num.intValue() & 7, (num.intValue() >> 3) & 15, (num.intValue() >> 7) & 127) : b.a;
            }
        }

        public b(int i, int i2, int i3) {
            this.c = i;
            this.f9629d = i2;
            this.f9630e = i3;
        }

        public /* synthetic */ b(int i, int i2, int i3, int i4, n nVar) {
            this(i, i2, (i4 & 4) != 0 ? 0 : i3);
        }

        public final String a() {
            StringBuilder sb;
            int i;
            if (this.f9630e == 0) {
                sb = new StringBuilder();
                sb.append(this.c);
                sb.append('.');
                i = this.f9629d;
            } else {
                sb = new StringBuilder();
                sb.append(this.c);
                sb.append('.');
                sb.append(this.f9629d);
                sb.append('.');
                i = this.f9630e;
            }
            sb.append(i);
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.c == bVar.c && this.f9629d == bVar.f9629d && this.f9630e == bVar.f9630e;
        }

        public int hashCode() {
            return (((this.c * 31) + this.f9629d) * 31) + this.f9630e;
        }

        public String toString() {
            return a();
        }
    }

    public g(b version, ProtoBuf$VersionRequirement.VersionKind kind, DeprecationLevel level, Integer num, String str) {
        Intrinsics.checkParameterIsNotNull(version, "version");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(level, "level");
        this.b = version;
        this.c = kind;
        this.f9626d = level;
        this.f9627e = num;
        this.f9628f = str;
    }

    public final ProtoBuf$VersionRequirement.VersionKind a() {
        return this.c;
    }

    public final b b() {
        return this.b;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("since ");
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.f9626d);
        String str2 = "";
        if (this.f9627e != null) {
            str = " error " + this.f9627e;
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f9628f != null) {
            str2 = ": " + this.f9628f;
        }
        sb.append(str2);
        return sb.toString();
    }
}
