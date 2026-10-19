package com.google.common.primitives;

/* JADX INFO: compiled from: ParseRequest.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {
    final String a;
    final int b;

    private d(String str, int i) {
        this.a = str;
        this.b = i;
    }

    static d a(String str) {
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char cCharAt = str.charAt(0);
        int i = 16;
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (cCharAt == '#') {
            str = str.substring(1);
        } else if (cCharAt != '0' || str.length() <= 1) {
            i = 10;
        } else {
            str = str.substring(1);
            i = 8;
        }
        return new d(str, i);
    }
}
