package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class CycleDetector {

    private static class ComponentNode {
        private final Component<?> a;
        private final Set<ComponentNode> b = new HashSet();
        private final Set<ComponentNode> c = new HashSet();

        ComponentNode(Component<?> component) {
            this.a = component;
        }

        void a(ComponentNode componentNode) {
            this.b.add(componentNode);
        }

        void b(ComponentNode componentNode) {
            this.c.add(componentNode);
        }

        Component<?> c() {
            return this.a;
        }

        Set<ComponentNode> d() {
            return this.b;
        }

        boolean e() {
            return this.b.isEmpty();
        }

        boolean f() {
            return this.c.isEmpty();
        }

        void g(ComponentNode componentNode) {
            this.c.remove(componentNode);
        }
    }

    private static class Dep {
        private final Class<?> a;
        private final boolean b;

        private Dep(Class<?> cls, boolean z) {
            this.a = cls;
            this.b = z;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Dep)) {
                return false;
            }
            Dep dep = (Dep) obj;
            return dep.a.equals(this.a) && dep.b == this.b;
        }

        public int hashCode() {
            return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.b).hashCode();
        }
    }

    CycleDetector() {
    }

    static void a(List<Component<?>> list) {
        Set<ComponentNode> setC = c(list);
        Set<ComponentNode> setB = b(setC);
        int i = 0;
        while (!setB.isEmpty()) {
            ComponentNode next = setB.iterator().next();
            setB.remove(next);
            i++;
            for (ComponentNode componentNode : next.d()) {
                componentNode.g(next);
                if (componentNode.f()) {
                    setB.add(componentNode);
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ComponentNode componentNode2 : setC) {
            if (!componentNode2.f() && !componentNode2.e()) {
                arrayList.add(componentNode2.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set<ComponentNode> b(Set<ComponentNode> set) {
        HashSet hashSet = new HashSet();
        for (ComponentNode componentNode : set) {
            if (componentNode.f()) {
                hashSet.add(componentNode);
            }
        }
        return hashSet;
    }

    private static Set<ComponentNode> c(List<Component<?>> list) {
        Set<ComponentNode> set;
        HashMap map = new HashMap(list.size());
        Iterator<Component<?>> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (ComponentNode componentNode : (Set) it2.next()) {
                        for (Dependency dependency : componentNode.c().a()) {
                            if (dependency.d() && (set = (Set) map.get(new Dep(dependency.b(), dependency.f()))) != null) {
                                for (ComponentNode componentNode2 : set) {
                                    componentNode.a(componentNode2);
                                    componentNode2.b(componentNode);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            Component<?> next = it.next();
            ComponentNode componentNode3 = new ComponentNode(next);
            for (Class<? super Object> cls : next.c()) {
                Dep dep = new Dep(cls, !next.g());
                if (!map.containsKey(dep)) {
                    map.put(dep, new HashSet());
                }
                Set set2 = (Set) map.get(dep);
                if (!set2.isEmpty() && !dep.b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(componentNode3);
            }
        }
    }
}
