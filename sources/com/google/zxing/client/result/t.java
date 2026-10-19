package com.google.zxing.client.result;

/* JADX INFO: compiled from: SMSParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class t extends ParsedResult {
    private final String[] b;
    private final String[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4312e;

    public t(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.b = new String[]{str};
        this.c = new String[]{str2};
        this.f4311d = str3;
        this.f4312e = str4;
    }

    public t(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.b = strArr;
        this.c = strArr2;
        this.f4311d = str;
        this.f4312e = str2;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.b, sb);
        ParsedResult.maybeAppend(this.f4311d, sb);
        ParsedResult.maybeAppend(this.f4312e, sb);
        return sb.toString();
    }
}
