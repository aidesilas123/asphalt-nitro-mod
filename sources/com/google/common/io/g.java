package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: compiled from: CharSink.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class g {
    protected g() {
    }

    public abstract Writer a() throws IOException;

    public void b(CharSequence charSequence) throws Throwable {
        Preconditions.checkNotNull(charSequence);
        try {
            Writer writer = (Writer) Closer.create().a(a());
            writer.append(charSequence);
            writer.flush();
        } finally {
        }
    }
}
