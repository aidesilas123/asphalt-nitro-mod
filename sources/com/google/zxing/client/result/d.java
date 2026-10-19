package com.google.zxing.client.result;

/* JADX INFO: compiled from: AddressBookParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d extends ParsedResult {
    private final String[] b;
    private final String[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f4290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String[] f4291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f4292g;
    private final String[] h;
    private final String i;
    private final String j;
    private final String[] k;
    private final String[] l;
    private final String m;
    private final String n;
    private final String o;
    private final String[] p;
    private final String[] q;

    public d(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(ParsedResultType.ADDRESSBOOK);
        if (strArr3 != null && strArr4 != null && strArr3.length != strArr4.length) {
            throw new IllegalArgumentException("Phone numbers and types lengths differ");
        }
        if (strArr5 != null && strArr6 != null && strArr5.length != strArr6.length) {
            throw new IllegalArgumentException("Emails and types lengths differ");
        }
        if (strArr7 != null && strArr8 != null && strArr7.length != strArr8.length) {
            throw new IllegalArgumentException("Addresses and types lengths differ");
        }
        this.b = strArr;
        this.c = strArr2;
        this.f4289d = str;
        this.f4290e = strArr3;
        this.f4291f = strArr4;
        this.f4292g = strArr5;
        this.h = strArr6;
        this.i = str2;
        this.j = str3;
        this.k = strArr7;
        this.l = strArr8;
        this.m = str4;
        this.n = str5;
        this.o = str6;
        this.p = strArr9;
        this.q = strArr10;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.f4289d, sb);
        ParsedResult.maybeAppend(this.o, sb);
        ParsedResult.maybeAppend(this.m, sb);
        ParsedResult.maybeAppend(this.k, sb);
        ParsedResult.maybeAppend(this.f4290e, sb);
        ParsedResult.maybeAppend(this.f4292g, sb);
        ParsedResult.maybeAppend(this.i, sb);
        ParsedResult.maybeAppend(this.p, sb);
        ParsedResult.maybeAppend(this.n, sb);
        ParsedResult.maybeAppend(this.q, sb);
        ParsedResult.maybeAppend(this.j, sb);
        return sb.toString();
    }
}
