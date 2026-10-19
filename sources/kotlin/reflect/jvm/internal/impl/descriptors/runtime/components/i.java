package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.k;

/* JADX INFO: compiled from: RuntimeSourceElementFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class i implements kotlin.reflect.jvm.internal.impl.load.java.p.b {
    public static final i a = new i();

    /* JADX INFO: compiled from: RuntimeSourceElementFactory.kt */
    public static final class a implements kotlin.reflect.jvm.internal.impl.load.java.p.a {
        private final kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j b;

        public a(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j javaElement) {
            Intrinsics.checkParameterIsNotNull(javaElement, "javaElement");
            this.b = javaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
        public e0 b() {
            e0 e0Var = e0.a;
            Intrinsics.checkExpressionValueIsNotNull(e0Var, "SourceFile.NO_SOURCE_FILE");
            return e0Var;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j c() {
            return this.b;
        }

        public String toString() {
            return a.class.getName() + ": " + c().toString();
        }
    }

    private i() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p.b
    public kotlin.reflect.jvm.internal.impl.load.java.p.a a(k javaElement) {
        Intrinsics.checkParameterIsNotNull(javaElement, "javaElement");
        return new a((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j) javaElement);
    }
}
