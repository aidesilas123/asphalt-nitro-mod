package com.google.zxing.datamatrix.encoder;

/* JADX INFO: compiled from: X12Encoder.java */
/* JADX INFO: loaded from: classes3.dex */
final class j extends c {
    j() {
    }

    @Override // com.google.zxing.datamatrix.encoder.c, com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.i()) {
                break;
            }
            char c = hVar.c();
            hVar.f4362f++;
            c(c, sb);
            if (sb.length() % 3 == 0) {
                c.h(hVar, sb);
                if (HighLevelEncoder.l(hVar.d(), hVar.f4362f, f()) != f()) {
                    hVar.o(0);
                    break;
                }
            }
        }
        g(hVar, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    int c(char c, StringBuilder sb) {
        if (c == '\r') {
            sb.append((char) 0);
        } else if (c == ' ') {
            sb.append((char) 3);
        } else if (c == '*') {
            sb.append((char) 1);
        } else if (c == '>') {
            sb.append((char) 2);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else if (c < 'A' || c > 'Z') {
            HighLevelEncoder.c(c);
        } else {
            sb.append((char) ((c - 'A') + 14));
        }
        return 1;
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    public int f() {
        return 3;
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    void g(h hVar, StringBuilder sb) {
        hVar.p();
        int iA = hVar.g().a() - hVar.a();
        hVar.f4362f -= sb.length();
        if (hVar.f() > 1 || iA > 1 || hVar.f() != iA) {
            hVar.r((char) 254);
        }
        if (hVar.e() < 0) {
            hVar.o(0);
        }
    }
}
