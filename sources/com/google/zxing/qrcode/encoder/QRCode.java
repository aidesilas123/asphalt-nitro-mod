package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;

/* JADX INFO: loaded from: classes3.dex */
public final class QRCode {
    private Mode a;
    private ErrorCorrectionLevel b;
    private Version c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4436d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f4437e;

    public static boolean isValidMaskPattern(int i) {
        return i >= 0 && i < 8;
    }

    public b a() {
        return this.f4437e;
    }

    public void b(ErrorCorrectionLevel errorCorrectionLevel) {
        this.b = errorCorrectionLevel;
    }

    public void c(int i) {
        this.f4436d = i;
    }

    public void d(b bVar) {
        this.f4437e = bVar;
    }

    public void e(Mode mode) {
        this.a = mode;
    }

    public void f(Version version) {
        this.c = version;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.a);
        sb.append("\n ecLevel: ");
        sb.append(this.b);
        sb.append("\n version: ");
        sb.append(this.c);
        sb.append("\n maskPattern: ");
        sb.append(this.f4436d);
        if (this.f4437e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f4437e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
