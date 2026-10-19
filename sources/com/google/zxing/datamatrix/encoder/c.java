package com.google.zxing.datamatrix.encoder;

/* JADX INFO: compiled from: C40Encoder.java */
/* JADX INFO: loaded from: classes3.dex */
class c implements g {
    c() {
    }

    private int b(h hVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hVar.f4362f--;
        int iC = c(hVar.c(), sb2);
        hVar.k();
        return iC;
    }

    private static String e(CharSequence charSequence) {
        int iCharAt = (charSequence.charAt(0) * 1600) + (charSequence.charAt(1) * '(') + charSequence.charAt(2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    static void h(h hVar, StringBuilder sb) {
        hVar.s(e(sb));
        sb.delete(0, 3);
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.i()) {
                break;
            }
            char c = hVar.c();
            hVar.f4362f++;
            int iC = c(c, sb);
            int iA = hVar.a() + ((sb.length() / 3) * 2);
            hVar.q(iA);
            int iA2 = hVar.g().a() - iA;
            if (!hVar.i()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && iA2 != 2) {
                    iC = b(hVar, sb, sb2, iC);
                }
                while (sb.length() % 3 == 1 && (iC > 3 || iA2 != 1)) {
                    iC = b(hVar, sb, sb2, iC);
                }
            } else if (sb.length() % 3 == 0 && HighLevelEncoder.l(hVar.d(), hVar.f4362f, f()) != f()) {
                hVar.o(0);
                break;
            }
        }
        g(hVar, sb);
    }

    int c(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
        if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        }
        if (c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c > 127) {
            sb.append("\u0001\u001e");
            return c((char) (c - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c - '`'));
        return 2;
    }

    void d(h hVar) {
        StringBuilder sb = new StringBuilder();
        int i = hVar.f4362f;
        int length = 0;
        int iC = 0;
        while (hVar.i()) {
            char c = hVar.c();
            hVar.f4362f++;
            iC = c(c, sb);
            if (sb.length() % 3 == 0) {
                i = hVar.f4362f;
                length = sb.length();
            }
        }
        if (length != sb.length()) {
            int iA = hVar.a() + ((sb.length() / 3) * 2) + 1;
            hVar.q(iA);
            int iA2 = hVar.g().a() - iA;
            int length2 = sb.length() % 3;
            if ((length2 == 2 && iA2 != 2) || (length2 == 1 && (iC > 3 || iA2 != 1))) {
                sb.setLength(length);
                hVar.f4362f = i;
            }
        }
        if (sb.length() > 0) {
            hVar.r((char) 230);
        }
        g(hVar, sb);
    }

    public int f() {
        return 1;
    }

    void g(h hVar, StringBuilder sb) {
        int length = (sb.length() / 3) * 2;
        int length2 = sb.length() % 3;
        int iA = hVar.a() + length;
        hVar.q(iA);
        int iA2 = hVar.g().a() - iA;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                h(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
        } else if (iA2 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                h(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
            hVar.f4362f--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                h(hVar, sb);
            }
            if (iA2 > 0 || hVar.i()) {
                hVar.r((char) 254);
            }
        }
        hVar.o(0);
    }
}
