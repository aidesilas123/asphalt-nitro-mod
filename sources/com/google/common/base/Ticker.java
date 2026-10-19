package com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Ticker {
    private static final Ticker a = new a();

    class a extends Ticker {
        a() {
        }

        @Override // com.google.common.base.Ticker
        public long a() {
            return j.i();
        }
    }

    protected Ticker() {
    }

    public static Ticker systemTicker() {
        return a;
    }

    public abstract long a();
}
