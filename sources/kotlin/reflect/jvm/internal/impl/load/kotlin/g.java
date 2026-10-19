package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: methodSignatureMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class g {

    /* JADX INFO: compiled from: methodSignatureMapping.kt */
    public static final class a extends g {
        private final g a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g elementType) {
            super(null);
            Intrinsics.checkParameterIsNotNull(elementType, "elementType");
            this.a = elementType;
        }

        public final g a() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: methodSignatureMapping.kt */
    public static final class b extends g {
        private final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String internalName) {
            super(null);
            Intrinsics.checkParameterIsNotNull(internalName, "internalName");
            this.a = internalName;
        }

        public final String a() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: methodSignatureMapping.kt */
    public static final class c extends g {
        private final JvmPrimitiveType a;

        public c(JvmPrimitiveType jvmPrimitiveType) {
            super(null);
            this.a = jvmPrimitiveType;
        }

        public final JvmPrimitiveType a() {
            return this.a;
        }
    }

    private g() {
    }

    public /* synthetic */ g(kotlin.jvm.internal.n nVar) {
        this();
    }

    public String toString() {
        return i.a.c(this);
    }
}
