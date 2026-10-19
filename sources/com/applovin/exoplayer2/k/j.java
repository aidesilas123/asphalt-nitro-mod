package com.applovin.exoplayer2.k;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class j extends IOException {
    public final int tA;

    public j(int i) {
        this.tA = i;
    }

    public j(@Nullable String str, int i) {
        super(str);
        this.tA = i;
    }

    public j(@Nullable String str, @Nullable Throwable th, int i) {
        super(str, th);
        this.tA = i;
    }

    public j(@Nullable Throwable th, int i) {
        super(th);
        this.tA = i;
    }

    public static boolean a(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof j) && ((j) cause).tA == 2008) {
                return true;
            }
        }
        return false;
    }
}
