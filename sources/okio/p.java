package okio;

import java.io.RandomAccessFile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmFileHandle.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class p extends FileHandle {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RandomAccessFile f10894d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(boolean z, RandomAccessFile randomAccessFile) {
        super(z);
        Intrinsics.checkNotNullParameter(randomAccessFile, "randomAccessFile");
        this.f10894d = randomAccessFile;
    }

    @Override // okio.FileHandle
    protected synchronized void d() {
        this.f10894d.close();
    }

    @Override // okio.FileHandle
    protected synchronized void e() {
        this.f10894d.getFD().sync();
    }

    @Override // okio.FileHandle
    protected synchronized int f(long j, byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f10894d.seek(j);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i4 = this.f10894d.read(array, i, i2 - i3);
            if (i4 != -1) {
                i3 += i4;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }

    @Override // okio.FileHandle
    protected synchronized long g() {
        return this.f10894d.length();
    }

    @Override // okio.FileHandle
    protected synchronized void h(long j, byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f10894d.seek(j);
        this.f10894d.write(array, i, i2);
    }
}
