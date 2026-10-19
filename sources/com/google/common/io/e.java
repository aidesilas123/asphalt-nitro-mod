package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: ByteSink.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: compiled from: ByteSink.java */
    private final class b extends g {
        private final Charset a;

        private b(Charset charset) {
            this.a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.g
        public Writer a() throws IOException {
            return new OutputStreamWriter(e.this.b(), this.a);
        }

        public String toString() {
            String string = e.this.toString();
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 13 + strValueOf.length());
            sb.append(string);
            sb.append(".asCharSink(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    protected e() {
    }

    public g a(Charset charset) {
        return new b(charset);
    }

    public abstract OutputStream b() throws IOException;

    public void c(byte[] bArr) throws Throwable {
        Preconditions.checkNotNull(bArr);
        try {
            OutputStream outputStream = (OutputStream) Closer.create().a(b());
            outputStream.write(bArr);
            outputStream.flush();
        } finally {
        }
    }
}
