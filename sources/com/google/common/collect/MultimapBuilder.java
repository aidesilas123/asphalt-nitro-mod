package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MultimapBuilder<K0, V0> {

    private enum LinkedListSupplier implements com.google.common.base.m<List<?>> {
        INSTANCE;

        public static <V> com.google.common.base.m<List<V>> instance() {
            return INSTANCE;
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public List<?> get() {
            return new LinkedList();
        }
    }

    class a extends e<Object> {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }
    }

    class b extends e<Object> {
        final /* synthetic */ int a;

        b(int i) {
            this.a = i;
        }
    }

    class c extends e<K0> {
        final /* synthetic */ Comparator a;

        c(Comparator comparator) {
            this.a = comparator;
        }
    }

    class d extends e<K0> {
        final /* synthetic */ Class a;

        d(Class cls) {
            this.a = cls;
        }
    }

    public static abstract class e<K0> {
        e() {
        }
    }

    private MultimapBuilder() {
    }

    public static <K0 extends Enum<K0>> e<K0> enumKeys(Class<K0> cls) {
        Preconditions.checkNotNull(cls);
        return new d(cls);
    }

    public static e<Object> hashKeys() {
        return hashKeys(8);
    }

    public static e<Object> hashKeys(int i) {
        z.b(i, "expectedKeys");
        return new a(i);
    }

    public static e<Object> linkedHashKeys() {
        return linkedHashKeys(8);
    }

    public static e<Object> linkedHashKeys(int i) {
        z.b(i, "expectedKeys");
        return new b(i);
    }

    public static e<Comparable> treeKeys() {
        return treeKeys(Ordering.natural());
    }

    public static <K0> e<K0> treeKeys(Comparator<K0> comparator) {
        Preconditions.checkNotNull(comparator);
        return new c(comparator);
    }
}
