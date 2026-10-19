package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.k;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: JavaResolverCache.java */
/* JADX INFO: loaded from: classes5.dex */
public interface f {
    public static final f a = new a();

    /* JADX INFO: compiled from: JavaResolverCache.java */
    static class a implements f {
        a() {
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "method";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.f
        public void a(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.h hVar) {
            if (kVar == null) {
                f(3);
            }
            if (hVar == null) {
                f(4);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.f
        public void b(m mVar, y yVar) {
            if (mVar == null) {
                f(5);
            }
            if (yVar == null) {
                f(6);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.f
        public void c(JavaMethod javaMethod, c0 c0Var) {
            if (javaMethod == null) {
                f(1);
            }
            if (c0Var == null) {
                f(2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.f
        public kotlin.reflect.jvm.internal.impl.descriptors.d d(FqName fqName) {
            if (fqName != null) {
                return null;
            }
            f(0);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.f
        public void e(kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            if (fVar == null) {
                f(7);
            }
            if (dVar == null) {
                f(8);
            }
        }
    }

    void a(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.h hVar);

    void b(m mVar, y yVar);

    void c(JavaMethod javaMethod, c0 c0Var);

    kotlin.reflect.jvm.internal.impl.descriptors.d d(FqName fqName);

    void e(kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar);
}
