package com.json;

import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.bidding.BiddingDataCallback;
import com.json.mediationsdk.model.NetworkSettings;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class x1 implements Callable<b2> {
    private final int a;
    private final String b;
    private final AdData c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z1 f6721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y1 f6722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final NetworkSettings f6723f;

    class a implements BiddingDataCallback {
        final /* synthetic */ t3 a;
        final /* synthetic */ BlockingQueue b;

        a(t3 t3Var, BlockingQueue blockingQueue) {
            this.a = t3Var;
            this.b = blockingQueue;
        }

        @Override // com.json.mediationsdk.bidding.BiddingDataCallback
        public void onFailure(String str) {
            this.b.add(new b2(x1.this.d(), x1.this.c(), null, t3.a(this.a), str));
        }

        @Override // com.json.mediationsdk.bidding.BiddingDataCallback
        public void onSuccess(Map<String, Object> map) {
            this.b.add(new b2(x1.this.d(), x1.this.c(), map, t3.a(this.a), null));
        }
    }

    public x1(int i, String str, AdData adData, z1 z1Var, y1 y1Var, NetworkSettings networkSettings) {
        this.a = i;
        this.b = str;
        this.c = adData;
        this.f6721d = z1Var;
        this.f6722e = y1Var;
        this.f6723f = networkSettings;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0073 A[PHI: r0 r2
      0x0073: PHI (r0v4 java.lang.String) = (r0v3 java.lang.String), (r0v7 java.lang.String) binds: [B:7:0x0051, B:11:0x0071] A[DONT_GENERATE, DONT_INLINE]
      0x0073: PHI (r2v7 com.ironsource.y1) = (r2v6 com.ironsource.y1), (r2v10 com.ironsource.y1) binds: [B:7:0x0051, B:11:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.json.b2 call() throws java.lang.Exception {
        /*
            r4 = this;
            com.ironsource.t3 r0 = new com.ironsource.t3
            r0.<init>()
            com.ironsource.mediationsdk.logger.IronLog r1 = com.json.mediationsdk.logger.IronLog.INTERNAL
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = r4.c()
            r2.append(r3)
            java.lang.String r3 = " fetching bidding data"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.verbose(r2)
            java.util.concurrent.ArrayBlockingQueue r1 = new java.util.concurrent.ArrayBlockingQueue
            r2 = 1
            r1.<init>(r2)
            com.ironsource.x1$a r2 = new com.ironsource.x1$a
            r2.<init>(r0, r1)
            com.ironsource.z1 r0 = r4.b()     // Catch: java.lang.NoClassDefFoundError -> L34 java.lang.Exception -> L54
            com.ironsource.mediationsdk.adunit.adapter.utility.AdData r3 = r4.c     // Catch: java.lang.NoClassDefFoundError -> L34 java.lang.Exception -> L54
            r0.a(r3, r2)     // Catch: java.lang.NoClassDefFoundError -> L34 java.lang.Exception -> L54
            goto L76
        L34:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while calling collectBiddingData - "
            r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            com.ironsource.mediationsdk.logger.IronLog r2 = com.json.mediationsdk.logger.IronLog.INTERNAL
            r2.error(r0)
            com.ironsource.y1 r2 = r4.f6722e
            if (r2 == 0) goto L76
            goto L73
        L54:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Exception while calling collectBiddingData - "
            r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            com.ironsource.mediationsdk.logger.IronLog r2 = com.json.mediationsdk.logger.IronLog.INTERNAL
            r2.error(r0)
            com.ironsource.y1 r2 = r4.f6722e
            if (r2 == 0) goto L76
        L73:
            r2.a(r0)
        L76:
            com.ironsource.y1 r0 = r4.f6722e
            if (r0 == 0) goto L7f
            com.ironsource.mediationsdk.model.NetworkSettings r2 = r4.f6723f
            r0.a(r2)
        L7f:
            java.lang.Object r0 = r1.take()
            com.ironsource.b2 r0 = (com.json.b2) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.x1.call():com.ironsource.b2");
    }

    public z1 b() {
        return this.f6721d;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.a;
    }
}
