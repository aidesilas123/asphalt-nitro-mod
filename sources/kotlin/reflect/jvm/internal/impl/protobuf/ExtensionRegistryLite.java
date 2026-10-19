package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes5.dex */
public class ExtensionRegistryLite {
    private static final ExtensionRegistryLite a = new ExtensionRegistryLite(true);
    private final Map<a, GeneratedMessageLite.f<?, ?>> b;

    private static final class a {
        private final Object a;
        private final int b;

        a(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * 65535) + this.b;
        }
    }

    ExtensionRegistryLite() {
        this.b = new HashMap();
    }

    private ExtensionRegistryLite(boolean z) {
        this.b = Collections.emptyMap();
    }

    public static ExtensionRegistryLite getEmptyRegistry() {
        return a;
    }

    public static ExtensionRegistryLite newInstance() {
        return new ExtensionRegistryLite();
    }

    public final void a(GeneratedMessageLite.f<?, ?> fVar) {
        this.b.put(new a(fVar.b(), fVar.d()), fVar);
    }

    public <ContainingType extends j> GeneratedMessageLite.f<ContainingType, ?> b(ContainingType containingtype, int i) {
        return (GeneratedMessageLite.f) this.b.get(new a(containingtype, i));
    }
}
