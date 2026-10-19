package com.google.zxing.client.result;

/* JADX INFO: compiled from: EmailAddressParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h extends ParsedResult {
    private final String[] b;
    private final String[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f4303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4305f;

    h(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    h(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(ParsedResultType.EMAIL_ADDRESS);
        this.b = strArr;
        this.c = strArr2;
        this.f4303d = strArr3;
        this.f4304e = str;
        this.f4305f = str2;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.f4303d, sb);
        ParsedResult.maybeAppend(this.f4304e, sb);
        ParsedResult.maybeAppend(this.f4305f, sb);
        return sb.toString();
    }
}
