package com.google.zxing.datamatrix.encoder;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: EncoderContext.java */
/* JADX INFO: loaded from: classes3.dex */
final class h {
    private final String a;
    private SymbolShapeHint b;
    private com.google.zxing.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.zxing.b f4360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final StringBuilder f4361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4363g;
    private SymbolInfo h;
    private int i;

    h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.a = sb.toString();
        this.b = SymbolShapeHint.FORCE_NONE;
        this.f4361e = new StringBuilder(str.length());
        this.f4363g = -1;
    }

    private int h() {
        return this.a.length() - this.i;
    }

    public int a() {
        return this.f4361e.length();
    }

    public StringBuilder b() {
        return this.f4361e;
    }

    public char c() {
        return this.a.charAt(this.f4362f);
    }

    public String d() {
        return this.a;
    }

    public int e() {
        return this.f4363g;
    }

    public int f() {
        return h() - this.f4362f;
    }

    public SymbolInfo g() {
        return this.h;
    }

    public boolean i() {
        return this.f4362f < h();
    }

    public void j() {
        this.f4363g = -1;
    }

    public void k() {
        this.h = null;
    }

    public void l(com.google.zxing.b bVar, com.google.zxing.b bVar2) {
        this.c = bVar;
        this.f4360d = bVar2;
    }

    public void m(int i) {
        this.i = i;
    }

    public void n(SymbolShapeHint symbolShapeHint) {
        this.b = symbolShapeHint;
    }

    public void o(int i) {
        this.f4363g = i;
    }

    public void p() {
        q(a());
    }

    public void q(int i) {
        SymbolInfo symbolInfo = this.h;
        if (symbolInfo == null || i > symbolInfo.a()) {
            this.h = SymbolInfo.lookup(i, this.b, this.c, this.f4360d, true);
        }
    }

    public void r(char c) {
        this.f4361e.append(c);
    }

    public void s(String str) {
        this.f4361e.append(str);
    }
}
