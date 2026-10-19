package com.json;

import com.json.rb;

/* JADX INFO: loaded from: classes2.dex */
public class qb implements rb.a {
    private String a;
    private int b;

    public qb(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // com.ironsource.rb.a
    public int b() {
        return this.b;
    }

    @Override // com.ironsource.rb.a
    public String c() {
        return this.a;
    }
}
