package kotlin.reflect.jvm.internal.impl.resolve;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
public class OverridingUtil {
    private static final List<ExternalOverridabilityCondition> a = CollectionsKt___CollectionsKt.toList(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));
    public static final OverridingUtil b;
    private static final c.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.types.checker.d f9749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c.a f9750e;

    public static class OverrideCompatibilityInfo {
        private static final OverrideCompatibilityInfo a = new OverrideCompatibilityInfo(Result.OVERRIDABLE, "SUCCESS");
        private final Result b;
        private final String c;

        public enum Result {
            OVERRIDABLE,
            INCOMPATIBLE,
            CONFLICT
        }

        public OverrideCompatibilityInfo(Result result, String str) {
            if (result == null) {
                a(3);
            }
            if (str == null) {
                a(4);
            }
            this.b = result;
            this.c = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void a(int r10) {
            /*
                r0 = 4
                r1 = 3
                r2 = 2
                r3 = 1
                if (r10 == r3) goto Lf
                if (r10 == r2) goto Lf
                if (r10 == r1) goto Lf
                if (r10 == r0) goto Lf
                java.lang.String r4 = "@NotNull method %s.%s must not return null"
                goto L11
            Lf:
                java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            L11:
                if (r10 == r3) goto L1b
                if (r10 == r2) goto L1b
                if (r10 == r1) goto L1b
                if (r10 == r0) goto L1b
                r5 = 2
                goto L1c
            L1b:
                r5 = 3
            L1c:
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "success"
                java.lang.String r7 = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo"
                r8 = 0
                if (r10 == r3) goto L31
                if (r10 == r2) goto L31
                if (r10 == r1) goto L2e
                if (r10 == r0) goto L31
                r5[r8] = r7
                goto L35
            L2e:
                r5[r8] = r6
                goto L35
            L31:
                java.lang.String r9 = "debugMessage"
                r5[r8] = r9
            L35:
                switch(r10) {
                    case 1: goto L45;
                    case 2: goto L45;
                    case 3: goto L45;
                    case 4: goto L45;
                    case 5: goto L40;
                    case 6: goto L3b;
                    default: goto L38;
                }
            L38:
                r5[r3] = r6
                goto L47
            L3b:
                java.lang.String r6 = "getDebugMessage"
                r5[r3] = r6
                goto L47
            L40:
                java.lang.String r6 = "getResult"
                r5[r3] = r6
                goto L47
            L45:
                r5[r3] = r7
            L47:
                if (r10 == r3) goto L5a
                if (r10 == r2) goto L55
                if (r10 == r1) goto L50
                if (r10 == r0) goto L50
                goto L5e
            L50:
                java.lang.String r6 = "<init>"
                r5[r2] = r6
                goto L5e
            L55:
                java.lang.String r6 = "conflict"
                r5[r2] = r6
                goto L5e
            L5a:
                java.lang.String r6 = "incompatible"
                r5[r2] = r6
            L5e:
                java.lang.String r4 = java.lang.String.format(r4, r5)
                if (r10 == r3) goto L70
                if (r10 == r2) goto L70
                if (r10 == r1) goto L70
                if (r10 == r0) goto L70
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                r10.<init>(r4)
                goto L75
            L70:
                java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
                r10.<init>(r4)
            L75:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.OverrideCompatibilityInfo.a(int):void");
        }

        public static OverrideCompatibilityInfo conflict(String str) {
            if (str == null) {
                a(2);
            }
            return new OverrideCompatibilityInfo(Result.CONFLICT, str);
        }

        public static OverrideCompatibilityInfo incompatible(String str) {
            if (str == null) {
                a(1);
            }
            return new OverrideCompatibilityInfo(Result.INCOMPATIBLE, str);
        }

        public static OverrideCompatibilityInfo success() {
            OverrideCompatibilityInfo overrideCompatibilityInfo = a;
            if (overrideCompatibilityInfo == null) {
                a(0);
            }
            return overrideCompatibilityInfo;
        }

        public Result b() {
            Result result = this.b;
            if (result == null) {
                a(5);
            }
            return result;
        }
    }

    static class a implements c.a {
        a() {
        }

        private static /* synthetic */ void b(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "a";
            } else {
                objArr[0] = DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.c.a
        public boolean a(f0 f0Var, f0 f0Var2) {
            if (f0Var == null) {
                b(0);
            }
            if (f0Var2 == null) {
                b(1);
            }
            return f0Var.equals(f0Var2);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [D] */
    static class b<D> implements Function2<D, D, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>> {
        b() {
        }

        /* JADX WARN: Incorrect types in method signature: (TD;TD;)Lkotlin/Pair<Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;>; */
        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Pair invoke(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            return new Pair(aVar, aVar2);
        }
    }

    class c implements c.a {
        final /* synthetic */ Map a;

        c(Map map) {
            this.a = map;
        }

        private static /* synthetic */ void b(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "a";
            } else {
                objArr[0] = DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.c.a
        public boolean a(f0 f0Var, f0 f0Var2) {
            if (f0Var == null) {
                b(0);
            }
            if (f0Var2 == null) {
                b(1);
            }
            if (OverridingUtil.this.f9750e.a(f0Var, f0Var2)) {
                return true;
            }
            f0 f0Var3 = (f0) this.a.get(f0Var);
            f0 f0Var4 = (f0) this.a.get(f0Var2);
            return (f0Var3 != null && f0Var3.equals(f0Var2)) || (f0Var4 != null && f0Var4.equals(f0Var));
        }
    }

    static class d implements Function1<CallableMemberDescriptor, Boolean> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.i a;

        d(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
            this.a = iVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(callableMemberDescriptor.b() == this.a);
        }
    }

    static class e implements Function1<CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a> {
        e() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CallableMemberDescriptor invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }
    }

    static class f implements Function1<CallableMemberDescriptor, Boolean> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a;

        f(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            this.a = dVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(!Visibilities.isPrivate(callableMemberDescriptor.getVisibility()) && Visibilities.isVisibleIgnoringReceiver(callableMemberDescriptor, this.a));
        }
    }

    static class g implements Function1<CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a> {
        g() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.a invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }
    }

    static class h implements Function1<CallableMemberDescriptor, v> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.c a;
        final /* synthetic */ CallableMemberDescriptor b;

        h(kotlin.reflect.jvm.internal.impl.resolve.c cVar, CallableMemberDescriptor callableMemberDescriptor) {
            this.a = cVar;
            this.b = callableMemberDescriptor;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v invoke(CallableMemberDescriptor callableMemberDescriptor) {
            this.a.b(this.b, callableMemberDescriptor);
            return v.a;
        }
    }

    static /* synthetic */ class i {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[Modality.values().length];
            c = iArr;
            try {
                iArr[Modality.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[Modality.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[Modality.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[Modality.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OverrideCompatibilityInfo.Result.values().length];
            b = iArr2;
            try {
                iArr2[OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.Result.values().length];
            a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        a aVar = new a();
        c = aVar;
        b = new OverridingUtil(aVar, d.a.a);
    }

    private OverridingUtil(c.a aVar, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (aVar == null) {
            a(2);
        }
        if (dVar == null) {
            a(3);
        }
        this.f9750e = aVar;
        this.f9749d = dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0057 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r24) {
        /*
            Method dump skipped, instruction units count: 1282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.a(int):void");
    }

    private static boolean c(Collection<CallableMemberDescriptor> collection) {
        if (collection == null) {
            a(59);
        }
        if (collection.size() < 2) {
            return true;
        }
        return CollectionsKt___CollectionsKt.all(collection, new d(collection.iterator().next().b()));
    }

    public static OverridingUtil createWithEqualityAxioms(c.a aVar) {
        if (aVar == null) {
            a(0);
        }
        return new OverridingUtil(aVar, d.a.a);
    }

    public static OverridingUtil createWithTypeRefiner(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (dVar == null) {
            a(1);
        }
        return new OverridingUtil(c, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        r1.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean d(kotlin.reflect.jvm.internal.impl.descriptors.i0 r5, kotlin.reflect.jvm.internal.impl.descriptors.i0 r6, kotlin.reflect.jvm.internal.impl.types.checker.c r7) {
        /*
            r4 = this;
            if (r5 != 0) goto L7
            r0 = 45
            a(r0)
        L7:
            if (r6 != 0) goto Le
            r0 = 46
            a(r0)
        Le:
            if (r7 != 0) goto L15
            r0 = 47
            a(r0)
        L15:
            java.util.List r5 = r5.getUpperBounds()
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.List r6 = r6.getUpperBounds()
            r0.<init>(r6)
            int r6 = r5.size()
            int r1 = r0.size()
            r2 = 0
            if (r6 == r1) goto L2e
            return r2
        L2e:
            java.util.Iterator r5 = r5.iterator()
        L32:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L59
            java.lang.Object r6 = r5.next()
            kotlin.reflect.jvm.internal.impl.types.u r6 = (kotlin.reflect.jvm.internal.impl.types.u) r6
            java.util.ListIterator r1 = r0.listIterator()
        L42:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L58
            java.lang.Object r3 = r1.next()
            kotlin.reflect.jvm.internal.impl.types.u r3 = (kotlin.reflect.jvm.internal.impl.types.u) r3
            boolean r3 = r4.e(r6, r3, r7)
            if (r3 == 0) goto L42
            r1.remove()
            goto L32
        L58:
            return r2
        L59:
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.d(kotlin.reflect.jvm.internal.impl.descriptors.i0, kotlin.reflect.jvm.internal.impl.descriptors.i0, kotlin.reflect.jvm.internal.impl.types.checker.c):boolean");
    }

    private boolean e(u uVar, u uVar2, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        if (uVar == null) {
            a(42);
        }
        if (uVar2 == null) {
            a(43);
        }
        if (cVar == null) {
            a(44);
        }
        if (KotlinTypeKt.isError(uVar) && KotlinTypeKt.isError(uVar2)) {
            return true;
        }
        return cVar.b(this.f9749d.g(uVar), this.f9749d.g(uVar2));
    }

    public static <H> Collection<H> extractMembersOverridableInBothWays(H h2, Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1, Function1<H, v> function12) {
        if (h2 == null) {
            a(94);
        }
        if (collection == null) {
            a(95);
        }
        if (function1 == null) {
            a(96);
        }
        if (function12 == null) {
            a(97);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(h2);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke = function1.invoke(h2);
        Iterator<H> it = collection.iterator();
        while (it.hasNext()) {
            H next = it.next();
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke2 = function1.invoke(next);
            if (h2 == next) {
                it.remove();
            } else {
                OverrideCompatibilityInfo.Result bothWaysOverridability = getBothWaysOverridability(aVarInvoke, aVarInvoke2);
                if (bothWaysOverridability == OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                    arrayList.add(next);
                    it.remove();
                } else if (bothWaysOverridability == OverrideCompatibilityInfo.Result.CONFLICT) {
                    function12.invoke(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    private static OverrideCompatibilityInfo f(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if ((aVar.K() == null) != (aVar2.K() == null)) {
            return OverrideCompatibilityInfo.incompatible("Receiver presence mismatch");
        }
        if (aVar.g().size() != aVar2.g().size()) {
            return OverrideCompatibilityInfo.incompatible("Value parameter number mismatch");
        }
        return null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> Set<D> filterOutOverridden(Set<D> set) {
        if (set == null) {
            a(4);
        }
        return filterOverrides(set, !set.isEmpty() && DescriptorUtilsKt.isTypeRefinementEnabled(DescriptorUtilsKt.getModule(set.iterator().next())), new b());
    }

    public static <D> Set<D> filterOverrides(Set<D> set, boolean z, Function2<? super D, ? super D, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>> function2) {
        if (set == null) {
            a(5);
        }
        if (function2 == null) {
            a(6);
        }
        if (set.size() <= 1) {
            return set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : set) {
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    linkedHashSet.add(obj);
                    break;
                }
                Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> pairInvoke = function2.invoke(obj, (Object) it.next());
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarC = pairInvoke.c();
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarD = pairInvoke.d();
                if (!overrides(aVarC, aVarD, z)) {
                    if (overrides(aVarD, aVarC, z)) {
                        break;
                    }
                } else {
                    it.remove();
                }
            }
        }
        return linkedHashSet;
    }

    public static m0 findMaxVisibility(Collection<? extends CallableMemberDescriptor> collection) {
        m0 m0Var;
        if (collection == null) {
            a(104);
        }
        if (collection.isEmpty()) {
            return Visibilities.l;
        }
        Iterator<? extends CallableMemberDescriptor> it = collection.iterator();
        loop0: while (true) {
            m0Var = null;
            while (it.hasNext()) {
                m0 visibility = it.next().getVisibility();
                if (m0Var != null) {
                    Integer numCompare = Visibilities.compare(visibility, m0Var);
                    if (numCompare == null) {
                        break;
                    }
                    if (numCompare.intValue() > 0) {
                    }
                }
                m0Var = visibility;
            }
        }
        if (m0Var == null) {
            return null;
        }
        Iterator<? extends CallableMemberDescriptor> it2 = collection.iterator();
        while (it2.hasNext()) {
            Integer numCompare2 = Visibilities.compare(m0Var, it2.next().getVisibility());
            if (numCompare2 == null || numCompare2.intValue() < 0) {
                return null;
            }
        }
        return m0Var;
    }

    private static void g(CallableMemberDescriptor callableMemberDescriptor, Set<CallableMemberDescriptor> set) {
        if (callableMemberDescriptor == null) {
            a(13);
        }
        if (set == null) {
            a(14);
        }
        if (callableMemberDescriptor.getKind().e()) {
            set.add(callableMemberDescriptor);
            return;
        }
        if (callableMemberDescriptor.d().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) " + callableMemberDescriptor);
        }
        Iterator<? extends CallableMemberDescriptor> it = callableMemberDescriptor.d().iterator();
        while (it.hasNext()) {
            g(it.next(), set);
        }
    }

    public static OverrideCompatibilityInfo getBasicOverridabilityProblem(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        boolean z;
        if (aVar == null) {
            a(36);
        }
        if (aVar2 == null) {
            a(37);
        }
        boolean z2 = aVar instanceof o;
        if ((z2 && !(aVar2 instanceof o)) || (((z = aVar instanceof y)) && !(aVar2 instanceof y))) {
            return OverrideCompatibilityInfo.incompatible("Member kind mismatch");
        }
        if (!z2 && !z) {
            throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: " + aVar);
        }
        if (!aVar.getName().equals(aVar2.getName())) {
            return OverrideCompatibilityInfo.incompatible("Name mismatch");
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoF = f(aVar, aVar2);
        if (overrideCompatibilityInfoF != null) {
            return overrideCompatibilityInfoF;
        }
        return null;
    }

    public static OverrideCompatibilityInfo.Result getBothWaysOverridability(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil overridingUtil = b;
        OverrideCompatibilityInfo.Result resultB = overridingUtil.u(aVar2, aVar, null).b();
        OverrideCompatibilityInfo.Result resultB2 = overridingUtil.u(aVar, aVar2, null).b();
        OverrideCompatibilityInfo.Result result = OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (resultB == result && resultB2 == result) {
            return result;
        }
        OverrideCompatibilityInfo.Result result2 = OverrideCompatibilityInfo.Result.CONFLICT;
        return (resultB == result2 || resultB2 == result2) ? result2 : OverrideCompatibilityInfo.Result.INCOMPATIBLE;
    }

    public static Set<CallableMemberDescriptor> getOverriddenDeclarations(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(11);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        g(callableMemberDescriptor, linkedHashSet);
        return linkedHashSet;
    }

    private static List<u> h(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        b0 b0VarK = aVar.K();
        ArrayList arrayList = new ArrayList();
        if (b0VarK != null) {
            arrayList.add(b0VarK.getType());
        }
        Iterator<ValueParameterDescriptor> it = aVar.g().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getType());
        }
        return arrayList;
    }

    private static m0 i(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(103);
        }
        Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor.d();
        m0 m0VarFindMaxVisibility = findMaxVisibility(collectionD);
        if (m0VarFindMaxVisibility == null) {
            return null;
        }
        if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return m0VarFindMaxVisibility.e();
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : collectionD) {
            if (callableMemberDescriptor2.p() != Modality.ABSTRACT && !callableMemberDescriptor2.getVisibility().equals(m0VarFindMaxVisibility)) {
                return null;
            }
        }
        return m0VarFindMaxVisibility;
    }

    public static boolean isMoreSpecific(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if (aVar == null) {
            a(63);
        }
        if (aVar2 == null) {
            a(64);
        }
        u returnType = aVar.getReturnType();
        u returnType2 = aVar2.getReturnType();
        if (!y(aVar, aVar2)) {
            return false;
        }
        if (aVar instanceof o) {
            return x(aVar, returnType, aVar2, returnType2);
        }
        if (!(aVar instanceof y)) {
            throw new IllegalArgumentException("Unexpected callable: " + aVar.getClass());
        }
        y yVar = (y) aVar;
        y yVar2 = (y) aVar2;
        if (s(yVar.getSetter(), yVar2.getSetter())) {
            return (yVar.J() && yVar2.J()) ? b.l(aVar.getTypeParameters(), aVar2.getTypeParameters()).b(returnType, returnType2) : (yVar.J() || !yVar2.J()) && x(aVar, returnType, aVar2, returnType2);
        }
        return false;
    }

    public static boolean isVisibleForOverride(q qVar, q qVar2) {
        if (qVar == null) {
            a(53);
        }
        if (qVar2 == null) {
            a(54);
        }
        return !Visibilities.isPrivate(qVar2.getVisibility()) && Visibilities.isVisibleIgnoringReceiver(qVar2, qVar);
    }

    private static void j(Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.c cVar) {
        if (collection == null) {
            a(80);
        }
        if (dVar == null) {
            a(81);
        }
        if (cVar == null) {
            a(82);
        }
        Collection<CallableMemberDescriptor> collectionP = p(dVar, collection);
        boolean zIsEmpty = collectionP.isEmpty();
        if (!zIsEmpty) {
            collection = collectionP;
        }
        CallableMemberDescriptor callableMemberDescriptorA0 = ((CallableMemberDescriptor) selectMostSpecificMember(collection, new e())).A0(dVar, m(collection, dVar), zIsEmpty ? Visibilities.h : Visibilities.f9102g, CallableMemberDescriptor.Kind.FAKE_OVERRIDE, false);
        cVar.d(callableMemberDescriptorA0, collection);
        cVar.a(callableMemberDescriptorA0);
    }

    private static void k(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.resolve.c cVar) {
        if (dVar == null) {
            a(60);
        }
        if (collection == null) {
            a(61);
        }
        if (cVar == null) {
            a(62);
        }
        if (c(collection)) {
            Iterator<CallableMemberDescriptor> it = collection.iterator();
            while (it.hasNext()) {
                j(Collections.singleton(it.next()), dVar, cVar);
            }
        } else {
            LinkedList linkedList = new LinkedList(collection);
            while (!linkedList.isEmpty()) {
                j(o(VisibilityUtilKt.findMemberWithMaxVisibility(linkedList), linkedList, cVar), dVar, cVar);
            }
        }
    }

    private kotlin.reflect.jvm.internal.impl.types.checker.c l(List<i0> list, List<i0> list2) {
        if (list == null) {
            a(38);
        }
        if (list2 == null) {
            a(39);
        }
        if (list.isEmpty()) {
            kotlin.reflect.jvm.internal.impl.types.checker.c cVarWithAxioms = KotlinTypeCheckerImpl.withAxioms(this.f9750e);
            if (cVarWithAxioms == null) {
                a(40);
            }
            return cVarWithAxioms;
        }
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < list.size(); i2++) {
            map.put(list.get(i2).i(), list2.get(i2).i());
        }
        kotlin.reflect.jvm.internal.impl.types.checker.c cVarWithAxioms2 = KotlinTypeCheckerImpl.withAxioms(new c(map));
        if (cVarWithAxioms2 == null) {
            a(41);
        }
        return cVarWithAxioms2;
    }

    private static Modality m(Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (collection == null) {
            a(83);
        }
        if (dVar == null) {
            a(84);
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            int i2 = i.c[callableMemberDescriptor.p().ordinal()];
            if (i2 == 1) {
                Modality modality = Modality.FINAL;
                if (modality == null) {
                    a(85);
                }
                return modality;
            }
            if (i2 == 2) {
                throw new IllegalStateException("Member cannot have SEALED modality: " + callableMemberDescriptor);
            }
            if (i2 == 3) {
                z2 = true;
            } else if (i2 == 4) {
                z3 = true;
            }
        }
        if (dVar.c0() && dVar.p() != Modality.ABSTRACT && dVar.p() != Modality.SEALED) {
            z = true;
        }
        if (z2 && !z3) {
            Modality modality2 = Modality.OPEN;
            if (modality2 == null) {
                a(86);
            }
            return modality2;
        }
        if (!z2 && z3) {
            Modality modalityP = z ? dVar.p() : Modality.ABSTRACT;
            if (modalityP == null) {
                a(87);
            }
            return modalityP;
        }
        HashSet hashSet = new HashSet();
        Iterator<CallableMemberDescriptor> it = collection.iterator();
        while (it.hasNext()) {
            hashSet.addAll(getOverriddenDeclarations(it.next()));
        }
        return r(filterOutOverridden(hashSet), z, dVar.p());
    }

    private Collection<CallableMemberDescriptor> n(CallableMemberDescriptor callableMemberDescriptor, Collection<? extends CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.c cVar) {
        if (callableMemberDescriptor == null) {
            a(55);
        }
        if (collection == null) {
            a(56);
        }
        if (dVar == null) {
            a(57);
        }
        if (cVar == null) {
            a(58);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        SmartSet smartSetCreate = SmartSet.create();
        for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
            OverrideCompatibilityInfo.Result resultB = u(callableMemberDescriptor2, callableMemberDescriptor, dVar).b();
            boolean zIsVisibleForOverride = isVisibleForOverride(callableMemberDescriptor, callableMemberDescriptor2);
            int i2 = i.b[resultB.ordinal()];
            if (i2 == 1) {
                if (zIsVisibleForOverride) {
                    smartSetCreate.add(callableMemberDescriptor2);
                }
                arrayList.add(callableMemberDescriptor2);
            } else if (i2 == 2) {
                if (zIsVisibleForOverride) {
                    cVar.c(callableMemberDescriptor2, callableMemberDescriptor);
                }
                arrayList.add(callableMemberDescriptor2);
            }
        }
        cVar.d(callableMemberDescriptor, smartSetCreate);
        return arrayList;
    }

    private static Collection<CallableMemberDescriptor> o(CallableMemberDescriptor callableMemberDescriptor, Queue<CallableMemberDescriptor> queue, kotlin.reflect.jvm.internal.impl.resolve.c cVar) {
        if (callableMemberDescriptor == null) {
            a(99);
        }
        if (queue == null) {
            a(100);
        }
        if (cVar == null) {
            a(101);
        }
        return extractMembersOverridableInBothWays(callableMemberDescriptor, queue, new g(), new h(cVar, callableMemberDescriptor));
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> boolean overrides(D d2, D d3, boolean z) {
        if (d2 == null) {
            a(9);
        }
        if (d3 == null) {
            a(10);
        }
        if (!d2.equals(d3) && DescriptorEquivalenceForOverrides.a.c(d2.a(), d3.a(), z)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = d3.a();
        Iterator it = DescriptorUtils.getAllOverriddenDescriptors(d2).iterator();
        while (it.hasNext()) {
            if (DescriptorEquivalenceForOverrides.a.c(aVarA, (kotlin.reflect.jvm.internal.impl.descriptors.a) it.next(), z)) {
                return true;
            }
        }
        return false;
    }

    private static Collection<CallableMemberDescriptor> p(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Collection<CallableMemberDescriptor> collection) {
        if (dVar == null) {
            a(91);
        }
        if (collection == null) {
            a(92);
        }
        List listFilter = CollectionsKt___CollectionsKt.filter(collection, new f(dVar));
        if (listFilter == null) {
            a(93);
        }
        return listFilter;
    }

    private static Modality r(Collection<CallableMemberDescriptor> collection, boolean z, Modality modality) {
        if (collection == null) {
            a(88);
        }
        if (modality == null) {
            a(89);
        }
        Modality modality2 = Modality.ABSTRACT;
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            Modality modalityP = (z && callableMemberDescriptor.p() == Modality.ABSTRACT) ? modality : callableMemberDescriptor.p();
            if (modalityP.compareTo(modality2) < 0) {
                modality2 = modalityP;
            }
        }
        if (modality2 == null) {
            a(90);
        }
        return modality2;
    }

    public static void resolveUnknownVisibilityForMember(CallableMemberDescriptor callableMemberDescriptor, Function1<CallableMemberDescriptor, v> function1) {
        m0 m0Var;
        if (callableMemberDescriptor == null) {
            a(102);
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : callableMemberDescriptor.d()) {
            if (callableMemberDescriptor2.getVisibility() == Visibilities.f9102g) {
                resolveUnknownVisibilityForMember(callableMemberDescriptor2, function1);
            }
        }
        if (callableMemberDescriptor.getVisibility() != Visibilities.f9102g) {
            return;
        }
        m0 m0VarI = i(callableMemberDescriptor);
        if (m0VarI == null) {
            if (function1 != null) {
                function1.invoke(callableMemberDescriptor);
            }
            m0Var = Visibilities.f9100e;
        } else {
            m0Var = m0VarI;
        }
        if (callableMemberDescriptor instanceof PropertyDescriptorImpl) {
            ((PropertyDescriptorImpl) callableMemberDescriptor).Q0(m0Var);
            Iterator<x> it = ((y) callableMemberDescriptor).s().iterator();
            while (it.hasNext()) {
                resolveUnknownVisibilityForMember(it.next(), m0VarI == null ? null : function1);
            }
            return;
        }
        if (callableMemberDescriptor instanceof FunctionDescriptorImpl) {
            ((FunctionDescriptorImpl) callableMemberDescriptor).X0(m0Var);
            return;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.impl.u uVar = (kotlin.reflect.jvm.internal.impl.descriptors.impl.u) callableMemberDescriptor;
        uVar.F0(m0Var);
        if (m0Var != uVar.P().getVisibility()) {
            uVar.z0(false);
        }
    }

    private static boolean s(x xVar, x xVar2) {
        if (xVar == null || xVar2 == null) {
            return true;
        }
        return y(xVar, xVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <H> H selectMostSpecificMember(Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1) {
        if (collection == null) {
            a(73);
        }
        if (function1 == 0) {
            a(74);
        }
        if (collection.size() == 1) {
            H h2 = (H) p.first(collection);
            if (h2 == null) {
                a(75);
            }
            return h2;
        }
        ArrayList arrayList = new ArrayList(2);
        List map = CollectionsKt___CollectionsKt.map(collection, function1);
        H h3 = (H) p.first(collection);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(h3);
        for (H h4 : collection) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(h4);
            if (t(aVar2, map)) {
                arrayList.add(h4);
            }
            if (isMoreSpecific(aVar2, aVar) && !isMoreSpecific(aVar, aVar2)) {
                h3 = h4;
            }
        }
        if (arrayList.isEmpty()) {
            if (h3 == null) {
                a(76);
            }
            return h3;
        }
        if (arrayList.size() == 1) {
            H h5 = (H) p.first((Iterable) arrayList);
            if (h5 == null) {
                a(77);
            }
            return h5;
        }
        H h6 = null;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (!FlexibleTypesKt.isFlexible(((kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(next)).getReturnType())) {
                h6 = (H) next;
                break;
            }
        }
        if (h6 != null) {
            return h6;
        }
        H h7 = (H) p.first((Iterable) arrayList);
        if (h7 == null) {
            a(79);
        }
        return h7;
    }

    private static boolean t(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<kotlin.reflect.jvm.internal.impl.descriptors.a> collection) {
        if (aVar == null) {
            a(67);
        }
        if (collection == null) {
            a(68);
        }
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a> it = collection.iterator();
        while (it.hasNext()) {
            if (!isMoreSpecific(aVar, it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean x(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, u uVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, u uVar2) {
        if (aVar == null) {
            a(69);
        }
        if (uVar == null) {
            a(70);
        }
        if (aVar2 == null) {
            a(71);
        }
        if (uVar2 == null) {
            a(72);
        }
        return b.l(aVar.getTypeParameters(), aVar2.getTypeParameters()).d(uVar, uVar2);
    }

    private static boolean y(m mVar, m mVar2) {
        if (mVar == null) {
            a(65);
        }
        if (mVar2 == null) {
            a(66);
        }
        Integer numCompare = Visibilities.compare(mVar.getVisibility(), mVar2.getVisibility());
        return numCompare == null || numCompare.intValue() >= 0;
    }

    public void q(Name name, Collection<? extends CallableMemberDescriptor> collection, Collection<? extends CallableMemberDescriptor> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.c cVar) {
        if (name == null) {
            a(48);
        }
        if (collection == null) {
            a(49);
        }
        if (collection2 == null) {
            a(50);
        }
        if (dVar == null) {
            a(51);
        }
        if (cVar == null) {
            a(52);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator<? extends CallableMemberDescriptor> it = collection2.iterator();
        while (it.hasNext()) {
            linkedHashSet.removeAll(n(it.next(), collection, dVar, cVar));
        }
        k(dVar, linkedHashSet, cVar);
    }

    public OverrideCompatibilityInfo u(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (aVar == null) {
            a(15);
        }
        if (aVar2 == null) {
            a(16);
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoV = v(aVar, aVar2, dVar, false);
        if (overrideCompatibilityInfoV == null) {
            a(17);
        }
        return overrideCompatibilityInfoV;
    }

    public OverrideCompatibilityInfo v(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, boolean z) {
        if (aVar == null) {
            a(18);
        }
        if (aVar2 == null) {
            a(19);
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoW = w(aVar, aVar2, z);
        boolean z2 = overrideCompatibilityInfoW.b() == OverrideCompatibilityInfo.Result.OVERRIDABLE;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : a) {
            if (externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.SUCCESS_ONLY)) {
                int i2 = i.a[externalOverridabilityCondition.b(aVar, aVar2, dVar).ordinal()];
                if (i2 == 1) {
                    z2 = true;
                } else {
                    if (i2 == 2) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoConflict = OverrideCompatibilityInfo.conflict("External condition failed");
                        if (overrideCompatibilityInfoConflict == null) {
                            a(20);
                        }
                        return overrideCompatibilityInfoConflict;
                    }
                    if (i2 == 3) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoIncompatible = OverrideCompatibilityInfo.incompatible("External condition");
                        if (overrideCompatibilityInfoIncompatible == null) {
                            a(21);
                        }
                        return overrideCompatibilityInfoIncompatible;
                    }
                }
            }
        }
        if (!z2) {
            return overrideCompatibilityInfoW;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : a) {
            if (externalOverridabilityCondition2.a() == ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY) {
                int i3 = i.a[externalOverridabilityCondition2.b(aVar, aVar2, dVar).ordinal()];
                if (i3 == 1) {
                    throw new IllegalStateException("Contract violation in " + externalOverridabilityCondition2.getClass().getName() + " condition. It's not supposed to end with success");
                }
                if (i3 == 2) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoConflict2 = OverrideCompatibilityInfo.conflict("External condition failed");
                    if (overrideCompatibilityInfoConflict2 == null) {
                        a(23);
                    }
                    return overrideCompatibilityInfoConflict2;
                }
                if (i3 == 3) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoIncompatible2 = OverrideCompatibilityInfo.incompatible("External condition");
                    if (overrideCompatibilityInfoIncompatible2 == null) {
                        a(24);
                    }
                    return overrideCompatibilityInfoIncompatible2;
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoSuccess = OverrideCompatibilityInfo.success();
        if (overrideCompatibilityInfoSuccess == null) {
            a(25);
        }
        return overrideCompatibilityInfoSuccess;
    }

    public OverrideCompatibilityInfo w(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z) {
        if (aVar == null) {
            a(26);
        }
        if (aVar2 == null) {
            a(27);
        }
        OverrideCompatibilityInfo basicOverridabilityProblem = getBasicOverridabilityProblem(aVar, aVar2);
        if (basicOverridabilityProblem != null) {
            return basicOverridabilityProblem;
        }
        List<u> listH = h(aVar);
        List<u> listH2 = h(aVar2);
        List<i0> typeParameters = aVar.getTypeParameters();
        List<i0> typeParameters2 = aVar2.getTypeParameters();
        int i2 = 0;
        if (typeParameters.size() != typeParameters2.size()) {
            while (i2 < listH.size()) {
                if (!kotlin.reflect.jvm.internal.impl.types.checker.c.a.b(listH.get(i2), listH2.get(i2))) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoIncompatible = OverrideCompatibilityInfo.incompatible("Type parameter number mismatch");
                    if (overrideCompatibilityInfoIncompatible == null) {
                        a(29);
                    }
                    return overrideCompatibilityInfoIncompatible;
                }
                i2++;
            }
            OverrideCompatibilityInfo overrideCompatibilityInfoConflict = OverrideCompatibilityInfo.conflict("Type parameter number mismatch");
            if (overrideCompatibilityInfoConflict == null) {
                a(30);
            }
            return overrideCompatibilityInfoConflict;
        }
        kotlin.reflect.jvm.internal.impl.types.checker.c cVarL = l(typeParameters, typeParameters2);
        for (int i3 = 0; i3 < typeParameters.size(); i3++) {
            if (!d(typeParameters.get(i3), typeParameters2.get(i3), cVarL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoIncompatible2 = OverrideCompatibilityInfo.incompatible("Type parameter bounds mismatch");
                if (overrideCompatibilityInfoIncompatible2 == null) {
                    a(31);
                }
                return overrideCompatibilityInfoIncompatible2;
            }
        }
        for (int i4 = 0; i4 < listH.size(); i4++) {
            if (!e(listH.get(i4), listH2.get(i4), cVarL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoIncompatible3 = OverrideCompatibilityInfo.incompatible("Value parameter type mismatch");
                if (overrideCompatibilityInfoIncompatible3 == null) {
                    a(32);
                }
                return overrideCompatibilityInfoIncompatible3;
            }
        }
        if ((aVar instanceof o) && (aVar2 instanceof o) && ((o) aVar).isSuspend() != ((o) aVar2).isSuspend()) {
            OverrideCompatibilityInfo overrideCompatibilityInfoConflict2 = OverrideCompatibilityInfo.conflict("Incompatible suspendability");
            if (overrideCompatibilityInfoConflict2 == null) {
                a(33);
            }
            return overrideCompatibilityInfoConflict2;
        }
        if (z) {
            u returnType = aVar.getReturnType();
            u returnType2 = aVar2.getReturnType();
            if (returnType != null && returnType2 != null) {
                if (KotlinTypeKt.isError(returnType2) && KotlinTypeKt.isError(returnType)) {
                    i2 = 1;
                }
                if (i2 == 0 && !cVarL.d(this.f9749d.g(returnType2), this.f9749d.g(returnType))) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoConflict3 = OverrideCompatibilityInfo.conflict("Return type mismatch");
                    if (overrideCompatibilityInfoConflict3 == null) {
                        a(34);
                    }
                    return overrideCompatibilityInfoConflict3;
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoSuccess = OverrideCompatibilityInfo.success();
        if (overrideCompatibilityInfoSuccess == null) {
            a(35);
        }
        return overrideCompatibilityInfoSuccess;
    }
}
