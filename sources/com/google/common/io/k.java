package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: LineReader.java */
/* JADX INFO: loaded from: classes3.dex */
public final class k {
    private final Readable a;
    private final Reader b;
    private final CharBuffer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final char[] f3919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Queue<String> f3920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f3921f;

    /* JADX INFO: compiled from: LineReader.java */
    class a extends i {
        a() {
        }

        @Override // com.google.common.io.i
        protected void d(String str, String str2) {
            k.this.f3920e.add(str);
        }
    }

    public k(Readable readable) {
        CharBuffer charBufferC = CharStreams.c();
        this.c = charBufferC;
        this.f3919d = charBufferC.array();
        this.f3920e = new ArrayDeque();
        this.f3921f = new a();
        this.a = (Readable) Preconditions.checkNotNull(readable);
        this.b = readable instanceof Reader ? (Reader) readable : null;
    }

    public String b() throws IOException {
        int i;
        while (true) {
            if (this.f3920e.peek() != null) {
                break;
            }
            h.a(this.c);
            Reader reader = this.b;
            if (reader != null) {
                char[] cArr = this.f3919d;
                i = reader.read(cArr, 0, cArr.length);
            } else {
                i = this.a.read(this.c);
            }
            if (i == -1) {
                this.f3921f.b();
                break;
            }
            this.f3921f.a(this.f3919d, 0, i);
        }
        return this.f3920e.poll();
    }
}
