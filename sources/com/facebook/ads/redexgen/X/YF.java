package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class YF extends K8 {
    public final /* synthetic */ C6I A00;
    public final /* synthetic */ C6J A01;
    public final /* synthetic */ C6Q A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public YF(C6Q c6q, ArrayList arrayList, C6J c6j, C6I c6i, ArrayList arrayList2) {
        this.A02 = c6q;
        this.A03 = arrayList;
        this.A01 = c6j;
        this.A00 = c6i;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        AtomicBoolean atomicBooleanA0D = C6Q.A0D(this.A03);
        if (this.A02.A04 instanceof YA) {
            YA ya = (YA) this.A02.A04;
            if (this.A01.A00 == -1) {
                if (atomicBooleanA0D.get()) {
                    ya.A0E().A44(LM.A01(this.A02.A00));
                } else {
                    ya.A0E().A42(LM.A01(this.A02.A00));
                }
            } else if (atomicBooleanA0D.get()) {
                ya.A0E().A45(LM.A01(this.A02.A00), this.A01.A00);
            } else {
                ya.A0E().A43(LM.A01(this.A02.A00), this.A01.A00);
            }
        }
        this.A02.A02.post(new YG(this, atomicBooleanA0D));
        C6Q.A0D(this.A04);
    }
}
