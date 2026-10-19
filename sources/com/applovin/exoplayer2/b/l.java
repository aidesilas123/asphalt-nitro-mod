package com.applovin.exoplayer2.b;

import androidx.annotation.CallSuper;
import com.applovin.exoplayer2.b.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class l implements f {
    protected f.a kO;
    protected f.a kP;
    private f.a kQ;
    private f.a kR;
    private ByteBuffer kS;
    private ByteBuffer kT;
    private boolean kU;

    public l() {
        ByteBuffer byteBuffer = f.jO;
        this.kS = byteBuffer;
        this.kT = byteBuffer;
        f.a aVar = f.a.jP;
        this.kQ = aVar;
        this.kR = aVar;
        this.kO = aVar;
        this.kP = aVar;
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void Y() {
        dI();
        this.kS = f.jO;
        f.a aVar = f.a.jP;
        this.kQ = aVar;
        this.kR = aVar;
        this.kO = aVar;
        this.kP = aVar;
        ad();
    }

    @Override // com.applovin.exoplayer2.b.f
    public final f.a a(f.a aVar) throws f.b {
        this.kQ = aVar;
        this.kR = b(aVar);
        return isActive() ? this.kR : f.a.jP;
    }

    protected void ad() {
    }

    protected final ByteBuffer az(int i) {
        if (this.kS.capacity() < i) {
            this.kS = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.kS.clear();
        }
        ByteBuffer byteBuffer = this.kS;
        this.kT = byteBuffer;
        return byteBuffer;
    }

    protected f.a b(f.a aVar) throws f.b {
        return f.a.jP;
    }

    @Override // com.applovin.exoplayer2.b.f
    @CallSuper
    public boolean cR() {
        return this.kU && this.kT == f.jO;
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void dG() {
        this.kU = true;
        ef();
    }

    @Override // com.applovin.exoplayer2.b.f
    @CallSuper
    public ByteBuffer dH() {
        ByteBuffer byteBuffer = this.kT;
        this.kT = f.jO;
        return byteBuffer;
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void dI() {
        this.kT = f.jO;
        this.kU = false;
        this.kO = this.kQ;
        this.kP = this.kR;
        eg();
    }

    protected final boolean ee() {
        return this.kT.hasRemaining();
    }

    protected void ef() {
    }

    protected void eg() {
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean isActive() {
        return this.kR != f.a.jP;
    }
}
