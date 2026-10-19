package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import androidx.webkit.ProxyConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.p;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.x;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: RawType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends p implements x {

    /* JADX INFO: compiled from: RawType.kt */
    static final class a extends Lambda implements Function2<String, String, Boolean> {
        public static final a a = new a();

        a() {
            super(2);
        }

        public final boolean a(String first, String second) {
            Intrinsics.checkParameterIsNotNull(first, "first");
            Intrinsics.checkParameterIsNotNull(second, "second");
            return Intrinsics.areEqual(first, StringsKt__StringsKt.removePrefix(second, (CharSequence) "out ")) || Intrinsics.areEqual(second, ProxyConfig.MATCH_ALL_SCHEMES);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(String str, String str2) {
            return Boolean.valueOf(a(str, str2));
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RawType.kt */
    static final class C0530b extends Lambda implements Function1<u, List<? extends String>> {
        final /* synthetic */ DescriptorRenderer a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0530b(DescriptorRenderer descriptorRenderer) {
            super(1);
            this.a = descriptorRenderer;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> invoke(u type) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            List<g0> listG0 = type.G0();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG0, 10));
            Iterator<T> it = listG0.iterator();
            while (it.hasNext()) {
                arrayList.add(this.a.v((g0) it.next()));
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: RawType.kt */
    static final class c extends Lambda implements Function2<String, String, String> {
        public static final c a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(String replaceArgs, String newArgs) {
            Intrinsics.checkParameterIsNotNull(replaceArgs, "$this$replaceArgs");
            Intrinsics.checkParameterIsNotNull(newArgs, "newArgs");
            if (!StringsKt__StringsKt.contains$default((CharSequence) replaceArgs, '<', false, 2, (Object) null)) {
                return replaceArgs;
            }
            return StringsKt__StringsKt.substringBefore$default(replaceArgs, '<', (String) null, 2, (Object) null) + '<' + newArgs + '>' + StringsKt__StringsKt.substringAfterLast$default(replaceArgs, '>', (String) null, 2, (Object) null);
        }
    }

    /* JADX INFO: compiled from: RawType.kt */
    static final class d extends Lambda implements Function1<String, String> {
        public static final d a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(String it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return "(raw) " + it;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(y lowerBound, y upperBound) {
        this(lowerBound, upperBound, false);
        Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
        Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
    }

    private b(y yVar, y yVar2, boolean z) {
        super(yVar, yVar2);
        if (z) {
            return;
        }
        kotlin.reflect.jvm.internal.impl.types.checker.c.a.d(yVar, yVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public y O0() {
        return P0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public String R0(DescriptorRenderer renderer, DescriptorRendererOptions options) {
        Intrinsics.checkParameterIsNotNull(renderer, "renderer");
        Intrinsics.checkParameterIsNotNull(options, "options");
        a aVar = a.a;
        C0530b c0530b = new C0530b(renderer);
        c cVar = c.a;
        String strU = renderer.u(P0());
        String strU2 = renderer.u(Q0());
        if (options.getDebugMode()) {
            return "raw (" + strU + ".." + strU2 + ')';
        }
        if (Q0().G0().isEmpty()) {
            return renderer.r(strU, strU2, TypeUtilsKt.getBuiltIns(this));
        }
        List<String> listInvoke = c0530b.invoke(P0());
        List<String> listInvoke2 = c0530b.invoke(Q0());
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(listInvoke, ", ", null, null, 0, null, d.a, 30, null);
        List listZip = CollectionsKt___CollectionsKt.zip(listInvoke, listInvoke2);
        boolean z = true;
        if (!(listZip instanceof Collection) || !listZip.isEmpty()) {
            Iterator it = listZip.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Pair pair = (Pair) it.next();
                if (!a.a.a((String) pair.f(), (String) pair.g())) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            strU2 = cVar.invoke(strU2, strJoinToString$default);
        }
        String strInvoke = cVar.invoke(strU, strJoinToString$default);
        return Intrinsics.areEqual(strInvoke, strU2) ? strInvoke : renderer.r(strInvoke, strU2, TypeUtilsKt.getBuiltIns(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public b L0(boolean z) {
        return new b(P0().L0(z), Q0().L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public p R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(P0());
        if (uVarG == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        }
        y yVar = (y) uVarG;
        u uVarG2 = kotlinTypeRefiner.g(Q0());
        if (uVarG2 != null) {
            return new b(yVar, (y) uVarG2, true);
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public b N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new b(P0().N0(newAnnotations), Q0().N0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p, kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        f fVarQ = H0().q();
        if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarQ = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
        if (dVar != null) {
            MemberScope memberScopeL0 = dVar.l0(RawSubstitution.f9244e);
            Intrinsics.checkExpressionValueIsNotNull(memberScopeL0, "classDescriptor.getMemberScope(RawSubstitution)");
            return memberScopeL0;
        }
        throw new IllegalStateException(("Incorrect classifier: " + H0().q()).toString());
    }
}
