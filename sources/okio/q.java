package okio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmSystemFileSystem.kt */
/* JADX INFO: loaded from: classes5.dex */
public class q extends FileSystem {
    private final List<Path> r(Path path, boolean z) throws IOException {
        File fileS = path.s();
        String[] list = fileS.list();
        if (list == null) {
            if (!z) {
                return null;
            }
            if (fileS.exists()) {
                throw new IOException(Intrinsics.stringPlus("failed to list ", path));
            }
            throw new FileNotFoundException(Intrinsics.stringPlus("no such file: ", path));
        }
        ArrayList arrayList = new ArrayList();
        for (String it : list) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(path.m(it));
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
        return arrayList;
    }

    private final void s(Path path) throws IOException {
        if (g(path)) {
            throw new IOException(path + " already exists.");
        }
    }

    private final void t(Path path) throws IOException {
        if (g(path)) {
            return;
        }
        throw new IOException(path + " doesn't exist.");
    }

    @Override // okio.FileSystem
    public w a(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        if (z) {
            t(file);
        }
        return Okio.sink(file.s(), true);
    }

    @Override // okio.FileSystem
    public void d(Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        if (dir.s().mkdir()) {
            return;
        }
        FileMetadata fileMetadataL = l(dir);
        boolean z2 = false;
        if (fileMetadataL != null && fileMetadataL.e()) {
            z2 = true;
        }
        if (!z2) {
            throw new IOException(Intrinsics.stringPlus("failed to create directory: ", dir));
        }
        if (z) {
            throw new IOException(dir + " already exist.");
        }
    }

    @Override // okio.FileSystem
    public void e(Path path, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        File fileS = path.s();
        if (fileS.delete()) {
            return;
        }
        if (fileS.exists()) {
            throw new IOException(Intrinsics.stringPlus("failed to delete ", path));
        }
        if (z) {
            throw new FileNotFoundException(Intrinsics.stringPlus("no such file: ", path));
        }
    }

    @Override // okio.FileSystem
    public List<Path> h(Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> listR = r(dir, true);
        Intrinsics.checkNotNull(listR);
        return listR;
    }

    @Override // okio.FileSystem
    public List<Path> i(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return r(dir, false);
    }

    @Override // okio.FileSystem
    public FileMetadata l(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        File fileS = path.s();
        boolean zIsFile = fileS.isFile();
        boolean zIsDirectory = fileS.isDirectory();
        long jLastModified = fileS.lastModified();
        long length = fileS.length();
        if (zIsFile || zIsDirectory || jLastModified != 0 || length != 0 || fileS.exists()) {
            return new FileMetadata(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null, null, 128, null);
        }
        return null;
    }

    @Override // okio.FileSystem
    public FileHandle m(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return new p(false, new RandomAccessFile(file.s(), "r"));
    }

    @Override // okio.FileSystem
    public FileHandle n(Path file, boolean z, boolean z2) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!((z && z2) ? false : true)) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.".toString());
        }
        if (z) {
            s(file);
        }
        if (z2) {
            t(file);
        }
        return new p(true, new RandomAccessFile(file.s(), "rw"));
    }

    @Override // okio.FileSystem
    public w p(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        if (z) {
            s(file);
        }
        return Okio__JvmOkioKt.sink$default(file.s(), false, 1, null);
    }

    @Override // okio.FileSystem
    public y q(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        return Okio.source(file.s());
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
