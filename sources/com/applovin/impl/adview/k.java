package com.applovin.impl.adview;

import android.os.Handler;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    private final Set<b> ahH = new HashSet();
    private final AtomicInteger ahI = new AtomicInteger();
    private final Handler jS;
    private final com.applovin.impl.sdk.x logger;

    public interface a {
        void rB();

        boolean rC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b {
        private final String ahJ;
        private final a ahK;
        private final long ahL;

        private b(String str, long j, a aVar) {
            this.ahJ = str;
            this.ahL = j;
            this.ahK = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getIdentifier() {
            return this.ahJ;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long rD() {
            return this.ahL;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a rE() {
            return this.ahK;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            String str = this.ahJ;
            String str2 = ((b) obj).ahJ;
            return str != null ? str.equalsIgnoreCase(str2) : str2 == null;
        }

        public int hashCode() {
            String str = this.ahJ;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "CountdownProxy{identifier='" + this.ahJ + "', countdownStepMillis=" + this.ahL + '}';
        }
    }

    public k(Handler handler, com.applovin.impl.sdk.n nVar) {
        if (handler == null) {
            throw new IllegalArgumentException("No handler specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.jS = handler;
        this.logger = nVar.BN();
    }

    private void a(final b bVar, final int i) {
        this.jS.postDelayed(new Runnable() { // from class: com.applovin.impl.adview.q0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(bVar, i);
            }
        }, bVar.rD());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(b bVar, int i) {
        a aVarRE = bVar.rE();
        if (!aVarRE.rC()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("CountdownManager", "Ending countdown for " + bVar.getIdentifier());
                return;
            }
            return;
        }
        if (this.ahI.get() != i) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("CountdownManager", "Killing duplicate countdown from previous generation: " + bVar.getIdentifier());
                return;
            }
            return;
        }
        try {
            aVarRE.rB();
            a(bVar, i);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c("CountdownManager", "Encountered error on countdown step for: " + bVar.getIdentifier(), th);
            }
            rA();
        }
    }

    public void W() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("CountdownManager", "Stopping countdowns...");
        }
        this.ahI.incrementAndGet();
        this.jS.removeCallbacksAndMessages(null);
    }

    public void a(String str, long j, a aVar) {
        if (j <= 0) {
            throw new IllegalArgumentException("Invalid step specified.");
        }
        if (this.jS == null) {
            throw new IllegalArgumentException("No handler specified.");
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("CountdownManager", "Adding countdown: " + str);
        }
        this.ahH.add(new b(str, j, aVar));
    }

    public void rA() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("CountdownManager", "Removing all countdowns...");
        }
        W();
        this.ahH.clear();
    }

    public void start() {
        HashSet<b> hashSet = new HashSet(this.ahH);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("CountdownManager", "Starting " + hashSet.size() + " countdowns...");
        }
        int iIncrementAndGet = this.ahI.incrementAndGet();
        for (b bVar : hashSet) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("CountdownManager", "Starting countdown: " + bVar.getIdentifier() + " for generation " + iIncrementAndGet + "...");
            }
            a(bVar, iIncrementAndGet);
        }
    }
}
