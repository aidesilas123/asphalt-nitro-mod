package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.f;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.load.java.structure.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: DeclaredMemberIndex.kt */
/* JADX INFO: loaded from: classes5.dex */
public class ClassDeclaredMemberIndex implements kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a {
    private final Function1<JavaMethod, Boolean> a;
    private final Map<Name, List<JavaMethod>> b;
    private final Map<Name, m> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f9220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1<o, Boolean> f9221e;

    /* JADX INFO: compiled from: DeclaredMemberIndex.kt */
    static final class a extends Lambda implements Function1<JavaMethod, Boolean> {
        a() {
            super(1);
        }

        public final boolean a(JavaMethod m) {
            Intrinsics.checkParameterIsNotNull(m, "m");
            return ((Boolean) ClassDeclaredMemberIndex.this.f9221e.invoke(m)).booleanValue() && !DescriptorResolverUtils.isObjectMethodInInterface(m);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(JavaMethod javaMethod) {
            return Boolean.valueOf(a(javaMethod));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassDeclaredMemberIndex(f jClass, Function1<? super o, Boolean> memberFilter) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        Intrinsics.checkParameterIsNotNull(memberFilter, "memberFilter");
        this.f9220d = jClass;
        this.f9221e = memberFilter;
        a aVar = new a();
        this.a = aVar;
        Sequence sequenceFilter = SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(jClass.w()), aVar);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sequenceFilter) {
            Name name = ((JavaMethod) obj).getName();
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.b = linkedHashMap;
        Sequence sequenceFilter2 = SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(this.f9220d.t()), this.f9221e);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj2 : sequenceFilter2) {
            linkedHashMap2.put(((m) obj2).getName(), obj2);
        }
        this.c = linkedHashMap2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Set<Name> a() {
        Sequence sequenceFilter = SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(this.f9220d.w()), this.a);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = sequenceFilter.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((JavaMethod) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Set<Name> b() {
        Sequence sequenceFilter = SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(this.f9220d.t()), this.f9221e);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = sequenceFilter.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((m) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Collection<JavaMethod> c(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        List<JavaMethod> list = this.b.get(name);
        return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public m d(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return this.c.get(name);
    }
}
