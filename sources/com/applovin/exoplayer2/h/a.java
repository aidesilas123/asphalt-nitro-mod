package com.applovin.exoplayer2.h;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements p {

    @Nullable
    private ba ci;

    @Nullable
    private Looper gU;
    private final ArrayList<p.b> KM = new ArrayList<>(1);
    private final HashSet<p.b> KN = new HashSet<>(1);
    private final q.a KO = new q.a();
    private final g.a fY = new g.a();

    protected final q.a a(int i, @Nullable p.a aVar, long j) {
        return this.KO.b(i, aVar, j);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(Handler handler, q qVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(handler);
        com.applovin.exoplayer2.l.a.checkNotNull(qVar);
        this.KO.a(handler, qVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(p.b bVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(this.gU);
        boolean zIsEmpty = this.KN.isEmpty();
        this.KN.add(bVar);
        if (zIsEmpty) {
            kH();
        }
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(p.b bVar, @Nullable com.applovin.exoplayer2.k.aa aaVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.gU;
        com.applovin.exoplayer2.l.a.checkArgument(looper == null || looper == looperMyLooper);
        ba baVar = this.ci;
        this.KM.add(bVar);
        if (this.gU == null) {
            this.gU = looperMyLooper;
            this.KN.add(bVar);
            b(aaVar);
        } else if (baVar != null) {
            a(bVar);
            bVar.onSourceInfoRefreshed(this, baVar);
        }
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(q qVar) {
        this.KO.a(qVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void b(Handler handler, com.applovin.exoplayer2.d.g gVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(handler);
        com.applovin.exoplayer2.l.a.checkNotNull(gVar);
        this.fY.a(handler, gVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void b(p.b bVar) {
        boolean z = !this.KN.isEmpty();
        this.KN.remove(bVar);
        if (z && this.KN.isEmpty()) {
            kI();
        }
    }

    protected abstract void b(@Nullable com.applovin.exoplayer2.k.aa aaVar);

    @Override // com.applovin.exoplayer2.h.p
    public final void c(p.b bVar) {
        this.KM.remove(bVar);
        if (!this.KM.isEmpty()) {
            b(bVar);
            return;
        }
        this.gU = null;
        this.ci = null;
        this.KN.clear();
        kJ();
    }

    protected final q.a e(@Nullable p.a aVar) {
        return this.KO.b(0, aVar, 0L);
    }

    protected final void e(ba baVar) {
        this.ci = baVar;
        Iterator<p.b> it = this.KM.iterator();
        while (it.hasNext()) {
            it.next().onSourceInfoRefreshed(this, baVar);
        }
    }

    protected final g.a f(@Nullable p.a aVar) {
        return this.fY.h(0, aVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void f(com.applovin.exoplayer2.d.g gVar) {
        this.fY.a(gVar);
    }

    protected final g.a i(int i, @Nullable p.a aVar) {
        return this.fY.h(i, aVar);
    }

    protected final boolean isEnabled() {
        return !this.KN.isEmpty();
    }

    protected void kH() {
    }

    protected void kI() {
    }

    protected abstract void kJ();

    @Override // com.applovin.exoplayer2.h.p
    public /* synthetic */ ba lb() {
        return o0.a(this);
    }

    @Override // com.applovin.exoplayer2.h.p
    public /* synthetic */ boolean lc() {
        return o0.b(this);
    }
}
