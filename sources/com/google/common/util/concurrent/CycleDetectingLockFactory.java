package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class CycleDetectingLockFactory {
    private static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, c>> a = new MapMaker().l().i();
    private static final Logger b = Logger.getLogger(CycleDetectingLockFactory.class.getName());
    private static final ThreadLocal<ArrayList<c>> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d f3975d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class Policies implements d {
        public static final Policies a = new a("THROW", 0);
        public static final Policies b = new b("WARN", 1);
        public static final Policies c = new c("DISABLED", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ Policies[] f3976d = e();

        enum a extends Policies {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.d
            public void a(e eVar) {
                throw eVar;
            }
        }

        enum b extends Policies {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.d
            public void a(e eVar) {
                CycleDetectingLockFactory.b.log(Level.SEVERE, "Detected potential deadlock", (Throwable) eVar);
            }
        }

        enum c extends Policies {
            c(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.d
            public void a(e eVar) {
            }
        }

        private Policies(String str, int i) {
        }

        /* synthetic */ Policies(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ Policies[] e() {
            return new Policies[]{a, b, c};
        }

        public static Policies valueOf(String str) {
            return (Policies) Enum.valueOf(Policies.class, str);
        }

        public static Policies[] values() {
            return (Policies[]) f3976d.clone();
        }
    }

    class a extends ThreadLocal<ArrayList<c>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<c> initialValue() {
            return Lists.newArrayListWithCapacity(3);
        }
    }

    private static class b extends IllegalStateException {
        static final StackTraceElement[] a = new StackTraceElement[0];
        static final ImmutableSet<String> b = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), b.class.getName(), c.class.getName());

        b(c cVar, c cVar2) {
            String strD = cVar.d();
            String strD2 = cVar2.d();
            StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 4 + String.valueOf(strD2).length());
            sb.append(strD);
            sb.append(" -> ");
            sb.append(strD2);
            super(sb.toString());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (f.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(a);
                    return;
                } else {
                    if (!b.contains(stackTrace[i].getClassName())) {
                        setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                        return;
                    }
                }
            }
        }
    }

    private static class c {
        final Map<c, b> a = new MapMaker().l().i();
        final Map<c, e> b = new MapMaker().l().i();
        final String c;

        c(String str) {
            this.c = (String) Preconditions.checkNotNull(str);
        }

        private b c(c cVar, Set<c> set) {
            if (!set.add(this)) {
                return null;
            }
            b bVar = this.a.get(cVar);
            if (bVar != null) {
                return bVar;
            }
            for (Map.Entry<c, b> entry : this.a.entrySet()) {
                c key = entry.getKey();
                b bVarC = key.c(cVar, set);
                if (bVarC != null) {
                    b bVar2 = new b(key, this);
                    bVar2.setStackTrace(entry.getValue().getStackTrace());
                    bVar2.initCause(bVarC);
                    return bVar2;
                }
            }
            return null;
        }

        void a(d dVar, c cVar) {
            Preconditions.checkState(this != cVar, "Attempted to acquire multiple locks with the same rank %s", cVar.d());
            if (this.a.containsKey(cVar)) {
                return;
            }
            e eVar = this.b.get(cVar);
            a aVar = null;
            if (eVar != null) {
                dVar.a(new e(cVar, this, eVar.c(), aVar));
                return;
            }
            b bVarC = cVar.c(this, Sets.newIdentityHashSet());
            if (bVarC == null) {
                this.a.put(cVar, new b(cVar, this));
                return;
            }
            e eVar2 = new e(cVar, this, bVarC, aVar);
            this.b.put(cVar, eVar2);
            dVar.a(eVar2);
        }

        void b(d dVar, List<c> list) {
            Iterator<c> it = list.iterator();
            while (it.hasNext()) {
                a(dVar, it.next());
            }
        }

        String d() {
            return this.c;
        }
    }

    public interface d {
        void a(e eVar);
    }

    public static final class e extends b {
        private final b c;

        private e(c cVar, c cVar2, b bVar) {
            super(cVar, cVar2);
            this.c = bVar;
            initCause(bVar);
        }

        /* synthetic */ e(c cVar, c cVar2, b bVar, a aVar) {
            this(cVar, cVar2, bVar);
        }

        public b c() {
            return this.c;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb = new StringBuilder(message);
            for (Throwable cause = this.c; cause != null; cause = cause.getCause()) {
                sb.append(", ");
                sb.append(cause.getMessage());
            }
            return sb.toString();
        }
    }

    public static final class f<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Map<E, c> f3977e;

        f(d dVar, Map<E, c> map) {
            super(dVar, null);
            this.f3977e = map;
        }
    }

    private CycleDetectingLockFactory(d dVar) {
        this.f3975d = (d) Preconditions.checkNotNull(dVar);
    }

    /* synthetic */ CycleDetectingLockFactory(d dVar, a aVar) {
        this(dVar);
    }

    static <E extends Enum<E>> Map<E, c> b(Class<E> cls) {
        EnumMap enumMapNewEnumMap = Maps.newEnumMap(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(length);
        int i = 0;
        for (E e2 : enumConstants) {
            c cVar = new c(c(e2));
            arrayListNewArrayListWithCapacity.add(cVar);
            enumMapNewEnumMap.put(e2, cVar);
        }
        for (int i2 = 1; i2 < length; i2++) {
            ((c) arrayListNewArrayListWithCapacity.get(i2)).b(Policies.a, arrayListNewArrayListWithCapacity.subList(0, i2));
        }
        while (i < length - 1) {
            i++;
            ((c) arrayListNewArrayListWithCapacity.get(i)).b(Policies.c, arrayListNewArrayListWithCapacity.subList(i, length));
        }
        return Collections.unmodifiableMap(enumMapNewEnumMap);
    }

    private static String c(Enum<?> r3) {
        String simpleName = r3.getDeclaringClass().getSimpleName();
        String strName = r3.name();
        StringBuilder sb = new StringBuilder(simpleName.length() + 1 + String.valueOf(strName).length());
        sb.append(simpleName);
        sb.append(".");
        sb.append(strName);
        return sb.toString();
    }

    private static <E extends Enum<E>> Map<? extends E, c> d(Class<E> cls) {
        ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, c>> concurrentMap = a;
        Map<? extends E, c> map = (Map) concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum<?>, c> mapB = b(cls);
        return (Map) MoreObjects.firstNonNull(concurrentMap.putIfAbsent(cls, mapB), mapB);
    }

    public static CycleDetectingLockFactory newInstance(d dVar) {
        return new CycleDetectingLockFactory(dVar);
    }

    public static <E extends Enum<E>> f<E> newInstanceWithExplicitOrdering(Class<E> cls, d dVar) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(dVar);
        return new f<>(dVar, d(cls));
    }
}
