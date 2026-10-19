package com.google.zxing.client.result;

/* JADX INFO: compiled from: TelParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class w extends ParsedResult {
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4313d;

    public w(String str, String str2, String str3) {
        super(ParsedResultType.TEL);
        this.b = str;
        this.c = str2;
        this.f4313d = str3;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(20);
        ParsedResult.maybeAppend(this.b, sb);
        ParsedResult.maybeAppend(this.f4313d, sb);
        return sb.toString();
    }
}
