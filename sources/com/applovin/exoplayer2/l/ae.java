package com.applovin.exoplayer2.l;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.o;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ae implements o {

    @GuardedBy("messagePool")
    private static final List<a> acO = new ArrayList(50);
    private final Handler jS;

    private static final class a implements o.a {

        @Nullable
        private Message acP;

        @Nullable
        private ae acQ;

        private a() {
        }

        private void recycle() {
            this.acP = null;
            this.acQ = null;
            ae.a(this);
        }

        public a a(Message message, ae aeVar) {
            this.acP = message;
            this.acQ = aeVar;
            return this;
        }

        public boolean a(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.applovin.exoplayer2.l.a.checkNotNull(this.acP));
            recycle();
            return zSendMessageAtFrontOfQueue;
        }

        @Override // com.applovin.exoplayer2.l.o.a
        public void oY() {
            ((Message) com.applovin.exoplayer2.l.a.checkNotNull(this.acP)).sendToTarget();
            recycle();
        }
    }

    public ae(Handler handler) {
        this.jS = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(a aVar) {
        List<a> list = acO;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(aVar);
            }
        }
    }

    private static a pP() {
        a aVar;
        List<a> list = acO;
        synchronized (list) {
            aVar = list.isEmpty() ? new a() : list.remove(list.size() - 1);
        }
        return aVar;
    }

    @Override // com.applovin.exoplayer2.l.o
    public void Q(@Nullable Object obj) {
        this.jS.removeCallbacksAndMessages(obj);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a a(int i, int i2, int i3, @Nullable Object obj) {
        return pP().a(this.jS.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean a(o.a aVar) {
        return ((a) aVar).a(this.jS);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a c(int i, @Nullable Object obj) {
        return pP().a(this.jS.obtainMessage(i, obj), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean e(Runnable runnable) {
        return this.jS.post(runnable);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean fq(int i) {
        return this.jS.hasMessages(i);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a fr(int i) {
        return pP().a(this.jS.obtainMessage(i), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean fs(int i) {
        return this.jS.sendEmptyMessage(i);
    }

    @Override // com.applovin.exoplayer2.l.o
    public void ft(int i) {
        this.jS.removeMessages(i);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a j(int i, int i2, int i3) {
        return pP().a(this.jS.obtainMessage(i, i2, i3), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean k(int i, long j) {
        return this.jS.sendEmptyMessageAtTime(i, j);
    }
}
