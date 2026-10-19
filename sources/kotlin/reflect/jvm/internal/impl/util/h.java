package kotlin.reflect.jvm.internal.impl.util;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.util.e;
import kotlin.reflect.jvm.internal.impl.util.j;
import kotlin.reflect.jvm.internal.impl.util.k;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h extends kotlin.reflect.jvm.internal.impl.util.a {
    private static final List<kotlin.reflect.jvm.internal.impl.util.c> a;
    public static final h b = new h();

    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class a extends Lambda implements Function1<o, String> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(o receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            List<ValueParameterDescriptor> valueParameters = receiver.g();
            Intrinsics.checkExpressionValueIsNotNull(valueParameters, "valueParameters");
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) p.lastOrNull((List) valueParameters);
            boolean z = false;
            if (valueParameterDescriptor != null) {
                if (!DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptor) && valueParameterDescriptor.q0() == null) {
                    z = true;
                }
            }
            h hVar = h.b;
            if (z) {
                return null;
            }
            return "last parameter should not have a default value or be a vararg";
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class b extends Lambda implements Function1<o, String> {
        public static final b a = new b();

        /* JADX INFO: compiled from: modifierChecks.kt */
        static final class a extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.i, Boolean> {
            public static final a a = new a();

            a() {
                super(1);
            }

            public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.i isAny) {
                Intrinsics.checkParameterIsNotNull(isAny, "$this$isAny");
                return (isAny instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && KotlinBuiltIns.isAny((kotlin.reflect.jvm.internal.impl.descriptors.d) isAny);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
                return Boolean.valueOf(a(iVar));
            }
        }

        b() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String invoke(kotlin.reflect.jvm.internal.impl.descriptors.o r6) {
            /*
                r5 = this;
                java.lang.String r0 = "$receiver"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
                kotlin.reflect.jvm.internal.impl.util.h$b$a r0 = kotlin.reflect.jvm.internal.impl.util.h.b.a.a
                kotlin.reflect.jvm.internal.impl.util.h r1 = kotlin.reflect.jvm.internal.impl.util.h.b
                kotlin.reflect.jvm.internal.impl.descriptors.i r1 = r6.b()
                java.lang.String r2 = "containingDeclaration"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
                boolean r0 = r0.a(r1)
                r1 = 1
                r2 = 0
                if (r0 != 0) goto L5a
                java.util.Collection r6 = r6.d()
                java.lang.String r0 = "overriddenDescriptors"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0)
                boolean r0 = r6 instanceof java.util.Collection
                if (r0 == 0) goto L2f
                boolean r0 = r6.isEmpty()
                if (r0 == 0) goto L2f
            L2d:
                r6 = 0
                goto L56
            L2f:
                java.util.Iterator r6 = r6.iterator()
            L33:
                boolean r0 = r6.hasNext()
                if (r0 == 0) goto L2d
                java.lang.Object r0 = r6.next()
                kotlin.reflect.jvm.internal.impl.descriptors.o r0 = (kotlin.reflect.jvm.internal.impl.descriptors.o) r0
                kotlin.reflect.jvm.internal.impl.util.h$b$a r3 = kotlin.reflect.jvm.internal.impl.util.h.b.a.a
                java.lang.String r4 = "it"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r4)
                kotlin.reflect.jvm.internal.impl.descriptors.i r0 = r0.b()
                java.lang.String r4 = "it.containingDeclaration"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r4)
                boolean r0 = r3.a(r0)
                if (r0 == 0) goto L33
                r6 = 1
            L56:
                if (r6 == 0) goto L59
                goto L5a
            L59:
                r1 = 0
            L5a:
                if (r1 != 0) goto L5f
                java.lang.String r6 = "must override ''equals()'' in Any"
                goto L60
            L5f:
                r6 = 0
            L60:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.h.b.invoke(kotlin.reflect.jvm.internal.impl.descriptors.o):java.lang.String");
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class c extends Lambda implements Function1<o, String> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(o receiver) {
            boolean zIsSubtypeOf;
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            b0 b0VarH = receiver.H();
            if (b0VarH == null) {
                b0VarH = receiver.K();
            }
            h hVar = h.b;
            boolean z = false;
            if (b0VarH != null) {
                u returnType = receiver.getReturnType();
                if (returnType != null) {
                    u type = b0VarH.getType();
                    Intrinsics.checkExpressionValueIsNotNull(type, "receiver.type");
                    zIsSubtypeOf = TypeUtilsKt.isSubtypeOf(returnType, type);
                } else {
                    zIsSubtypeOf = false;
                }
                if (zIsSubtypeOf) {
                    z = true;
                }
            }
            if (z) {
                return null;
            }
            return "receiver must be a supertype of the return type";
        }
    }

    static {
        Name name = i.i;
        e.b bVar = e.b.b;
        Check[] checkArr = {bVar, new k.a(1)};
        Name name2 = i.j;
        Check[] checkArr2 = {bVar, new k.a(2)};
        Name name3 = i.a;
        g gVar = g.b;
        d dVar = d.b;
        Name name4 = i.f9885f;
        k.d dVar2 = k.d.b;
        j.a aVar = j.a.f9887d;
        Name name5 = i.h;
        k.c cVar = k.c.b;
        a = CollectionsKt__CollectionsKt.listOf((Object[]) new kotlin.reflect.jvm.internal.impl.util.c[]{new kotlin.reflect.jvm.internal.impl.util.c(name, checkArr, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(name2, checkArr2, a.a), new kotlin.reflect.jvm.internal.impl.util.c(name3, new Check[]{bVar, gVar, new k.a(2), dVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.b, new Check[]{bVar, gVar, new k.a(3), dVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.c, new Check[]{bVar, gVar, new k.b(2), dVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.f9886g, new Check[]{bVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(name4, new Check[]{bVar, dVar2, gVar, aVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(name5, new Check[]{bVar, cVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.k, new Check[]{bVar, cVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.l, new Check[]{bVar, cVar, aVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.A, new Check[]{bVar, dVar2, gVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.f9883d, new Check[]{e.a.b}, b.a), new kotlin.reflect.jvm.internal.impl.util.c(i.f9884e, new Check[]{bVar, j.b.f9888d, dVar2, gVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.J, new Check[]{bVar, dVar2, gVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.I, new Check[]{bVar, cVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(CollectionsKt__CollectionsKt.listOf((Object[]) new Name[]{i.p, i.q}), new Check[]{bVar}, c.a), new kotlin.reflect.jvm.internal.impl.util.c(i.K, new Check[]{bVar, j.c.f9889d, dVar2, gVar}, (Function1) null, 4, (n) null), new kotlin.reflect.jvm.internal.impl.util.c(i.m, new Check[]{bVar, cVar}, (Function1) null, 4, (n) null)});
    }

    private h() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.a
    public List<kotlin.reflect.jvm.internal.impl.util.c> b() {
        return a;
    }
}
