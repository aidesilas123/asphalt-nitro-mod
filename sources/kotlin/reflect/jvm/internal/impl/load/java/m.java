package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.z5;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* JADX INFO: compiled from: JavaVisibilities.java */
/* JADX INFO: loaded from: classes5.dex */
public class m {
    public static final m0 a = new a("package", false);
    public static final m0 b = new b("protected_static", true);
    public static final m0 c = new c("protected_and_package", true);

    /* JADX INFO: compiled from: JavaVisibilities.java */
    static class a extends m0 {
        a(String str, boolean z) {
            super(str, z);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void f(int r10) {
            /*
                r0 = 5
                r1 = 3
                if (r10 == r1) goto L9
                if (r10 == r0) goto L9
                java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
                goto Lb
            L9:
                java.lang.String r2 = "@NotNull method %s.%s must not return null"
            Lb:
                r3 = 2
                if (r10 == r1) goto L12
                if (r10 == r0) goto L12
                r4 = 3
                goto L13
            L12:
                r4 = 2
            L13:
                java.lang.Object[] r4 = new java.lang.Object[r4]
                java.lang.String r5 = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$1"
                r6 = 4
                r7 = 1
                r8 = 0
                if (r10 == r7) goto L36
                if (r10 == r3) goto L31
                if (r10 == r1) goto L2e
                if (r10 == r6) goto L29
                if (r10 == r0) goto L2e
                java.lang.String r9 = "what"
                r4[r8] = r9
                goto L3a
            L29:
                java.lang.String r9 = "classDescriptor"
                r4[r8] = r9
                goto L3a
            L2e:
                r4[r8] = r5
                goto L3a
            L31:
                java.lang.String r9 = "visibility"
                r4[r8] = r9
                goto L3a
            L36:
                java.lang.String r9 = "from"
                r4[r8] = r9
            L3a:
                java.lang.String r8 = "effectiveVisibility"
                if (r10 == r1) goto L46
                if (r10 == r0) goto L43
                r4[r7] = r5
                goto L4a
            L43:
                r4[r7] = r8
                goto L4a
            L46:
                java.lang.String r5 = "normalize"
                r4[r7] = r5
            L4a:
                if (r10 == r3) goto L5a
                if (r10 == r1) goto L5e
                if (r10 == r6) goto L57
                if (r10 == r0) goto L5e
                java.lang.String r5 = "isVisible"
                r4[r3] = r5
                goto L5e
            L57:
                r4[r3] = r8
                goto L5e
            L5a:
                java.lang.String r5 = "compareTo"
                r4[r3] = r5
            L5e:
                java.lang.String r2 = java.lang.String.format(r2, r4)
                if (r10 == r1) goto L6c
                if (r10 == r0) goto L6c
                java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
                r10.<init>(r2)
                goto L71
            L6c:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                r10.<init>(r2)
            L71:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.m.a.f(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        protected Integer a(m0 m0Var) {
            if (m0Var == null) {
                f(2);
            }
            if (this == m0Var) {
                return 0;
            }
            return Visibilities.isPrivate(m0Var) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public String b() {
            return "public/*package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return m.d(mVar, iVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public m0 e() {
            m0 m0Var = Visibilities.c;
            if (m0Var == null) {
                f(3);
            }
            return m0Var;
        }
    }

    /* JADX INFO: compiled from: JavaVisibilities.java */
    static class b extends m0 {
        b(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            } else if (i != 2) {
                objArr[0] = "what";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$2";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$2";
            } else {
                objArr[1] = "normalize";
            }
            if (i != 2) {
                objArr[2] = z5.k;
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public String b() {
            return "protected/*protected static*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return m.e(dVar, mVar, iVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public m0 e() {
            m0 m0Var = Visibilities.c;
            if (m0Var == null) {
                f(2);
            }
            return m0Var;
        }
    }

    /* JADX INFO: compiled from: JavaVisibilities.java */
    static class c extends m0 {
        c(String str, boolean z) {
            super(str, z);
        }

        private static /* synthetic */ void f(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            } else if (i == 2) {
                objArr[0] = "visibility";
            } else if (i != 3) {
                objArr[0] = "what";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3";
            } else {
                objArr[1] = "normalize";
            }
            if (i == 2) {
                objArr[2] = "compareTo";
            } else if (i != 3) {
                objArr[2] = z5.k;
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        protected Integer a(m0 m0Var) {
            if (m0Var == null) {
                f(2);
            }
            if (this == m0Var) {
                return 0;
            }
            if (m0Var == Visibilities.f9099d) {
                return null;
            }
            return Visibilities.isPrivate(m0Var) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public String b() {
            return "protected/*protected and package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public boolean d(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            if (mVar == null) {
                f(0);
            }
            if (iVar == null) {
                f(1);
            }
            return m.e(dVar, mVar, iVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
        public m0 e() {
            m0 m0Var = Visibilities.c;
            if (m0Var == null) {
                f(3);
            }
            return m0Var;
        }
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = TypedValues.TransitionType.S_FROM;
        } else if (i == 2) {
            objArr[0] = "first";
        } else if (i != 3) {
            objArr[0] = "what";
        } else {
            objArr[0] = "second";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities";
        if (i == 2 || i == 3) {
            objArr[2] = "areInSamePackage";
        } else {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar2) {
        if (iVar == null) {
            a(2);
        }
        if (iVar2 == null) {
            a(3);
        }
        s sVar = (s) DescriptorUtils.getParentOfType(iVar, s.class, false);
        s sVar2 = (s) DescriptorUtils.getParentOfType(iVar2, s.class, false);
        return (sVar2 == null || sVar == null || !sVar.e().equals(sVar2.e())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (mVar == null) {
            a(0);
        }
        if (iVar == null) {
            a(1);
        }
        if (d(DescriptorUtils.unwrapFakeOverrideToAnyDeclaration(mVar), iVar)) {
            return true;
        }
        return Visibilities.c.d(dVar, mVar, iVar);
    }
}
