package kotlin.io.path;

import java.nio.file.FileSystemException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: kotlin.io.path.d, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PathRecursiveFunctions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0007j\u0002`\bJ\u000e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\fJ\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\fR\u001b\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Lkotlin/io/path/ExceptionsCollector;", "", "limit", "", "(I)V", "collectedExceptions", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getCollectedExceptions", "()Ljava/util/List;", "path", "Ljava/nio/file/Path;", "getPath", "()Ljava/nio/file/Path;", "setPath", "(Ljava/nio/file/Path;)V", "<set-?>", "totalExceptions", "getTotalExceptions", "()I", "collect", "", "exception", "enterEntry", "name", "exitEntry", "kotlin-stdlib-jdk7"}, mv = {1, 9, 0}, xi = 48)
final class ExceptionsCollector {
    private final int a;
    private int b;
    private final List<Exception> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Path f8922d;

    public ExceptionsCollector(int i) {
        this.a = i;
        this.c = new ArrayList();
    }

    public /* synthetic */ ExceptionsCollector(int i, int i2, n nVar) {
        this((i2 & 1) != 0 ? 64 : i);
    }

    public final void a(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        this.b++;
        if (this.c.size() < this.a) {
            if (this.f8922d != null) {
                Throwable thInitCause = new FileSystemException(String.valueOf(this.f8922d)).initCause(exception);
                Intrinsics.checkNotNull(thInitCause, "null cannot be cast to non-null type java.nio.file.FileSystemException");
                exception = (FileSystemException) thInitCause;
            }
            this.c.add(exception);
        }
    }

    public final void b(Path name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Path path = this.f8922d;
        this.f8922d = path != null ? path.resolve(name) : null;
    }

    public final void c(Path name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Path path = this.f8922d;
        if (!Intrinsics.areEqual(name, path != null ? path.getFileName() : null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        Path path2 = this.f8922d;
        this.f8922d = path2 != null ? path2.getParent() : null;
    }

    public final List<Exception> d() {
        return this.c;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getB() {
        return this.b;
    }

    public final void f(Path path) {
        this.f8922d = path;
    }
}
