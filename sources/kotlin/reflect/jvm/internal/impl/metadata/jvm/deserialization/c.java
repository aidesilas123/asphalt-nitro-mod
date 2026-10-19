package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: JvmMemberSignature.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: compiled from: JvmMemberSignature.kt */
    public static final class a extends c {
        private final String a;
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String name, String desc) {
            super(null);
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            this.a = name;
            this.b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String a() {
            return c() + ':' + b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String b() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String c() {
            return this.a;
        }

        public final String d() {
            return c();
        }

        public final String e() {
            return b();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(c(), aVar.c()) && Intrinsics.areEqual(b(), aVar.b());
        }

        public int hashCode() {
            String strC = c();
            int iHashCode = (strC != null ? strC.hashCode() : 0) * 31;
            String strB = b();
            return iHashCode + (strB != null ? strB.hashCode() : 0);
        }
    }

    /* JADX INFO: compiled from: JvmMemberSignature.kt */
    public static final class b extends c {
        private final String a;
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String name, String desc) {
            super(null);
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            this.a = name;
            this.b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String a() {
            return c() + b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String b() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c
        public String c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.areEqual(c(), bVar.c()) && Intrinsics.areEqual(b(), bVar.b());
        }

        public int hashCode() {
            String strC = c();
            int iHashCode = (strC != null ? strC.hashCode() : 0) * 31;
            String strB = b();
            return iHashCode + (strB != null ? strB.hashCode() : 0);
        }
    }

    private c() {
    }

    public /* synthetic */ c(n nVar) {
        this();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public final String toString() {
        return a();
    }
}
