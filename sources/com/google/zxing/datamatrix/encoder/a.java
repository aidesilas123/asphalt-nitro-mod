package com.google.zxing.datamatrix.encoder;

/* JADX INFO: compiled from: ASCIIEncoder.java */
/* JADX INFO: loaded from: classes3.dex */
final class a implements g {
    a() {
    }

    private static char b(char c, char c2) {
        if (HighLevelEncoder.d(c) && HighLevelEncoder.d(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c + c2);
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        if (HighLevelEncoder.determineConsecutiveDigitCount(hVar.d(), hVar.f4362f) >= 2) {
            hVar.r(b(hVar.d().charAt(hVar.f4362f), hVar.d().charAt(hVar.f4362f + 1)));
            hVar.f4362f += 2;
            return;
        }
        char c = hVar.c();
        int iL = HighLevelEncoder.l(hVar.d(), hVar.f4362f, c());
        if (iL == c()) {
            if (!HighLevelEncoder.e(c)) {
                hVar.r((char) (c + 1));
                hVar.f4362f++;
                return;
            } else {
                hVar.r((char) 235);
                hVar.r((char) ((c - 128) + 1));
                hVar.f4362f++;
                return;
            }
        }
        if (iL == 1) {
            hVar.r((char) 230);
            hVar.o(1);
            return;
        }
        if (iL == 2) {
            hVar.r((char) 239);
            hVar.o(2);
            return;
        }
        if (iL == 3) {
            hVar.r((char) 238);
            hVar.o(3);
            return;
        }
        if (iL == 4) {
            hVar.r((char) 240);
            hVar.o(4);
        } else if (iL == 5) {
            hVar.r((char) 231);
            hVar.o(5);
        } else {
            throw new IllegalStateException("Illegal mode: " + iL);
        }
    }

    public int c() {
        return 0;
    }
}
