package com.google.zxing.client.result;

/* JADX INFO: compiled from: GeoParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class m extends ParsedResult {
    private final double b;
    private final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f4308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4309e;

    m(double d2, double d3, double d4, String str) {
        super(ParsedResultType.GEO);
        this.b = d2;
        this.c = d3;
        this.f4308d = d4;
        this.f4309e = str;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        if (this.f4308d > 0.0d) {
            sb.append(", ");
            sb.append(this.f4308d);
            sb.append('m');
        }
        if (this.f4309e != null) {
            sb.append(" (");
            sb.append(this.f4309e);
            sb.append(')');
        }
        return sb.toString();
    }
}
