package com.google.zxing.client.result;

/* JADX INFO: compiled from: AbstractDoCoMoResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class a extends ResultParser {
    a() {
    }

    static String[] n(String str, String str2) {
        return ResultParser.f(str, str2, ';', true);
    }

    static String o(String str, String str2, boolean z) {
        return ResultParser.g(str, str2, ';', z);
    }
}
