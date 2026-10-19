package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.UtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.ReportLevel;
import kotlin.v;

/* JADX INFO: compiled from: signatureEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SignatureEnhancement {
    private final AnnotationTypeQualifierResolver a;
    private final kotlin.reflect.jvm.internal.impl.utils.a b;

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    private final class SignatureParts {
        private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.a a;
        private final u b;
        private final Collection<u> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f9366d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.load.java.lazy.d f9367e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AnnotationTypeQualifierResolver.QualifierApplicabilityType f9368f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ SignatureEnhancement f9369g;

        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class a extends Lambda implements Function1<Integer, JavaTypeQualifiers> {
            final /* synthetic */ JavaTypeQualifiers[] a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(JavaTypeQualifiers[] javaTypeQualifiersArr) {
                super(1);
                this.a = javaTypeQualifiersArr;
            }

            public final JavaTypeQualifiers c(int i) {
                JavaTypeQualifiers[] javaTypeQualifiersArr = this.a;
                return (i < 0 || i > ArraysKt___ArraysKt.getLastIndex(javaTypeQualifiersArr)) ? JavaTypeQualifiers.b.a() : javaTypeQualifiersArr[i];
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ JavaTypeQualifiers invoke(Integer num) {
                return c(num.intValue());
            }
        }

        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class b extends Lambda implements Function1<Integer, JavaTypeQualifiers> {
            final /* synthetic */ i a;
            final /* synthetic */ Function1 b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(i iVar, Function1 function1) {
                super(1);
                this.a = iVar;
                this.b = function1;
            }

            public final JavaTypeQualifiers c(int i) {
                JavaTypeQualifiers javaTypeQualifiers = this.a.a().get(Integer.valueOf(i));
                return javaTypeQualifiers != null ? javaTypeQualifiers : (JavaTypeQualifiers) this.b.invoke(Integer.valueOf(i));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ JavaTypeQualifiers invoke(Integer num) {
                return c(num.intValue());
            }
        }

        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class c extends Lambda implements Function1<m0, Boolean> {
            public static final c a = new c();

            c() {
                super(1);
            }

            public final boolean a(m0 m0Var) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = m0Var.H0().q();
                if (fVarQ == null) {
                    return false;
                }
                Intrinsics.checkExpressionValueIsNotNull(fVarQ, "it.constructor.declarati… ?: return@contains false");
                Name name = fVarQ.getName();
                JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
                return Intrinsics.areEqual(name, javaToKotlinClassMap.k().g()) && Intrinsics.areEqual(DescriptorUtilsKt.fqNameOrNull(fVarQ), javaToKotlinClassMap.k());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(m0 m0Var) {
                return Boolean.valueOf(a(m0Var));
            }
        }

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class d<T> extends Lambda implements Function2<List<? extends FqName>, T, T> {
            final /* synthetic */ Annotations a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(Annotations annotations) {
                super(2);
                this.a = annotations;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final <T> T invoke(List<FqName> ifPresent, T qualifier) {
                Intrinsics.checkParameterIsNotNull(ifPresent, "$this$ifPresent");
                Intrinsics.checkParameterIsNotNull(qualifier, "qualifier");
                boolean z = true;
                if ((ifPresent instanceof Collection) && ifPresent.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = ifPresent.iterator();
                    while (it.hasNext()) {
                        if (this.a.b((FqName) it.next()) != null) {
                            break;
                        }
                    }
                    z = false;
                }
                if (z) {
                    return qualifier;
                }
                return null;
            }
        }

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class e<T> extends Lambda implements Function2<T, T, T> {
            public static final e a = new e();

            e() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final <T> T invoke(T t, T t2) {
                if (t == null || t2 == null || Intrinsics.areEqual(t, t2)) {
                    return t != null ? t : t2;
                }
                return null;
            }
        }

        /* JADX INFO: compiled from: signatureEnhancement.kt */
        static final class f extends Lambda implements Function2<u, kotlin.reflect.jvm.internal.impl.load.java.lazy.d, v> {
            final /* synthetic */ ArrayList a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            f(ArrayList arrayList) {
                super(2);
                this.a = arrayList;
            }

            public final void a(u type, kotlin.reflect.jvm.internal.impl.load.java.lazy.d ownerContext) {
                Intrinsics.checkParameterIsNotNull(type, "type");
                Intrinsics.checkParameterIsNotNull(ownerContext, "ownerContext");
                kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarCopyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(ownerContext, type.getAnnotations());
                ArrayList arrayList = this.a;
                kotlin.reflect.jvm.internal.impl.load.java.lazy.c cVarB = dVarCopyWithNewDefaultTypeQualifiers.b();
                arrayList.add(new h(type, cVarB != null ? cVarB.a(AnnotationTypeQualifierResolver.QualifierApplicabilityType.TYPE_USE) : null));
                for (g0 g0Var : type.G0()) {
                    if (g0Var.b()) {
                        ArrayList arrayList2 = this.a;
                        u type2 = g0Var.getType();
                        Intrinsics.checkExpressionValueIsNotNull(type2, "arg.type");
                        arrayList2.add(new h(type2, null));
                    } else {
                        u type3 = g0Var.getType();
                        Intrinsics.checkExpressionValueIsNotNull(type3, "arg.type");
                        a(type3, dVarCopyWithNewDefaultTypeQualifiers);
                    }
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(u uVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar) {
                a(uVar, dVar);
                return v.a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SignatureParts(SignatureEnhancement signatureEnhancement, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, u fromOverride, Collection<? extends u> fromOverridden, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.d containerContext, AnnotationTypeQualifierResolver.QualifierApplicabilityType containerApplicabilityType) {
            Intrinsics.checkParameterIsNotNull(fromOverride, "fromOverride");
            Intrinsics.checkParameterIsNotNull(fromOverridden, "fromOverridden");
            Intrinsics.checkParameterIsNotNull(containerContext, "containerContext");
            Intrinsics.checkParameterIsNotNull(containerApplicabilityType, "containerApplicabilityType");
            this.f9369g = signatureEnhancement;
            this.a = aVar;
            this.b = fromOverride;
            this.c = fromOverridden;
            this.f9366d = z;
            this.f9367e = containerContext;
            this.f9368f = containerApplicabilityType;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.jvm.functions.Function1<java.lang.Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers> a() {
            /*
                r14 = this;
                java.util.Collection<kotlin.reflect.jvm.internal.impl.types.u> r0 = r14.c
                java.util.ArrayList r1 = new java.util.ArrayList
                r2 = 10
                int r2 = kotlin.collections.p.collectionSizeOrDefault(r0, r2)
                r1.<init>(r2)
                java.util.Iterator r0 = r0.iterator()
            L11:
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L25
                java.lang.Object r2 = r0.next()
                kotlin.reflect.jvm.internal.impl.types.u r2 = (kotlin.reflect.jvm.internal.impl.types.u) r2
                java.util.List r2 = r14.h(r2)
                r1.add(r2)
                goto L11
            L25:
                kotlin.reflect.jvm.internal.impl.types.u r0 = r14.b
                java.util.List r0 = r14.h(r0)
                boolean r2 = r14.f9366d
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L5f
                java.util.Collection<kotlin.reflect.jvm.internal.impl.types.u> r2 = r14.c
                boolean r5 = r2 instanceof java.util.Collection
                if (r5 == 0) goto L3f
                boolean r5 = r2.isEmpty()
                if (r5 == 0) goto L3f
            L3d:
                r2 = 0
                goto L5b
            L3f:
                java.util.Iterator r2 = r2.iterator()
            L43:
                boolean r5 = r2.hasNext()
                if (r5 == 0) goto L3d
                java.lang.Object r5 = r2.next()
                kotlin.reflect.jvm.internal.impl.types.u r5 = (kotlin.reflect.jvm.internal.impl.types.u) r5
                kotlin.reflect.jvm.internal.impl.types.checker.c r6 = kotlin.reflect.jvm.internal.impl.types.checker.c.a
                kotlin.reflect.jvm.internal.impl.types.u r7 = r14.b
                boolean r5 = r6.b(r5, r7)
                r5 = r5 ^ r4
                if (r5 == 0) goto L43
                r2 = 1
            L5b:
                if (r2 == 0) goto L5f
                r2 = 1
                goto L60
            L5f:
                r2 = 0
            L60:
                if (r2 == 0) goto L64
                r5 = 1
                goto L68
            L64:
                int r5 = r0.size()
            L68:
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers[] r6 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers[r5]
                r7 = 0
            L6b:
                if (r7 >= r5) goto Lb2
                if (r7 != 0) goto L71
                r8 = 1
                goto L72
            L71:
                r8 = 0
            L72:
                java.lang.Object r9 = r0.get(r7)
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h r9 = (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h) r9
                kotlin.reflect.jvm.internal.impl.types.u r10 = r9.a()
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r9 = r9.b()
                java.util.ArrayList r11 = new java.util.ArrayList
                r11.<init>()
                java.util.Iterator r12 = r1.iterator()
            L89:
                boolean r13 = r12.hasNext()
                if (r13 == 0) goto La9
                java.lang.Object r13 = r12.next()
                java.util.List r13 = (java.util.List) r13
                java.lang.Object r13 = kotlin.collections.p.getOrNull(r13, r7)
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h r13 = (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h) r13
                if (r13 == 0) goto La2
                kotlin.reflect.jvm.internal.impl.types.u r13 = r13.c()
                goto La3
            La2:
                r13 = 0
            La3:
                if (r13 == 0) goto L89
                r11.add(r13)
                goto L89
            La9:
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r8 = r14.b(r10, r11, r9, r8)
                r6[r7] = r8
                int r7 = r7 + 1
                goto L6b
            Lb2:
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$a r0 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$a
                r0.<init>(r6)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.SignatureParts.a():kotlin.jvm.b.l");
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0117  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers b(kotlin.reflect.jvm.internal.impl.types.u r11, java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.u> r12, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r13, boolean r14) {
            /*
                Method dump skipped, instruction units count: 302
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.SignatureParts.b(kotlin.reflect.jvm.internal.impl.types.u, java.util.Collection, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers");
        }

        private final NullabilityQualifierWithMigrationStatus d(Annotations annotations) {
            SignatureEnhancement signatureEnhancement = this.f9369g;
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (it.hasNext()) {
                NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusC = signatureEnhancement.c(it.next());
                if (nullabilityQualifierWithMigrationStatusC != null) {
                    return nullabilityQualifierWithMigrationStatusC;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers e(kotlin.reflect.jvm.internal.impl.types.u r12) {
            /*
                r11 = this;
                boolean r0 = kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt.isFlexible(r12)
                if (r0 == 0) goto L18
                kotlin.reflect.jvm.internal.impl.types.p r0 = kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt.asFlexibleType(r12)
                kotlin.Pair r1 = new kotlin.Pair
                kotlin.reflect.jvm.internal.impl.types.y r2 = r0.P0()
                kotlin.reflect.jvm.internal.impl.types.y r0 = r0.Q0()
                r1.<init>(r2, r0)
                goto L1d
            L18:
                kotlin.Pair r1 = new kotlin.Pair
                r1.<init>(r12, r12)
            L1d:
                java.lang.Object r0 = r1.c()
                kotlin.reflect.jvm.internal.impl.types.u r0 = (kotlin.reflect.jvm.internal.impl.types.u) r0
                java.lang.Object r1 = r1.d()
                kotlin.reflect.jvm.internal.impl.types.u r1 = (kotlin.reflect.jvm.internal.impl.types.u) r1
                kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap r2 = kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap.m
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r10 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers
                boolean r3 = r0.I0()
                r4 = 0
                if (r3 == 0) goto L38
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r3 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE
            L36:
                r5 = r3
                goto L42
            L38:
                boolean r3 = r1.I0()
                if (r3 != 0) goto L41
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r3 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NOT_NULL
                goto L36
            L41:
                r5 = r4
            L42:
                boolean r0 = r2.s(r0)
                if (r0 == 0) goto L4b
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier r0 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier.READ_ONLY
                goto L55
            L4b:
                boolean r0 = r2.p(r1)
                if (r0 == 0) goto L54
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier r0 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier.MUTABLE
                goto L55
            L54:
                r0 = r4
            L55:
                kotlin.reflect.jvm.internal.impl.types.m0 r12 = r12.K0()
                boolean r6 = r12 instanceof kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d
                r7 = 0
                r8 = 8
                r9 = 0
                r3 = r10
                r4 = r5
                r5 = r0
                r3.<init>(r4, r5, r6, r7, r8, r9)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.SignatureParts.e(kotlin.reflect.jvm.internal.impl.types.u):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers");
        }

        public static /* synthetic */ a enhance$default(SignatureParts signatureParts, i iVar, int i, Object obj) {
            if ((i & 1) != 0) {
                iVar = null;
            }
            return signatureParts.c(iVar);
        }

        private final JavaTypeQualifiers f(u uVar, boolean z, JavaTypeQualifiers javaTypeQualifiers) {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar;
            Annotations annotations = (!z || (aVar = this.a) == null) ? uVar.getAnnotations() : AnnotationsKt.composeAnnotations(aVar.getAnnotations(), uVar.getAnnotations());
            d dVar = new d(annotations);
            e eVar = e.a;
            if (z) {
                kotlin.reflect.jvm.internal.impl.load.java.lazy.c cVarB = this.f9367e.b();
                javaTypeQualifiers = cVarB != null ? cVarB.a(this.f9368f) : null;
            }
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusD = d(annotations);
            if (nullabilityQualifierWithMigrationStatusD == null) {
                nullabilityQualifierWithMigrationStatusD = (javaTypeQualifiers == null || javaTypeQualifiers.b() == null) ? null : new NullabilityQualifierWithMigrationStatus(javaTypeQualifiers.b(), javaTypeQualifiers.d());
            }
            NullabilityQualifier nullabilityQualifierB = nullabilityQualifierWithMigrationStatusD != null ? nullabilityQualifierWithMigrationStatusD.b() : null;
            MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) eVar.invoke(dVar.invoke(JvmAnnotationNamesKt.getREAD_ONLY_ANNOTATIONS(), MutabilityQualifier.READ_ONLY), dVar.invoke(JvmAnnotationNamesKt.getMUTABLE_ANNOTATIONS(), MutabilityQualifier.MUTABLE));
            boolean z2 = false;
            boolean z3 = (nullabilityQualifierWithMigrationStatusD != null ? nullabilityQualifierWithMigrationStatusD.b() : null) == NullabilityQualifier.NOT_NULL && TypeUtilsKt.isTypeParameter(uVar);
            if (nullabilityQualifierWithMigrationStatusD != null && nullabilityQualifierWithMigrationStatusD.c()) {
                z2 = true;
            }
            return new JavaTypeQualifiers(nullabilityQualifierB, mutabilityQualifier, z3, z2);
        }

        private final boolean g() {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar = this.a;
            if (!(aVar instanceof ValueParameterDescriptor)) {
                aVar = null;
            }
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) aVar;
            return (valueParameterDescriptor != null ? valueParameterDescriptor.q0() : null) != null;
        }

        private final List<h> h(u uVar) {
            ArrayList arrayList = new ArrayList(1);
            new f(arrayList).a(uVar, this.f9367e);
            return arrayList;
        }

        public final a c(i iVar) {
            Function1<Integer, JavaTypeQualifiers> function1A = a();
            b bVar = iVar != null ? new b(iVar, function1A) : null;
            boolean zContains = TypeUtils.contains(this.b, c.a);
            u uVar = this.b;
            if (bVar != null) {
                function1A = bVar;
            }
            u uVarEnhance = TypeEnhancementKt.enhance(uVar, function1A);
            return uVarEnhance != null ? new a(uVarEnhance, true, zContains) : new a(this.b, false, zContains);
        }
    }

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    private static class a {
        private final u a;
        private final boolean b;
        private final boolean c;

        public a(u type, boolean z, boolean z2) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            this.a = type;
            this.b = z;
            this.c = z2;
        }

        public final boolean a() {
            return this.c;
        }

        public final u b() {
            return this.a;
        }

        public final boolean c() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    private static final class b extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f9370d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(u type, boolean z, boolean z2, boolean z3) {
            super(type, z2, z3);
            Intrinsics.checkParameterIsNotNull(type, "type");
            this.f9370d = z;
        }

        public final boolean d() {
            return this.f9370d;
        }
    }

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    static final class c extends Lambda implements Function1<CallableMemberDescriptor, u> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            b0 b0VarK = it.K();
            if (b0VarK == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(b0VarK, "it.extensionReceiverParameter!!");
            u type = b0VarK.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.extensionReceiverParameter!!.type");
            return type;
        }
    }

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    static final class d extends Lambda implements Function1<CallableMemberDescriptor, u> {
        public static final d a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            u returnType = it.getReturnType();
            if (returnType == null) {
                Intrinsics.throwNpe();
            }
            return returnType;
        }
    }

    /* JADX INFO: compiled from: signatureEnhancement.kt */
    static final class e extends Lambda implements Function1<CallableMemberDescriptor, u> {
        final /* synthetic */ ValueParameterDescriptor a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(ValueParameterDescriptor valueParameterDescriptor) {
            super(1);
            this.a = valueParameterDescriptor;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            ValueParameterDescriptor valueParameterDescriptor = it.g().get(this.a.h());
            Intrinsics.checkExpressionValueIsNotNull(valueParameterDescriptor, "it.valueParameters[p.index]");
            u type = valueParameterDescriptor.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.valueParameters[p.index].type");
            return type;
        }
    }

    public SignatureEnhancement(AnnotationTypeQualifierResolver annotationTypeQualifierResolver, kotlin.reflect.jvm.internal.impl.utils.a jsr305State) {
        Intrinsics.checkParameterIsNotNull(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        Intrinsics.checkParameterIsNotNull(jsr305State, "jsr305State");
        this.a = annotationTypeQualifierResolver;
        this.b = jsr305State;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor> D a(D r17, kotlin.reflect.jvm.internal.impl.load.java.lazy.d r18) {
        /*
            Method dump skipped, instruction units count: 575
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.a(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.load.java.lazy.d):kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor");
    }

    private final NullabilityQualifierWithMigrationStatus d(AnnotationDescriptor annotationDescriptor) {
        FqName fqNameE = annotationDescriptor.e();
        if (fqNameE == null) {
            return null;
        }
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = JvmAnnotationNamesKt.getNULLABLE_ANNOTATIONS().contains(fqNameE) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null) : JvmAnnotationNamesKt.getNOT_NULL_ANNOTATIONS().contains(fqNameE) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, false, 2, null) : Intrinsics.areEqual(fqNameE, JvmAnnotationNamesKt.getJAVAX_NONNULL_ANNOTATION()) ? e(annotationDescriptor) : (Intrinsics.areEqual(fqNameE, JvmAnnotationNamesKt.getCOMPATQUAL_NULLABLE_ANNOTATION()) && this.b.b()) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null) : (Intrinsics.areEqual(fqNameE, JvmAnnotationNamesKt.getCOMPATQUAL_NONNULL_ANNOTATION()) && this.b.b()) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, false, 2, null) : Intrinsics.areEqual(fqNameE, JvmAnnotationNamesKt.getANDROIDX_RECENTLY_NON_NULL_ANNOTATION()) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, true) : Intrinsics.areEqual(fqNameE, JvmAnnotationNamesKt.getANDROIDX_RECENTLY_NULLABLE_ANNOTATION()) ? new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, true) : null;
        if (nullabilityQualifierWithMigrationStatus != null) {
            return (!nullabilityQualifierWithMigrationStatus.c() && (annotationDescriptor instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.f) && ((kotlin.reflect.jvm.internal.impl.load.java.descriptors.f) annotationDescriptor).i()) ? NullabilityQualifierWithMigrationStatus.copy$default(nullabilityQualifierWithMigrationStatus, null, true, 1, null) : nullabilityQualifierWithMigrationStatus;
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final NullabilityQualifierWithMigrationStatus e(AnnotationDescriptor annotationDescriptor) {
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus;
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarFirstArgument = DescriptorUtilsKt.firstArgument(annotationDescriptor);
        if (!(gVarFirstArgument instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j)) {
            gVarFirstArgument = null;
        }
        kotlin.reflect.jvm.internal.impl.resolve.constants.j jVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.j) gVarFirstArgument;
        if (jVar == null) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, false, 2, null);
        }
        String strE = jVar.c().e();
        switch (strE.hashCode()) {
            case 73135176:
                if (!strE.equals("MAYBE")) {
                    return null;
                }
                nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null);
                return nullabilityQualifierWithMigrationStatus;
            case 74175084:
                if (!strE.equals("NEVER")) {
                    return null;
                }
                nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null);
                return nullabilityQualifierWithMigrationStatus;
            case 433141802:
                if (!strE.equals("UNKNOWN")) {
                    return null;
                }
                nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, false, 2, null);
                return nullabilityQualifierWithMigrationStatus;
            case 1933739535:
                if (!strE.equals("ALWAYS")) {
                    return null;
                }
                nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, false, 2, null);
                return nullabilityQualifierWithMigrationStatus;
            default:
                return null;
        }
    }

    private final boolean f(ValueParameterDescriptor valueParameterDescriptor, u uVar) {
        boolean zU0;
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.a defaultValueFromAnnotation = UtilKt.getDefaultValueFromAnnotation(valueParameterDescriptor);
        if (defaultValueFromAnnotation instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.g) {
            zU0 = UtilsKt.lexicalCastFrom(uVar, ((kotlin.reflect.jvm.internal.impl.load.java.descriptors.g) defaultValueFromAnnotation).a()) != null;
        } else if (Intrinsics.areEqual(defaultValueFromAnnotation, kotlin.reflect.jvm.internal.impl.load.java.descriptors.e.a)) {
            zU0 = TypeUtils.acceptsNullable(uVar);
        } else {
            if (defaultValueFromAnnotation != null) {
                throw new NoWhenBranchMatchedException();
            }
            zU0 = valueParameterDescriptor.u0();
        }
        return zU0 && valueParameterDescriptor.d().isEmpty();
    }

    private final SignatureParts g(CallableMemberDescriptor callableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar, AnnotationTypeQualifierResolver.QualifierApplicabilityType qualifierApplicabilityType, Function1<? super CallableMemberDescriptor, ? extends u> function1) {
        u uVarInvoke = function1.invoke(callableMemberDescriptor);
        Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor.d();
        Intrinsics.checkExpressionValueIsNotNull(collectionD, "this.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionD, 10));
        for (CallableMemberDescriptor it : collectionD) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(function1.invoke(it));
        }
        return new SignatureParts(this, aVar, uVarInvoke, arrayList, z, ContextKt.copyWithNewDefaultTypeQualifiers(dVar, function1.invoke(callableMemberDescriptor).getAnnotations()), qualifierApplicabilityType);
    }

    private final SignatureParts h(CallableMemberDescriptor callableMemberDescriptor, ValueParameterDescriptor valueParameterDescriptor, kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar, Function1<? super CallableMemberDescriptor, ? extends u> function1) {
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVarCopyWithNewDefaultTypeQualifiers;
        return g(callableMemberDescriptor, valueParameterDescriptor, false, (valueParameterDescriptor == null || (dVarCopyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(dVar, valueParameterDescriptor.getAnnotations())) == null) ? dVar : dVarCopyWithNewDefaultTypeQualifiers, AnnotationTypeQualifierResolver.QualifierApplicabilityType.VALUE_PARAMETER, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends CallableMemberDescriptor> Collection<D> b(kotlin.reflect.jvm.internal.impl.load.java.lazy.d c2, Collection<? extends D> platformSignatures) {
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(platformSignatures, "platformSignatures");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(platformSignatures, 10));
        Iterator<T> it = platformSignatures.iterator();
        while (it.hasNext()) {
            arrayList.add(a((CallableMemberDescriptor) it.next(), c2));
        }
        return arrayList;
    }

    public final NullabilityQualifierWithMigrationStatus c(AnnotationDescriptor annotationDescriptor) {
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusD;
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusD2 = d(annotationDescriptor);
        if (nullabilityQualifierWithMigrationStatusD2 != null) {
            return nullabilityQualifierWithMigrationStatusD2;
        }
        AnnotationDescriptor annotationDescriptorH = this.a.h(annotationDescriptor);
        if (annotationDescriptorH == null) {
            return null;
        }
        ReportLevel reportLevelE = this.a.e(annotationDescriptor);
        if (reportLevelE.f() || (nullabilityQualifierWithMigrationStatusD = d(annotationDescriptorH)) == null) {
            return null;
        }
        return NullabilityQualifierWithMigrationStatus.copy$default(nullabilityQualifierWithMigrationStatusD, null, reportLevelE.g(), 1, null);
    }
}
