package kotlin.reflect.jvm.internal.impl.utils;

import com.json.v4;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public class DFS {

    /* JADX INFO: Add missing generic type declarations: [N] */
    static class a<N> extends b<N, Boolean> {
        final /* synthetic */ Function1 a;
        final /* synthetic */ boolean[] b;

        a(Function1 function1, boolean[] zArr) {
            this.a = function1;
            this.b = zArr;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        public boolean c(N n) {
            if (((Boolean) this.a.invoke(n)).booleanValue()) {
                this.b[0] = true;
            }
            return !this.b[0];
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Boolean a() {
            return Boolean.valueOf(this.b[0]);
        }
    }

    public static abstract class b<N, R> implements e<N, R> {
        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        public void b(N n) {
        }
    }

    public static abstract class c<N, R, C extends Iterable<R>> extends b<N, C> {
        protected final C a;

        protected c(C c) {
            if (c == null) {
                d(0);
            }
            this.a = c;
        }

        private static /* synthetic */ void d(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "result";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            } else {
                objArr[1] = "result";
            }
            if (i != 1) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 1) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public C a() {
            C c = this.a;
            if (c == null) {
                d(1);
            }
            return c;
        }
    }

    public interface d<N> {
        Iterable<? extends N> a(N n);
    }

    public interface e<N, R> {
        R a();

        void b(N n);

        boolean c(N n);
    }

    public static abstract class f<N, R> extends c<N, R, LinkedList<R>> {
        protected f() {
            super(new LinkedList());
        }
    }

    public interface g<N> {
        boolean a(N n);
    }

    public static class h<N> implements g<N> {
        private final Set<N> a;

        public h() {
            this(new HashSet());
        }

        public h(Set<N> set) {
            if (set == null) {
                b(0);
            }
            this.a = set;
        }

        private static /* synthetic */ void b(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "visited", "kotlin/reflect/jvm/internal/impl/utils/DFS$VisitedWithSet", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.g
        public boolean a(N n) {
            return this.a.add(n);
        }
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (i) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = v4.l;
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <N, R> R dfs(Collection<N> collection, d<N> dVar, e<N, R> eVar) {
        if (collection == null) {
            a(4);
        }
        if (dVar == null) {
            a(5);
        }
        if (eVar == null) {
            a(6);
        }
        return (R) dfs(collection, dVar, new h(), eVar);
    }

    public static <N, R> R dfs(Collection<N> collection, d<N> dVar, g<N> gVar, e<N, R> eVar) {
        if (collection == null) {
            a(0);
        }
        if (dVar == null) {
            a(1);
        }
        if (gVar == null) {
            a(2);
        }
        if (eVar == null) {
            a(3);
        }
        Iterator<N> it = collection.iterator();
        while (it.hasNext()) {
            doDfs(it.next(), dVar, gVar, eVar);
        }
        return eVar.a();
    }

    public static <N> void doDfs(N n, d<N> dVar, g<N> gVar, e<N, ?> eVar) {
        if (n == null) {
            a(22);
        }
        if (dVar == null) {
            a(23);
        }
        if (gVar == null) {
            a(24);
        }
        if (eVar == null) {
            a(25);
        }
        if (gVar.a(n) && eVar.c(n)) {
            Iterator<? extends N> it = dVar.a(n).iterator();
            while (it.hasNext()) {
                doDfs(it.next(), dVar, gVar, eVar);
            }
            eVar.b(n);
        }
    }

    public static <N> Boolean ifAny(Collection<N> collection, d<N> dVar, Function1<N, Boolean> function1) {
        if (collection == null) {
            a(7);
        }
        if (dVar == null) {
            a(8);
        }
        if (function1 == null) {
            a(9);
        }
        return (Boolean) dfs(collection, dVar, new a(function1, new boolean[1]));
    }
}
