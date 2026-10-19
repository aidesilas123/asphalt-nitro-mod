package com.bytedance.sdk.openadsdk.a;

import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.component.utils.l;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: LruDiskFile.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    private final ExecutorService a = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LruDiskFile.java */
    private class CallableC0124a implements Callable<Void> {
        private final File b;

        private CallableC0124a(File file) {
            this.b = file;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            a.this.b(this.b);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        try {
            f.b(file);
        } catch (Throwable th) {
            l.a("LruDiskFile", "setLastModifiedNowError", th);
        }
        a(f.a(file.getParentFile()));
    }

    public void a(File file) throws IOException {
        this.a.submit(new CallableC0124a(file));
    }

    protected abstract void a(List<File> list);

    protected abstract boolean a(long j, int i);

    protected abstract boolean a(File file, long j, int i);

    long b(List<File> list) {
        Iterator<File> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }
}
