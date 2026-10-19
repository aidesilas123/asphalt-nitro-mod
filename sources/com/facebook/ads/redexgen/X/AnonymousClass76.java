package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.76, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass76 extends C1272Po {
    public int A00;
    public boolean A01;
    public final AbstractC08448a<AnonymousClass75> A02;
    public final AbstractC08448a<AnonymousClass72> A03;
    public final AbstractC08448a<MJ> A04;
    public final AbstractC08448a<AnonymousClass71> A05;
    public final AbstractC08448a<M8> A06;
    public final AbstractC08448a<LT> A07;
    public final AbstractC08448a<LO> A08;
    public final AbstractC08448a<KJ> A09;
    public final AbstractC08448a<KG> A0A;
    public final RX A0B;
    public final MA A0C;
    public final KK A0D;

    public AnonymousClass76(YA ya, InterfaceC1086If interfaceC1086If, RX rx, String str) {
        this(ya, interfaceC1086If, rx, new ArrayList(), str);
    }

    public AnonymousClass76(YA ya, InterfaceC1086If interfaceC1086If, RX rx, String str, Bundle bundle) {
        this(ya, interfaceC1086If, rx, new ArrayList(), str, bundle, null);
    }

    public AnonymousClass76(YA ya, InterfaceC1086If interfaceC1086If, RX rx, String str, Map<String, String> map) {
        this(ya, interfaceC1086If, rx, new ArrayList(), str, null, map);
    }

    public AnonymousClass76(YA ya, InterfaceC1086If interfaceC1086If, RX rx, List<C2D> list, String str) {
        super(ya, interfaceC1086If, rx, list, str, !rx.A0h(), new C1271Pn(ya, rx));
        KK kk = new KK() { // from class: com.facebook.ads.redexgen.X.79
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C1141Kl c1141Kl) {
                this.A00.A0Z();
            }
        };
        this.A0D = kk;
        RU ru = new RU(this);
        this.A07 = ru;
        RQ rq = new RQ(this);
        this.A03 = rq;
        C1288Qe c1288Qe = new C1288Qe(this);
        this.A04 = c1288Qe;
        Q0 q0 = new Q0(this);
        this.A05 = q0;
        C1283Pz c1283Pz = new C1283Pz(this);
        this.A02 = c1283Pz;
        C1281Px c1281Px = new C1281Px(this);
        this.A06 = c1281Px;
        C1276Ps c1276Ps = new C1276Ps(this);
        this.A09 = c1276Ps;
        C1275Pr c1275Pr = new C1275Pr(this);
        this.A0A = c1275Pr;
        RW rw = new RW(this);
        this.A08 = rw;
        MA ma = new MA() { // from class: com.facebook.ads.redexgen.X.7A
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MD md) {
                AnonymousClass76 anonymousClass76 = this.A00;
                anonymousClass76.A00 = anonymousClass76.A0B.getDuration();
            }
        };
        this.A0C = ma;
        this.A01 = false;
        this.A0B = rx;
        rx.getEventBus().A03(kk, q0, ru, c1288Qe, rq, c1283Pz, c1281Px, c1276Ps, c1275Pr, ma, rw);
    }

    public AnonymousClass76(YA ya, InterfaceC1086If interfaceC1086If, RX rx, List<C2D> list, String str, Bundle bundle, Map<String, String> map) {
        super(ya, interfaceC1086If, rx, list, str, !rx.A0h(), bundle, map, new C1271Pn(ya, rx));
        KK kk = new KK() { // from class: com.facebook.ads.redexgen.X.79
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C1141Kl c1141Kl) {
                this.A00.A0Z();
            }
        };
        this.A0D = kk;
        RU ru = new RU(this);
        this.A07 = ru;
        RQ rq = new RQ(this);
        this.A03 = rq;
        C1288Qe c1288Qe = new C1288Qe(this);
        this.A04 = c1288Qe;
        Q0 q0 = new Q0(this);
        this.A05 = q0;
        C1283Pz c1283Pz = new C1283Pz(this);
        this.A02 = c1283Pz;
        C1281Px c1281Px = new C1281Px(this);
        this.A06 = c1281Px;
        C1276Ps c1276Ps = new C1276Ps(this);
        this.A09 = c1276Ps;
        C1275Pr c1275Pr = new C1275Pr(this);
        this.A0A = c1275Pr;
        RW rw = new RW(this);
        this.A08 = rw;
        this.A0C = new MA() { // from class: com.facebook.ads.redexgen.X.7A
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MD md) {
                AnonymousClass76 anonymousClass76 = this.A00;
                anonymousClass76.A00 = anonymousClass76.A0B.getDuration();
            }
        };
        this.A01 = false;
        this.A0B = rx;
        rx.getEventBus().A03(kk, q0, ru, c1288Qe, rq, c1283Pz, c1281Px, c1276Ps, c1275Pr, rw);
    }

    public final void A0g() {
        RV rv = new RV(this);
        if (this.A0B.A0l()) {
            LP.A00(rv);
        } else {
            this.A0B.getStateHandler().post(rv);
        }
    }
}
