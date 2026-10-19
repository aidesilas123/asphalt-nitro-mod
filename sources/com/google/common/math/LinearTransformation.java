package com.google.common.math;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LinearTransformation {

    public static final class b {
        private final double a;
        private final double b;

        private b(double d2, double d3) {
            this.a = d2;
            this.b = d3;
        }
    }

    private static final class c extends LinearTransformation {
        static final c a = new c();

        private c() {
        }

        public String toString() {
            return "NaN";
        }
    }

    private static final class d extends LinearTransformation {
        final double a;
        final double b;
        LinearTransformation c = null;

        d(double d2, double d3) {
            this.a = d2;
            this.b = d3;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.a), Double.valueOf(this.b));
        }
    }

    private static final class e extends LinearTransformation {
        final double a;
        LinearTransformation b = null;

        e(double d2) {
            this.a = d2;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.a));
        }
    }

    public static LinearTransformation forNaN() {
        return c.a;
    }

    public static LinearTransformation horizontal(double d2) {
        Preconditions.checkArgument(com.google.common.math.a.d(d2));
        return new d(0.0d, d2);
    }

    public static b mapping(double d2, double d3) {
        Preconditions.checkArgument(com.google.common.math.a.d(d2) && com.google.common.math.a.d(d3));
        return new b(d2, d3);
    }

    public static LinearTransformation vertical(double d2) {
        Preconditions.checkArgument(com.google.common.math.a.d(d2));
        return new e(d2);
    }
}
