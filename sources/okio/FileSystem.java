package okio;

import java.io.IOException;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal._FileSystemKt;

/* JADX INFO: compiled from: FileSystem.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class FileSystem {
    public static final a a = new a(null);
    public static final FileSystem b;
    public static final Path c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FileSystem f10853d;

    /* JADX INFO: compiled from: FileSystem.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m1801write$default(FileSystem fileSystem, Path file, boolean z, Function1 writerAction, int i, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(writerAction, "writerAction");
        d dVarBuffer = Okio.buffer(fileSystem.p(file, z));
        Throwable th = null;
        try {
            objInvoke = writerAction.invoke(dVarBuffer);
        } catch (Throwable th2) {
            objInvoke = null;
            th = th2;
        }
        if (dVarBuffer != null) {
            try {
                dVarBuffer.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(objInvoke);
        return objInvoke;
    }

    static {
        FileSystem qVar;
        try {
            Class.forName("java.nio.file.Files");
            qVar = new r();
        } catch (ClassNotFoundException unused) {
            qVar = new q();
        }
        b = qVar;
        Path.Companion companion = Path.a;
        String property = System.getProperty("java.io.tmpdir");
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"java.io.tmpdir\")");
        c = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        Intrinsics.checkNotNullExpressionValue(classLoader, "ResourceFileSystem::class.java.classLoader");
        f10853d = new ResourceFileSystem(classLoader, false);
    }

    public static /* synthetic */ w appendingSink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.a(path, z);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.b(path, z);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.d(path, z);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.e(path, z);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.f(path, z);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.j(path, z);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z, boolean z2, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return fileSystem.n(path, z, z2);
    }

    public static /* synthetic */ w sink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.p(path, z);
    }

    public abstract w a(Path path, boolean z) throws IOException;

    public final void b(Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        _FileSystemKt.commonCreateDirectories(this, dir, z);
    }

    public final void c(Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        d(dir, false);
    }

    public abstract void d(Path path, boolean z) throws IOException;

    public abstract void e(Path path, boolean z) throws IOException;

    public void f(Path fileOrDirectory, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        _FileSystemKt.commonDeleteRecursively(this, fileOrDirectory, z);
    }

    public final boolean g(Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return _FileSystemKt.commonExists(this, path);
    }

    public abstract List<Path> h(Path path) throws IOException;

    public abstract List<Path> i(Path path);

    public Sequence<Path> j(Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return _FileSystemKt.commonListRecursively(this, dir, z);
    }

    public final FileMetadata k(Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return _FileSystemKt.commonMetadata(this, path);
    }

    public abstract FileMetadata l(Path path) throws IOException;

    public abstract FileHandle m(Path path) throws IOException;

    public abstract FileHandle n(Path path, boolean z, boolean z2) throws IOException;

    public final w o(Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return p(file, false);
    }

    public abstract w p(Path path, boolean z) throws IOException;

    public abstract y q(Path path) throws IOException;
}
