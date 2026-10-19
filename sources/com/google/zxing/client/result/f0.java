package com.google.zxing.client.result;

/* JADX INFO: compiled from: WifiParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f0 extends ParsedResult {
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4297f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4298g;
    private final String h;
    private final String i;

    public f0(String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7) {
        super(ParsedResultType.WIFI);
        this.b = str2;
        this.c = str;
        this.f4295d = str3;
        this.f4296e = z;
        this.f4297f = str4;
        this.f4298g = str5;
        this.h = str6;
        this.i = str7;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(80);
        ParsedResult.maybeAppend(this.b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.f4295d, sb);
        ParsedResult.maybeAppend(Boolean.toString(this.f4296e), sb);
        return sb.toString();
    }
}
