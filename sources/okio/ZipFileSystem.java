package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Path;
import okio.internal.ZipKt;

/* JADX INFO: compiled from: ZipFileSystem.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ZipFileSystem extends FileSystem {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f10859e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    private static final Path f10860f = Path.Companion.get$default(Path.a, "/", false, 1, (Object) null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f10861g;
    private final FileSystem h;
    private final Map<Path, okio.internal.c> i;
    private final String j;

    /* JADX INFO: compiled from: ZipFileSystem.kt */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    public ZipFileSystem(Path zipPath, FileSystem fileSystem, Map<Path, okio.internal.c> entries, String str) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f10861g = zipPath;
        this.h = fileSystem;
        this.i = entries;
        this.j = str;
    }

    private final Path r(Path path) {
        return f10860f.q(path, true);
    }

    private final List<Path> s(Path path, boolean z) throws IOException {
        okio.internal.c cVar = this.i.get(r(path));
        if (cVar != null) {
            return CollectionsKt___CollectionsKt.toList(cVar.b());
        }
        if (z) {
            throw new IOException(Intrinsics.stringPlus("not a directory: ", path));
        }
        return null;
    }

    @Override // okio.FileSystem
    public w a(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void d(Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void e(Path path, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public List<Path> h(Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> listS = s(dir, true);
        Intrinsics.checkNotNull(listS);
        return listS;
    }

    @Override // okio.FileSystem
    public List<Path> i(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return s(dir, false);
    }

    @Override // okio.FileSystem
    public FileMetadata l(Path path) throws Throwable {
        e eVarBuffer;
        Intrinsics.checkNotNullParameter(path, "path");
        okio.internal.c cVar = this.i.get(r(path));
        Throwable th = null;
        if (cVar == null) {
            return null;
        }
        FileMetadata fileMetadata = new FileMetadata(!cVar.h(), cVar.h(), null, cVar.h() ? null : Long.valueOf(cVar.g()), null, cVar.e(), null, null, 128, null);
        if (cVar.f() == -1) {
            return fileMetadata;
        }
        FileHandle fileHandleM = this.h.m(this.f10861g);
        try {
            eVarBuffer = Okio.buffer(fileHandleM.l(cVar.f()));
        } catch (Throwable th2) {
            th = th2;
            eVarBuffer = null;
        }
        if (fileHandleM != null) {
            try {
                fileHandleM.close();
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
        Intrinsics.checkNotNull(eVarBuffer);
        return ZipKt.readLocalHeader(eVarBuffer, fileMetadata);
    }

    @Override // okio.FileSystem
    public FileHandle m(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    public FileHandle n(Path file, boolean z, boolean z2) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    public w p(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public y q(Path path) throws Throwable {
        e eVarBuffer;
        Intrinsics.checkNotNullParameter(path, "path");
        okio.internal.c cVar = this.i.get(r(path));
        if (cVar == null) {
            throw new FileNotFoundException(Intrinsics.stringPlus("no such file: ", path));
        }
        FileHandle fileHandleM = this.h.m(this.f10861g);
        Throwable th = null;
        try {
            eVarBuffer = Okio.buffer(fileHandleM.l(cVar.f()));
        } catch (Throwable th2) {
            eVarBuffer = null;
            th = th2;
        }
        if (fileHandleM != null) {
            try {
                fileHandleM.close();
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
        Intrinsics.checkNotNull(eVarBuffer);
        ZipKt.skipLocalHeader(eVarBuffer);
        return cVar.d() == 0 ? new okio.internal.b(eVarBuffer, cVar.g(), true) : new okio.internal.b(new n(new okio.internal.b(eVarBuffer, cVar.c(), true), new Inflater(true)), cVar.g(), false);
    }
}
