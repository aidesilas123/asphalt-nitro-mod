package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
class z {
    private final Queue<AppLovinAdImpl> aFu = new LinkedList();
    private final Object aFv = new Object();

    z() {
    }

    int Fq() {
        int size;
        synchronized (this.aFv) {
            size = this.aFu.size();
        }
        return size;
    }

    @Nullable
    AppLovinAdImpl Fr() {
        AppLovinAdImpl appLovinAdImplPoll;
        synchronized (this.aFv) {
            appLovinAdImplPoll = !isEmpty() ? this.aFu.poll() : null;
        }
        return appLovinAdImplPoll;
    }

    @Nullable
    AppLovinAdImpl Fs() {
        AppLovinAdImpl appLovinAdImplPeek;
        synchronized (this.aFv) {
            appLovinAdImplPeek = this.aFu.peek();
        }
        return appLovinAdImplPeek;
    }

    void c(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.aFv) {
            if (Fq() <= 25) {
                this.aFu.offer(appLovinAdImpl);
            } else {
                x.H("AppLovinSdk", "Maximum queue capacity reached - discarding ad...");
            }
        }
    }

    void d(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.aFv) {
            this.aFu.remove(appLovinAdImpl);
        }
    }

    boolean isEmpty() {
        boolean z;
        synchronized (this.aFv) {
            z = Fq() == 0;
        }
        return z;
    }
}
