package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: KotlinClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface j extends kotlin.reflect.jvm.internal.impl.serialization.deserialization.p {

    /* JADX INFO: compiled from: KotlinClassFinder.kt */
    public static abstract class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: KotlinClassFinder.kt */
        public static final class C0535a extends a {
            private final byte[] a;

            public final byte[] b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C0535a) && Intrinsics.areEqual(this.a, ((C0535a) obj).a);
                }
                return true;
            }

            public int hashCode() {
                byte[] bArr = this.a;
                if (bArr != null) {
                    return Arrays.hashCode(bArr);
                }
                return 0;
            }

            public String toString() {
                return "ClassFileContent(content=" + Arrays.toString(this.a) + ")";
            }
        }

        /* JADX INFO: compiled from: KotlinClassFinder.kt */
        public static final class b extends a {
            private final k a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(k kotlinJvmBinaryClass) {
                super(null);
                Intrinsics.checkParameterIsNotNull(kotlinJvmBinaryClass, "kotlinJvmBinaryClass");
                this.a = kotlinJvmBinaryClass;
            }

            public final k b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
                }
                return true;
            }

            public int hashCode() {
                k kVar = this.a;
                if (kVar != null) {
                    return kVar.hashCode();
                }
                return 0;
            }

            public String toString() {
                return "KotlinClass(kotlinJvmBinaryClass=" + this.a + ")";
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final k a() {
            b bVar = (b) (!(this instanceof b) ? null : this);
            if (bVar != null) {
                return bVar.b();
            }
            return null;
        }
    }

    a a(kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar);

    a c(ClassId classId);
}
