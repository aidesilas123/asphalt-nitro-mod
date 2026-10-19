package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.o3;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Traverser<N> {
    private final r0<N> a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class InsertionOrder {
        public static final InsertionOrder a = new a("FRONT", 0);
        public static final InsertionOrder b = new b("BACK", 1);
        private static final /* synthetic */ InsertionOrder[] c = e();

        enum a extends InsertionOrder {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.graph.Traverser.InsertionOrder
            <T> void f(Deque<T> deque, T t) {
                deque.addFirst(t);
            }
        }

        enum b extends InsertionOrder {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.graph.Traverser.InsertionOrder
            <T> void f(Deque<T> deque, T t) {
                deque.addLast(t);
            }
        }

        private InsertionOrder(String str, int i) {
        }

        /* synthetic */ InsertionOrder(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ InsertionOrder[] e() {
            return new InsertionOrder[]{a, b};
        }

        public static InsertionOrder valueOf(String str) {
            return (InsertionOrder) Enum.valueOf(InsertionOrder.class, str);
        }

        public static InsertionOrder[] values() {
            return (InsertionOrder[]) c.clone();
        }

        abstract <T> void f(Deque<T> deque, T t);
    }

    class a extends Traverser<N> {
        final /* synthetic */ r0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(r0 r0Var, r0 r0Var2) {
            super(r0Var, null);
            this.b = r0Var2;
        }

        @Override // com.google.common.graph.Traverser
        d<N> c() {
            return d.b(this.b);
        }
    }

    class b extends Traverser<N> {
        final /* synthetic */ r0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(r0 r0Var, r0 r0Var2) {
            super(r0Var, null);
            this.b = r0Var2;
        }

        @Override // com.google.common.graph.Traverser
        d<N> c() {
            return d.c(this.b);
        }
    }

    class c implements Iterable<N> {
        final /* synthetic */ ImmutableSet a;

        c(ImmutableSet immutableSet) {
            this.a = immutableSet;
        }

        @Override // java.lang.Iterable
        public Iterator<N> iterator() {
            return Traverser.this.c().a(this.a.iterator());
        }
    }

    private static abstract class d<N> {
        final r0<N> a;

        class a extends d<N> {
            final /* synthetic */ Set b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(r0 r0Var, Set set) {
                super(r0Var);
                this.b = set;
            }

            @Override // com.google.common.graph.Traverser.d
            N e(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                while (first.hasNext()) {
                    N next = first.next();
                    Objects.requireNonNull(next);
                    if (this.b.add(next)) {
                        return next;
                    }
                }
                deque.removeFirst();
                return null;
            }
        }

        class b extends d<N> {
            b(r0 r0Var) {
                super(r0Var);
            }

            @Override // com.google.common.graph.Traverser.d
            N e(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                if (first.hasNext()) {
                    return (N) Preconditions.checkNotNull(first.next());
                }
                deque.removeFirst();
                return null;
            }
        }

        class c extends AbstractIterator<N> {
            final /* synthetic */ Deque c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ InsertionOrder f3853d;

            c(Deque deque, InsertionOrder insertionOrder) {
                this.c = deque;
                this.f3853d = insertionOrder;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                do {
                    N n = (N) d.this.e(this.c);
                    if (n != null) {
                        Iterator<? extends N> it = d.this.a.a(n).iterator();
                        if (it.hasNext()) {
                            this.f3853d.f(this.c, it);
                        }
                        return n;
                    }
                } while (!this.c.isEmpty());
                return c();
            }
        }

        d(r0<N> r0Var) {
            this.a = r0Var;
        }

        static <N> d<N> b(r0<N> r0Var) {
            return new a(r0Var, new HashSet());
        }

        static <N> d<N> c(r0<N> r0Var) {
            return new b(r0Var);
        }

        private Iterator<N> d(Iterator<? extends N> it, InsertionOrder insertionOrder) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(it);
            return new c(arrayDeque, insertionOrder);
        }

        final Iterator<N> a(Iterator<? extends N> it) {
            return d(it, InsertionOrder.b);
        }

        abstract N e(Deque<Iterator<? extends N>> deque);
    }

    private Traverser(r0<N> r0Var) {
        this.a = (r0) Preconditions.checkNotNull(r0Var);
    }

    /* synthetic */ Traverser(r0 r0Var, a aVar) {
        this(r0Var);
    }

    private ImmutableSet<N> d(Iterable<? extends N> iterable) {
        ImmutableSet<N> immutableSetCopyOf = ImmutableSet.copyOf(iterable);
        o3<N> it = immutableSetCopyOf.iterator();
        while (it.hasNext()) {
            this.a.a(it.next());
        }
        return immutableSetCopyOf;
    }

    public static <N> Traverser<N> forGraph(r0<N> r0Var) {
        return new a(r0Var, r0Var);
    }

    public static <N> Traverser<N> forTree(r0<N> r0Var) {
        if (r0Var instanceof s) {
            Preconditions.checkArgument(((s) r0Var).d(), "Undirected graphs can never be trees.");
        }
        if (r0Var instanceof k0) {
            Preconditions.checkArgument(((k0) r0Var).d(), "Undirected networks can never be trees.");
        }
        return new b(r0Var, r0Var);
    }

    public final Iterable<N> a(Iterable<? extends N> iterable) {
        return new c(d(iterable));
    }

    public final Iterable<N> b(N n) {
        return a(ImmutableSet.of(n));
    }

    abstract d<N> c();
}
