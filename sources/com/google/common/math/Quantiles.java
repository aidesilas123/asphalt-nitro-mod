package com.google.common.math;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class Quantiles {

    public static final class b {
        private final int a;

        private b(int i) {
            Preconditions.checkArgument(i > 0, "Quantile scale must be positive");
            this.a = i;
        }

        public c a(int i) {
            return new c(this.a, i);
        }
    }

    public static final class c {
        private final int a;
        private final int b;

        private c(int i, int i2) {
            Quantiles.b(i2, i);
            this.a = i;
            this.b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i, int i2) {
        if (i < 0 || i > i2) {
            StringBuilder sb = new StringBuilder(70);
            sb.append("Quantile indexes must be between 0 and the scale, which is ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public static c median() {
        return scale(2).a(1);
    }

    public static b percentiles() {
        return scale(100);
    }

    public static b quartiles() {
        return scale(4);
    }

    public static b scale(int i) {
        return new b(i);
    }
}
