package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: MemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorKindFilter {
    private static int a;
    private static final int b;
    private static final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f9763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f9764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f9765f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f9766g;
    private static final int h;
    private static final int i;
    private static final int j;
    private static final int k;
    public static final DescriptorKindFilter l;
    public static final DescriptorKindFilter m;
    public static final DescriptorKindFilter n;
    public static final DescriptorKindFilter o;
    public static final DescriptorKindFilter p;
    public static final DescriptorKindFilter q;
    public static final DescriptorKindFilter r;
    public static final DescriptorKindFilter s;
    public static final DescriptorKindFilter t;
    public static final DescriptorKindFilter u;
    private static final List<Companion.a> v;
    private static final List<Companion.a> w;
    public static final Companion x;
    private final int y;
    private final List<c> z;

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: MemberScope.kt */
        private static final class a {
            private final int a;
            private final String b;

            public a(int i, String name) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                this.a = i;
                this.b = name;
            }

            public final int a() {
                return this.a;
            }

            public final String b() {
                return this.b;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int i() {
            int i = DescriptorKindFilter.a;
            DescriptorKindFilter.a <<= 1;
            return i;
        }

        public final int a() {
            return DescriptorKindFilter.h;
        }

        public final int b() {
            return DescriptorKindFilter.i;
        }

        public final int c() {
            return DescriptorKindFilter.f9765f;
        }

        public final int d() {
            return DescriptorKindFilter.b;
        }

        public final int e() {
            return DescriptorKindFilter.f9764e;
        }

        public final int f() {
            return DescriptorKindFilter.c;
        }

        public final int g() {
            return DescriptorKindFilter.f9763d;
        }

        public final int h() {
            return DescriptorKindFilter.f9766g;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Companion.a aVar;
        Companion.a aVar2;
        Companion companion = new Companion(null);
        x = companion;
        a = 1;
        int i2 = companion.i();
        b = i2;
        int i3 = companion.i();
        c = i3;
        int i4 = companion.i();
        f9763d = i4;
        int i5 = companion.i();
        f9764e = i5;
        int i6 = companion.i();
        f9765f = i6;
        int i7 = companion.i();
        f9766g = i7;
        int i8 = companion.i() - 1;
        h = i8;
        int i9 = i2 | i3 | i4;
        i = i9;
        int i10 = i3 | i6 | i7;
        j = i10;
        int i11 = i6 | i7;
        k = i11;
        int i12 = 2;
        l = new DescriptorKindFilter(i8, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        m = new DescriptorKindFilter(i11, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        n = new DescriptorKindFilter(i2, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        o = new DescriptorKindFilter(i3, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        p = new DescriptorKindFilter(i4, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        q = new DescriptorKindFilter(i9, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        r = new DescriptorKindFilter(i5, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        s = new DescriptorKindFilter(i6, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        t = new DescriptorKindFilter(i7, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        u = new DescriptorKindFilter(i10, 0 == true ? 1 : 0, i12, 0 == true ? 1 : 0);
        Field[] fields = DescriptorKindFilter.class.getFields();
        Intrinsics.checkExpressionValueIsNotNull(fields, "T::class.java.fields");
        ArrayList<Field> arrayList = new ArrayList();
        for (Field it : fields) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (Modifier.isStatic(it.getModifiers())) {
                arrayList.add(it);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Field field : arrayList) {
            Object obj = field.get(null);
            if (!(obj instanceof DescriptorKindFilter)) {
                obj = null;
            }
            DescriptorKindFilter descriptorKindFilter = (DescriptorKindFilter) obj;
            if (descriptorKindFilter != null) {
                int i13 = descriptorKindFilter.y;
                Intrinsics.checkExpressionValueIsNotNull(field, "field");
                String name = field.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "field.name");
                aVar2 = new Companion.a(i13, name);
            } else {
                aVar2 = null;
            }
            if (aVar2 != null) {
                arrayList2.add(aVar2);
            }
        }
        v = CollectionsKt___CollectionsKt.toList(arrayList2);
        Field[] fields2 = DescriptorKindFilter.class.getFields();
        Intrinsics.checkExpressionValueIsNotNull(fields2, "T::class.java.fields");
        ArrayList arrayList3 = new ArrayList();
        for (Field it2 : fields2) {
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            if (Modifier.isStatic(it2.getModifiers())) {
                arrayList3.add(it2);
            }
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            Field it3 = (Field) obj2;
            Intrinsics.checkExpressionValueIsNotNull(it3, "it");
            if (Intrinsics.areEqual(it3.getType(), Integer.TYPE)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Field field2 : arrayList4) {
            Object obj3 = field2.get(null);
            if (obj3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            int iIntValue = ((Integer) obj3).intValue();
            if (iIntValue == ((-iIntValue) & iIntValue)) {
                Intrinsics.checkExpressionValueIsNotNull(field2, "field");
                String name2 = field2.getName();
                Intrinsics.checkExpressionValueIsNotNull(name2, "field.name");
                aVar = new Companion.a(iIntValue, name2);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                arrayList5.add(aVar);
            }
        }
        w = CollectionsKt___CollectionsKt.toList(arrayList5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DescriptorKindFilter(int i2, List<? extends c> excludes) {
        Intrinsics.checkParameterIsNotNull(excludes, "excludes");
        this.z = excludes;
        Iterator it = excludes.iterator();
        while (it.hasNext()) {
            i2 &= ~((c) it.next()).a();
        }
        this.y = i2;
    }

    public /* synthetic */ DescriptorKindFilter(int i2, List list, int i3, n nVar) {
        this(i2, (i3 & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    public final boolean a(int i2) {
        return (i2 & this.y) != 0;
    }

    public final List<c> b() {
        return this.z;
    }

    public final int c() {
        return this.y;
    }

    public final DescriptorKindFilter d(int i2) {
        int i3 = i2 & this.y;
        if (i3 == 0) {
            return null;
        }
        return new DescriptorKindFilter(i3, this.z);
    }

    public String toString() {
        Object next;
        Iterator<T> it = v.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Companion.a) next).a() == this.y) {
                break;
            }
        }
        Companion.a aVar = (Companion.a) next;
        String strB = aVar != null ? aVar.b() : null;
        if (strB == null) {
            List<Companion.a> list = w;
            ArrayList arrayList = new ArrayList();
            for (Companion.a aVar2 : list) {
                String strB2 = a(aVar2.a()) ? aVar2.b() : null;
                if (strB2 != null) {
                    arrayList.add(strB2);
                }
            }
            strB = CollectionsKt___CollectionsKt.joinToString$default(arrayList, " | ", null, null, 0, null, null, 62, null);
        }
        return "DescriptorKindFilter(" + strB + ", " + this.z + ')';
    }
}
