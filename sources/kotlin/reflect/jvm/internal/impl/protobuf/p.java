package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.List;

/* JADX INFO: compiled from: UninitializedMessageException.java */
/* JADX INFO: loaded from: classes5.dex */
public class p extends RuntimeException {
    private final List<String> a;

    public p(j jVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.a = null;
    }

    public d c() {
        return new d(getMessage());
    }
}
