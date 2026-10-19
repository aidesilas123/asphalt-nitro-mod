package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: LazyFieldLite.java */
/* JADX INFO: loaded from: classes5.dex */
public class f {
    private ByteString a;
    private ExtensionRegistryLite b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected volatile j f9709d;

    protected void a(j jVar) {
        if (this.f9709d != null) {
            return;
        }
        synchronized (this) {
            if (this.f9709d != null) {
                return;
            }
            try {
                if (this.a != null) {
                    this.f9709d = jVar.getParserForType().b(this.a, this.b);
                } else {
                    this.f9709d = jVar;
                }
            } catch (IOException unused) {
            }
        }
    }

    public int b() {
        return this.c ? this.f9709d.getSerializedSize() : this.a.size();
    }

    public j c(j jVar) {
        a(jVar);
        return this.f9709d;
    }

    public j d(j jVar) {
        j jVar2 = this.f9709d;
        this.f9709d = jVar;
        this.a = null;
        this.c = true;
        return jVar2;
    }
}
