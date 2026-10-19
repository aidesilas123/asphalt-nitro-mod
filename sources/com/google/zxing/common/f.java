package com.google.zxing.common;

import com.google.zxing.FormatException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: ECIStringBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f {
    private StringBuilder a;
    private StringBuilder b;
    private Charset c;

    public f() {
        this.c = StandardCharsets.ISO_8859_1;
        this.a = new StringBuilder();
    }

    public f(int i) {
        this.c = StandardCharsets.ISO_8859_1;
        this.a = new StringBuilder(i);
    }

    private void e() {
        if (this.c.equals(StandardCharsets.ISO_8859_1)) {
            if (this.a.length() > 0) {
                StringBuilder sb = this.b;
                if (sb == null) {
                    this.b = this.a;
                    this.a = new StringBuilder();
                    return;
                } else {
                    sb.append((CharSequence) this.a);
                    this.a = new StringBuilder();
                    return;
                }
            }
            return;
        }
        if (this.a.length() > 0) {
            byte[] bytes = this.a.toString().getBytes(StandardCharsets.ISO_8859_1);
            this.a = new StringBuilder();
            StringBuilder sb2 = this.b;
            if (sb2 == null) {
                this.b = new StringBuilder(new String(bytes, this.c));
            } else {
                sb2.append(new String(bytes, this.c));
            }
        }
    }

    public void a(byte b) {
        this.a.append((char) (b & 255));
    }

    public void b(char c) {
        this.a.append((char) (c & 255));
    }

    public void c(String str) {
        this.a.append(str);
    }

    public void d(int i) throws FormatException {
        e();
        CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i);
        if (characterSetECIByValue == null) {
            throw FormatException.getFormatInstance();
        }
        this.c = characterSetECIByValue.e();
    }

    public boolean f() {
        StringBuilder sb;
        return this.a.length() == 0 && ((sb = this.b) == null || sb.length() == 0);
    }

    public String toString() {
        e();
        StringBuilder sb = this.b;
        return sb == null ? "" : sb.toString();
    }
}
