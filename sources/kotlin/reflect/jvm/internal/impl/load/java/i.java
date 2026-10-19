package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: JavaClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface i {

    /* JADX INFO: compiled from: JavaClassFinder.kt */
    public static final class a {
        private final ClassId a;
        private final byte[] b;
        private final kotlin.reflect.jvm.internal.impl.load.java.structure.f c;

        public a(ClassId classId, byte[] bArr, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar) {
            Intrinsics.checkParameterIsNotNull(classId, "classId");
            this.a = classId;
            this.b = bArr;
            this.c = fVar;
        }

        public /* synthetic */ a(ClassId classId, byte[] bArr, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, int i, kotlin.jvm.internal.n nVar) {
            this(classId, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : fVar);
        }

        public final ClassId a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c);
        }

        public int hashCode() {
            ClassId classId = this.a;
            int iHashCode = (classId != null ? classId.hashCode() : 0) * 31;
            byte[] bArr = this.b;
            int iHashCode2 = (iHashCode + (bArr != null ? Arrays.hashCode(bArr) : 0)) * 31;
            kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar = this.c;
            return iHashCode2 + (fVar != null ? fVar.hashCode() : 0);
        }

        public String toString() {
            return "Request(classId=" + this.a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.b) + ", outerClass=" + this.c + ")";
        }
    }

    kotlin.reflect.jvm.internal.impl.load.java.structure.f a(a aVar);

    r b(FqName fqName);

    Set<String> c(FqName fqName);
}
